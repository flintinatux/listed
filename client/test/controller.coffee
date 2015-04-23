m = require 'mithril'

zillow = require '../lib/zillow'

module.exports = ->
  ctrl = {}

  ctrl.result = m.prop ''

  ctrl.testAPI = ->
    zillow 'GetDeepSearchResults',
      address:      '4 Melhana Dr SE'
      citystatezip: '30120'
    .then ctrl.result
    .then console.log

  ctrl
