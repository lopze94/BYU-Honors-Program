// Express Setup //
const express = require('express');
const bodyParser = require("body-parser");

const app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: false
}));

app.use(express.static('public'));

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
  if (!token)
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
const spotlightStorage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, 'static/img/spotlight')
  },
  filename: (req, file, cb) => {
    cb(null, `${req.userID}-${Date.now()}-${file.originalname}-spotlight`);
  }
});
const uploadSpotlight = multer({
  storage: spotlightStorage
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

app.post('/api/users', (req, res) => {
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
  knex('users').where('id', req.userID).first().select('username', 'name', 'id').then(user => {
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
  knex('users').where('id', id).first().select('username', 'name', 'id').then(user => {
    res.status(200).json({
      user: user
    });
  }).catch(error => {
    res.status(500).json({
      error
    });
  });
});

app.delete('/api/spotlight/:id/:image_path', (req, res) => {

  let id = parseInt(req.params.id);
  let image_path = req.params.image_path

  fs.unlink(__dirname + '/static/img/spotlight/'+image_path, (err) => {
    if (err) throw err;
    console.log('/img/spotlight/'+ image_path + ' was deleted');
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


// User Tweets //

app.get('/api/spotlight', (req, res) => {
  let id = parseInt(req.params.id);
  knex('spotlight')
    .orderBy('created', 'desc')
    .select('id', 'first_name', 'last_name', 'created', 'major', 'minor', 'short_text', 'long_text', 'image_path', 'graduation').then(spotlight => {
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
      graduation: req.body.graduation
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

/*
app.delete('/api/users/:id/tweets/:tweetId', (req, res) => {
  let id = parseInt(req.params.id);
  let tweetId = parseInt(req.params.tweetId);
  knex('users').where('id',id).first().then(user => {
    return knex('tweets').where({'user_id':id,id:tweetId}).first().del();
  }).then(tweets => {
    res.sendStatus(200);    
  }).catch(error => {
    console.log(error);
    res.status(500).json({ error });
  });
});
*/



app.listen(3000, () => console.log('Server listening on port 3000!'));
