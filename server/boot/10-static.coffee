express = require 'express'

module.exports = (app, done) ->
  app.use express.static 'public'
  done()
