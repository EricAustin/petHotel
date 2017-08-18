var express = require('express');
var bodyParser = require('body-parser');
var owner = require('.routes/owner)');
var pet = require('.routes/pet)');

var app = express();

var port = 5000;

app.use(express.static('public'));
app.use(bodyParser.urlencoded({extended: true}));

app.use('/owner', owner);
app.use('/pet', pet);

app.listen(port, function(){
    console.log('listening on port', port);
})