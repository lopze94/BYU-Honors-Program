const express = require('express');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: false
}));

var directory = 'dist';
console.log(directory);


app.use(express.static(directory));

app.listen(8080, () => console.log('Server listening on port 8080!'))