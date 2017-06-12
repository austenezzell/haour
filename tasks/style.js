// PostCSS plugins
var autoprefixer = require('autoprefixer');
var pixrem = require('pixrem');
var mqpacker = require('css-mqpacker');

module.exports = function(gulp, $, plumberConfig, paths) {
  return function() {

    var processors = [
      mqpacker,
      autoprefixer({browsers: ['last 2 versions']}),
      pixrem({
        rootValue: 10,
        html: false
      })

    ];

    return gulp.src(paths.css)
      .pipe($.plumber(plumberConfig))
      .pipe($.sourcemaps.init())
        .pipe($.sass())
        .pipe($.postcss(processors))
      .pipe($.sourcemaps.write('./maps'))
      .pipe(gulp.dest(paths.build + '/css/'))
  };
};
