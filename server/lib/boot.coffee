_ = require 'lodash'
async   = require 'async'
scripts = require('require-dir')('../boot')

module.exports = (app, done) ->
  for key, script of scripts
    scripts[key] = _.partial script, app
  async.series scripts, done
