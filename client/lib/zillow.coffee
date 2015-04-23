m = require 'mithril'
identity = require 'lodash/utility/identity'
parseString = require('xml2js').parseString

zillow = require '../config/zillow'

baseUrl = 'http://www.zillow.com/webservice'

module.exports = (api, filter) ->
  d = m.deferred()
  filter['zws-id'] = zillow['zws-id']
  filter = encodeURIComponent JSON.stringify filter

  parse = (xml) ->
    parseString xml, (err, result) ->
      return d.reject(err) if err
      d.resolve result

  m.request
    method: 'GET'
    url:    "#{baseUrl}/#{api}.htm?#{filter}"
    deserialize: identity
  .then parse

  d.promise
