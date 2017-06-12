var bowerFiles = require('main-bower-files');
var es = require('event-stream');

module.exports = function(gulp, $, plumberConfig, paths) {
  return function() {

    gulp.src(paths.build + '/**/*.html')
      .pipe($.useref({
        searchPath: paths.build
      }))
      .pipe($.if('*.js', $.uglify()))
      .pipe($.if('*.css', $.cssnano()))
      .pipe(gulp.dest(paths.build));
  };
};
