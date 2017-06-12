var browserSync = require('browser-sync');

module.exports = function(gulp, $, plumberConfig, paths) {
  return function() {
    browserSync({
      proxy: 'localhost:8888',
      logSnippet: false,
      server: false,
      open: true,
      reloadDelay: 100,
      reloadDebounce: 100,
      notify: false,
      ghostMode: false
    })
  };
};
