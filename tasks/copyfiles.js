module.exports = function(gulp, $, plumberConfig, paths) {
  return function() {

    return gulp.src([
        paths.source + '/**/*.{ttf,woff,woff2,eof,svg,ico,png,jpg,gif,pdf}',
        paths.source + '/**/.htaccess',
        paths.source + '/htdocs/*.php',
        paths.source + '/**/*.json'
      ])
      .pipe($.plumber(plumberConfig))
      .pipe(gulp.dest(paths.build));
  };
};
