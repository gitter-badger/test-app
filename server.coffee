express = require 'express'
app = express()

port = process.env.PORT or 8080

app.set 'view engine', 'ejs'
app.use express.static(__dirname + '/public')

# routes
app.get '/', (req, res) -> res.render 'index'
  
# listen
app.listen port, ->
  console.log "running on http://localhost/#{port}"
  return