boot    = require './lib/boot'
express = require 'express'

app = module.exports = express()

app.start = ->
  port = app.get 'port'
  app.listen port, ->
    console.log 'Web server listening on port: %s', port

boot app, (err) ->
  throw err if err
  app.start() if require.main == module
