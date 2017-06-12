// Common paths
var paths = {
  source: './source',
  build: './build',
  html: './source/htdocs/**/*.html',
  css: './source/scss/**/*.scss',
  js: ['./source/js/plugins.js', './source/js/**/*'],
  img: 'source/img/**/*',
  index: ['./source/htdocs/**/*.html', '!./source/htdocs/_templates{,/**}']
};

// Required plugins
var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var browserSync = require('browser-sync');
var reload = browserSync.reload;
var del = require('del');
var runSequence = require('run-sequence');

// $.plumber config
var plumberConfig = {
  errorHandler: $.notify.onError("Error: <%= error.message %>")
};

// Get tasks from /tasks directory and pass options
function getTask(task) {
  return require('./tasks/' + task)(gulp, $, plumberConfig, paths);
}

// Gulp tasks
gulp.task('clean', function() {
  return del([paths.build + '/*', '!' + paths.build + '/img']);
});

gulp.task('serve', ['watch'], getTask('serve'));
gulp.task('html', getTask('html'));
gulp.task('styles', getTask('style'));
gulp.task('scripts', getTask('scripts'));
gulp.task('images', getTask('images'));
gulp.task('copyfiles', getTask('copyfiles'));
gulp.task('useref', getTask('useref'));

gulp.task('watch', function() {
  gulp.watch(paths.html, ['html', reload]);
  gulp.watch(paths.css, ['styles', reload]);
  gulp.watch(paths.js, ['scripts', reload]);
  gulp.watch(paths.img, ['images', reload]);
});

var buildTasks = ['html', 'styles', 'scripts', 'images', 'copyfiles']

// For local development
gulp.task('default', ['clean'], function() {
  runSequence(
    buildTasks, 'serve'
  );
});

// For deployment to staging/production
gulp.task('build', ['clean'], function() {
  runSequence(
    buildTasks, 'useref'
  );
});
