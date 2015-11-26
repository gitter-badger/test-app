// Generated by CoffeeScript 1.9.3
(function() {
  var app, express, port;

  express = require('express');

  app = express();

  port = process.env.PORT || 8080;

  app.set('view engine', 'ejs');

  app.use(express["static"](__dirname + '/public'));

  app.get('/', function(req, res) {
    return res.render('index');
  });

  app.listen(port, function() {
    console.log('Our app is running on http://localhost:' + port);
  });

}).call(this);
