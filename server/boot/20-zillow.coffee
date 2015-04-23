_ = require 'lodash'
express = require 'express'

apis = [
  'GetZestimate'
  'GetSearchResults'
  'GetChart'
  'GetComps'
  'GetDeepComps'
  'GetDeepSearchResults'
  'GetUpdatedPropertyDetails'
  'GetDemographics'
  'GetRegionChildren'
  'GetRegionChart'
  'GetRateSummary'
  'GetMonthlyPayments'
  'CalculateMonthlyPaymentsAdvanced'
  'CalculateAffordability'
]

baseUrl = 'http://www.zillow.com/webservice'

module.exports = (app, done) ->
  router = new express.Router caseSensitive: true

  apis.forEach (api) ->
    router.get api, (req, res) ->
      filter = _.extend {}, req.query
      filter['zws-id'] = app.get 'zws-id'


  app.use 'api/v1', router
  done()
