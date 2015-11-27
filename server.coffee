express = require 'express'
app = express()

port = process.env.PORT or 8080

app.set 'view engine', 'ejs'
app.use express.static(__dirname + '/public')

# routes
app.get '/', (req, res) -> 
  res.render 'index'
  
app.get '/user/:id', (req, res) -> 
  res.render 'profile', {"id" : req.params.id}

app.use (req, res, next) -> 
  res.status 404
  res.render '404'
  
# listen
app.listen port, ->
  console.log "running on http://localhost#{port}"