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

// multer setup
const multer = require('multer');
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, '/var/www/html/static/uploads')
  },
  filename: (req, file, cb) => {
    cb(null, `${req.userID}-${Date.now()}-${file.originalname}`);
  }
});
const upload = multer({
  storage: storage
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


app.delete('/api/users/:id', (req, res) => {
  let id = parseInt(req.params.id);
  knex('users').where('id',id).first().del().then(user => {
    res.sendStatus(200);    
  }).catch(error => {
    console.log(error);
    res.status(500).json({ error });
  });
});


// User Tweets //

app.get('/api/spotlight', (req, res) => {
  let id = parseInt(req.params.id);
  knex('spotlight')
    .orderBy('created', 'desc')
    .select('id', 'first_name', 'last_name', 'created', 'major', 'minor', 'short_text', 'long_text', 'image_path', 'plans').then(spotlight => {
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

app.post('/api/users/:id/tweets', verifyToken, upload.single('image'), (req, res) => {
  let id = parseInt(req.params.id);
  if (id !== req.userID) {
    res.status(403).send();
    return;
  }
  // check for an image
  let path = ''
  if (req.file)
    path = "/static/uploads/" + req.file.filename;
  knex('users').where('id', id).first().then(user => {
    return knex('tweets').insert({
      user_id: id,
      tweet: req.body.tweet,
      created: new Date(),
      image: path
    });
  }).then(ids => {
    return knex('tweets').where('id', ids[0]).first();
  }).then(tweet => {
    res.status(200).json({
      tweet: tweet
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

// All Tweets //

app.get('/api/tweets/search', (req, res) => {
  if (!req.query.keywords)
    return res.status(400).send();
  let offset = 0;
  if (req.query.offset)
    offset = parseInt(req.query.offset);
  let limit = 50;
  if (req.query.limit)
    limit = parseInt(req.query.limit);
  knex('users').join('tweets', 'users.id', 'tweets.user_id')
    .whereRaw("MATCH (tweet) AGAINST('" + req.query.keywords + "')")
    .orderBy('created', 'desc')
    .limit(limit)
    .offset(offset)
    .select('tweet', 'username', 'name', 'created', 'image', 'users.id as userID').then(tweets => {
      res.status(200).json({
        tweets: tweets
      });
    }).catch(error => {
      console.log(error);
      res.status(500).json({
        error
      });
    });
});

app.get('/api/tweets/hash/:hashtag', (req, res) => {
  let offset = 0;
  if (req.query.offset)
    offset = parseInt(req.query.offset);
  let limit = 50;
  if (req.query.limit)
    limit = parseInt(req.query.limit);
  knex('users').join('tweets', 'users.id', 'tweets.user_id')
    .whereRaw("tweet REGEXP '^#" + req.params.hashtag + "' OR tweet REGEXP ' #" + req.params.hashtag + "'")
    .orderBy('created', 'desc')
    .limit(limit)
    .offset(offset)
    .select('tweet', 'username', 'name', 'created', 'image', 'users.id as userID').then(tweets => {
      res.status(200).json({
        tweets: tweets
      });
    }).catch(error => {
      console.log(error);
      res.status(500).json({
        error
      });
    });
});

app.listen(3000, () => console.log('Server listening on port 3000!'));