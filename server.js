// Express Setup //
const express = require('express');
const bodyParser = require("body-parser");
const request = require("request");

//SENDGRID Setup
const sgMail = require('@sendgrid/mail');
sgMail.setApiKey(process.env.SENDGRID_API_KEY);

const app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: false
}));

app.use(express.static('dist'));

// Knex Setup //
const env = process.env.NODE_ENV || 'development';
const config = require('./knexfile')[env];
const knex = require('knex')(config);

// bcrypt setup
let bcrypt = require('bcrypt');
const saltRounds = 10;

// jwt setup
const jwt = require('jsonwebtoken');
let jwtSecret = process.env.jwtSecret;
if (jwtSecret === undefined) {
  console.log("You need to define a jwtSecret environment variable to continue.");
  knex.destroy();
  process.exit();
}

// Verify the token that a client gives us.
// This is setup as middleware, so it can be passed as an additional argument to Express after
// the URL in any route. This will restrict access to only those clients who possess a valid token.
const verifyToken = (req, res, next) => {
  const token = req.headers['authorization'];
  
  if (!token || token == undefined)
    return res.status(403).send({
      error: 'No token provided.'
    });
  jwt.verify(token, jwtSecret, function (err, decoded) {
    if (err)
      return res.status(500).send({
        error: 'Failed to authenticate token.'
      });
    // if everything good, save to request for use in other routes
    req.userID = decoded.id;
    next();
  });
}

const fs = require('fs');

// multer setup
const multer = require('multer');

//for the spotlight
const spotlightStorage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, 'static/img/spotlight')
  },
  filename: (req, file, cb) => {
    cb(null, `${req.userID}-${Date.now()}-spotlight-${file.originalname}`);
  }
});
const uploadSpotlight = multer({
  storage: spotlightStorage
});

// for the stories
const storiesStorage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, 'static/img/stories')
  },
  filename: (req, file, cb) => {
    cb(null, `${req.userID}-${Date.now()}-story-${file.originalname}`);
  }
});
const uploadStory = multer({
  storage: storiesStorage
});

// Login //

app.post('/api/login', (req, res) => {
  if (!req.body.email || !req.body.password)
    return res.status(400).send();
  knex('users').where('email', req.body.email).first().then(user => {
    if (user === undefined) {
      res.status(403).send("Invalid credentials");
      throw new Error('abort');
    }
    return [bcrypt.compare(req.body.password, user.hash), user];
  }).spread((result, user) => {
    if (result) {
      let token = jwt.sign({
        id: user.id
      }, jwtSecret, {
        expiresIn: '24h' // expires in 24 hours
      });
      res.status(200).json({
        user: {
          username: user.username,
          name: user.name,
          id: user.id
        },
        token: token
      });
    } else {
      res.status(403).send("Invalid credentials");
    }
    return;
  }).catch(error => {
    if (error.message !== 'abort') {
      console.log(error);
      res.status(500).json({
        error
      });
    }
  });
});

// Registration //

app.post('/api/users', verifyToken, (req, res) => {
  if (!req.body.email || !req.body.password || !req.body.username || !req.body.name)
    return res.status(400).send();
  knex('users').where('email', req.body.email).first().then(user => {
    if (user !== undefined) {
      res.status(403).send("Email address already exists");
      throw new Error('abort');
    }
    return knex('users').where('username', req.body.username).first();
  }).then(user => {
    if (user !== undefined) {
      res.status(409).send("User name already exists");
      throw new Error('abort');
    }
    return bcrypt.hash(req.body.password, saltRounds);
  }).then(hash => {
    return knex('users').insert({
      email: req.body.email,
      hash: hash,
      username: req.body.username,
      name: req.body.name,
      role: 'user'
    });
  }).then(ids => {
    return knex('users').where('id', ids[0]).first().select('username', 'name', 'id');
  }).then(user => {
    let token = jwt.sign({
      id: user.id
    }, jwtSecret, {
      expiresIn: '24h' // expires in 24 hours
    });
    res.status(200).json({
      user: user,
      token: token
    });
    return;
  }).catch(error => {
    if (error.message !== 'abort') {
      console.log(error);
      res.status(500).json({
        error
      });
    }
  });
});

