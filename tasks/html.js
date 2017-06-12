var bowerFiles = require('main-bower-files');
var es = require('event-stream');

module.exports = function(gulp, $, plumberConfig, paths) {
    return function() {

      var vendorjs = gulp.src(bowerFiles())
        .pipe($.plumber(plumberConfig))
        .pipe($.filter('**/*.js'))
        .pipe(gulp.dest(paths.build + '/vendor'));

      var vendorcss = gulp.src(bowerFiles())
        .pipe($.plumber(plumberConfig))
        .pipe($.filter('**/*.css'))
        .pipe(gulp.dest(paths.build + '/vendor'));


      return gulp.src(paths.index)
        .pipe($.plumber(plumberConfig))

      // Include files
      .pipe($.fileInclude({
        prefix: '@@',
        basepath: './source/'
      })).on('error', $.util.log)

      //inject vendor js and css
      .pipe($.inject(es.merge(
        vendorcss,
        vendorjs
      ), {
        name: 'bower',
        ignorePath: ['build', 'source'],
        addRootSlash: true
      }))
      .pipe(gulp.dest(paths.build))
      };
    };
