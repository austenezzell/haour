module.exports = function(gulp, $, plumberConfig, paths) {
  return function() {

    return gulp.src(paths.js)
      .pipe($.plumber(plumberConfig))
      // .pipe($.jshint())
      // .pipe($.jshint.reporter('default'))
      .pipe($.sourcemaps.init())
        .pipe($.concat('scripts.js'))
      .pipe($.sourcemaps.write('./maps'))
      .pipe(gulp.dest(paths.build + '/js'));
  };
};
