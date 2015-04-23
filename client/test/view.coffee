m = require 'mithril'

module.exports = (ctrl) ->
  m 'section.test', [
    m 'button.btn', onclick: ctrl.testAPI, 'Test Zillow API'
    m 'textarea', value: ctrl.result()
  ]