// Users //

// Get my account
app.get('/api/me', verifyToken, (req, res) => {
  knex('users').where('id', req.userID).first().select('username', 'name', 'id', 'role').then(user => {
    res.status(200).json({
      user: user
    });
  }).catch(error => {
    res.status(500).json({
      error
    });
  });
});

app.get('/api/users/:id', (req, res) => {
  let id = parseInt(req.params.id);
  // get user record
  knex('users').where('id', id).first().select('username', 'name', 'id', 'role').then(user => {
    res.status(200).json({
      user: user
    });
  }).catch(error => {
    res.status(500).json({
      error
    });
  });
});


// SPOTLIGHT entry points

// GET - gets the spotlight info from the database.

app.get('/api/spotlight/:category', (req, res) => {
  let id = parseInt(req.params.id);
  let category = parseInt(req.params.category);
  if (category === 3) category = '%';
  knex('spotlight')
    .orderBy('created', 'desc')
    .select('*').where('category', 'like', category).then(spotlight => {
      res.status(200).json({
        spotlight: spotlight
      });
    }).catch(error => {
      console.log(error);
      res.status(500).json({
        error
      });
    });
});

// POST - Creates a new spotlight and adds it to the database. It provides a new ID, and a creation date. 

app.post('/api/spotlight', verifyToken, uploadSpotlight.single('image'), (req, res) => {
  // check for an image
  let path = '/img/spotlight/default.jpg'
  if (req.file)
    path = "/img/spotlight/" + req.file.filename;
  knex('spotlight').first().then(user => {
    return knex('spotlight').insert({
      first_name: req.body.first_name,
      last_name: req.body.last_name,
      created: new Date(),
      major: req.body.major,
      minor: req.body.minor,
      short_text: req.body.short_text,
      long_text: req.body.long_text,
      image_path: path,
      graduation: req.body.graduation,
      category: req.body.category
    });
  }).then(ids => {
    return knex('spotlight').where('id', ids[0]).first();
  }).then(spotlight => {
    res.status(200).json({
      spotlight: spotlight
    });
    return;
  }).catch(error => {
    console.log(error);
    res.status(500).json({
      error
    });
  });
});

// DELETE - Deletes the record from the databasem, locates the image file and deletes it. 

app.delete('/api/spotlight/:id/:image_path', verifyToken, (req, res) => {

  let id = parseInt(req.params.id);
  let image_path = req.params.image_path

  fs.unlink(__dirname + '/static/img/spotlight/' + image_path, (err) => {
    if (err) throw err;
    //console.log('/img/spotlight/' + image_path + ' was deleted');
  });

  knex('spotlight').where('id', id).first().del().then(user => {
    res.sendStatus(200);
  }).catch(error => {
    console.log(req.params.id);
    console.log(error);
    res.status(500).json({
      error
    });
  });
});

// STORIES entry points

// GET - gets the spotlight info from the database.

app.get('/api/stories', (req, res) => {
  //let id = parseInt(req.params.id);
  knex('stories')
    .orderBy('created', 'desc')
    .select('*').then(stories => {
      res.status(200).json({
        stories: stories
      });
    }).catch(error => {
      console.log(error);
      res.status(500).json({
        error
      });
    });
});

app.get('/api/featuredstories', (req, res) => {
  knex('stories')
    .where(knex.raw('created = (select max(created) from stories as f where f.category = stories.category)'))
    .orderBy('category', 'asc')
    .select('*')
    .then(stories => {
      res.status(200).json({
        stories: stories
      });
    }).catch(error => {
      console.log(error);
      res.status(500).json({
        error
      });
    });
});

app.get('/api/stories/:id', (req, res) => {
  let id = parseInt(req.params.id);
  knex('stories')

    .select('id', 'title', 'subtitle', 'description', 'created', 'text', 'link', 'image_path', 'link_text', 'author').where('id', id).then(stories => {
      res.status(200).json({
        stories: stories
      });
    }).catch(error => {
      console.log(error);
      res.status(500).json({
        error
      });
    });
});

