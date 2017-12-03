'use strict';
var express = require('express');
var app = express();
var PORT = 3000;
var os = require('os')

app.get('/about', function (req, res) {
	let str = 'Its server :' + os.hostname() + '  Hello world'
	res.send(str);
	
});

app.use(express.static(__dirname + '/public'));

app.listen(PORT, function () {
	console.log('Express server started on port ' + PORT + '!');
});