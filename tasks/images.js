module.exports = function(gulp, $, plumberConfig, paths) {
  return function() {

    return gulp.src(paths.source + '/img/**/*')
    .pipe($.plumber(plumberConfig))
    .pipe(gulp.dest(paths.build + '/img/'));
  };
};
