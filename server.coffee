express = require 'express'
exphbs  = require 'express-handlebars'

port = process.env.PORT or 8080

app = express()
app.engine 'handlebars', exphbs({defaultLayout: 'main'})
app.set 'view engine', 'handlebars'
app.use '/static', express.static('public')

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