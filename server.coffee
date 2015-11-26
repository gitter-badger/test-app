express = require 'express'
app = express()

# set the port of our application
# process.env.PORT lets the port be set by Heroku
port = process.env.PORT or 8080

# set the view engine to ejs
app.set 'view engine', 'ejs'

# make express look in the public directory for assets (css/js/img)
app.use express.static(__dirname + '/public')

# set the home page route
app.get '/', (req, res) -> res.render 'index'
  
app.listen port, ->
  console.log 'Our app is running on http://localhost:' + port
  return