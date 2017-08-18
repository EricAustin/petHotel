var express = require('express');
var bodyParser = require('body-parser');
var owners = require('./routes/owners');
var pets = require('./routes/pets');

var app = express();

var port = 5000;

app.use(express.static('public'));
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

app.use('/owners', owners);
app.use('/pets', pets);

app.listen(port, function(){
    console.log('listening on port', port);
})