// POST - Creates a new spotlight and adds it to the database. It provides a new ID, and a creation date. 

app.post('/api/stories', verifyToken, uploadStory.single('image'), (req, res) => {
  // check for an image
  let path = '/img/stories/default.jpg';
  let link = '';

  if (req.file)
    path = "/img/stories/" + req.file.filename;
  if (req.body.link)
    link = req.body.link;
  knex('stories').first().then(story => {
    return knex('stories').insert({
      title: req.body.title,
      subtitle: req.body.subtitle,
      created: new Date(),
      description: req.body.description,
      text: req.body.text,
      link: link,
      link_text: req.body.link_text,
      image_path: path,
      author: req.body.author,
      category: req.body.category
    });
  }).then(ids => {
    return knex('stories').where('id', ids[0]).first();
  }).then(story => {
    if (story.link == '') {
      //console.log("This link is empty. Generating Link...");
      link = "/stories/" + story.id + "/" + encodeURI(story.title);
      knex('stories').where('id', story.id).update('link', link).then();
      story.link = link;
      res.status(200).json({
        story: story
      });
      return;
    } else {
      res.status(200).json({
        story: story
      });
      return;
    }
  }).catch(error => {
    console.log(error);
    res.status(500).json({
      error
    });
  });
});

// DELETE - Deletes the record from the database, locates the image file and deletes it. 

app.delete('/api/stories/:id/:image_path', verifyToken, (req, res) => {

  let id = parseInt(req.params.id);
  let image_path = req.params.image_path

  fs.unlink(__dirname + '/static/img/stories/' + image_path, (err) => {
    if (err) throw err;
    console.log('/img/stories/' + image_path + ' was deleted');
  });

  knex('stories').where('id', id).first().del().then(user => {
    res.sendStatus(200);
  }).catch(error => {
    console.log(req.params.id);
    console.log(error);
    res.status(500).json({
      error
    });
  });
});

// Entry points for the DIRECTORY

app.get('/api/directory/', (req, res) => {
  knex('directory')
    .orderBy('last_name', 'asc')
    .select('*').then(directory => {
      res.status(200).json({
        directory: directory
      });
    }).catch(error => {
      console.log(error);
      res.status(500).json({
        error
      });
    });
});

app.post('/api/send/', (req, res) => {
  let confirmation = req.body.confirmation;
  let notification = req.body.notification;
  //sgMail.send(confirmation);
  sgMail.send(notification);
  sgMail.send(confirmation);

  res.sendStatus(200);
});

//Online Application

app.post('/api/captcha', (req, res) => {
  if (
    req.body.captcha === undefined ||
    req.body.captcha === '' ||
    req.body.captcha === null
  ) {
    return res.json({
      "success": false,
      "msg": "Please select reCaptcha"
    });
  }

  //Secret Key
  const secretKey = process.env.CAPTCHA_KEY;

  //Verify URL
  const verifyUrl = `https://google.com/recaptcha/api/siteverify?secret=${secretKey}&response=${req.body.captcha}&remoteip=${req.connection.remoteAddress}`;

  //Make request to verify URL
  request(verifyUrl, (err, response, body) => {
    body = JSON.parse(body);

    //If NOT Sucessful
    if (body.success !== undefined && !body.success) {
      return res.json({
        "success": false,
        "msg": "Failed captcha verification"
      });
    }

    return res.json({
      "success": true,
      "msg": "Captcha passed"
    });
  });
});

//TEMP Entry points for Coordinators
app.get('/api/coordinators', (req, res) =>{
  knex('coordinators')
    .orderBy('department', 'asc')
    .select('*').then(coordinators => {
      res.status(200).json({
        coordinators: coordinators
      });
    }).catch(error => {
      console.log(error);
      res.status(500).json({
        error
      });
    });
});


//Launch the server.
app.listen(3000, () => console.log('Server listening on port 3000!'));