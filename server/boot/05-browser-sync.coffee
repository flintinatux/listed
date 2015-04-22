browserSync = require 'browser-sync'
connectBrowserSync = require 'connect-browser-sync'

module.exports = (app, done) ->
  return unless app.get('env') is 'development'

  bs = browserSync
    files:          ['server/**/*', 'public/**/*']
    logSnippet:     false
    port:           5050
    reloadDelay:    1000
    reloadDebounce: 1000

  app.use connectBrowserSync(bs)
  done()
