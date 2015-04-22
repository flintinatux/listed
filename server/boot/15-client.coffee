module.exports = (app, done) ->
  app.get '/', (req, res) ->
    res.sendFile 'index.html', root: 'public'

  done()
