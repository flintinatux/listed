async = require 'async'

configs = [
  '../config/application'
  '../config/development'
  '../config/production'
  '../config/local'
]

module.exports = (app, done) ->
  loadConfig = (config, next) ->
    try
      for key, val of require(config)
        app.set key, val
    next()

  async.each configs, loadConfig, done
