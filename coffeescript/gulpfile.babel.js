/* globals require */
import gulp from 'gulp';
// import gutil from 'gulp-util'
import uglify from 'gulp-uglify';
import concat from 'gulp-concat';
import sass from 'gulp-sass';
import coffee from 'gulp-coffee';
import babel from 'gulp-babel';
const browserSync = require('browser-sync').create();

let coffeeSources = [
  'components/coffee/*.coffee'
];

let jsSources = [
  'components/scripts/*.js'
];

let sassSources = [
  'components/sass/*.scss'
];

export function js() {
  return gulp.src(jsSources)
    .pipe(babel())
    .pipe(uglify())
    .pipe(concat('script.js'))
    .pipe(gulp.dest('js'))
    .pipe(browserSync.stream());
}

export function coffeeTask() {
  return gulp.src(coffeeSources)
    .pipe(coffee({ bare: true }))
    .pipe(gulp.dest('components/scripts'));
}

export function css() {
  return gulp.src(sassSources)
    .pipe(sass({
      style: 'expanded',
      lineNumbers: true
    }))
    .pipe(concat('style.css'))
    .pipe(gulp.dest('css'))
    .pipe(browserSync.stream());
}

export function serve() {
  browserSync.init({
    server: './',
    port: 8080,
    open: false
  });

  gulp.watch(coffeeSources, gulp.parallel(coffeeTask));
  gulp.watch(jsSources, gulp.parallel(js));
  gulp.watch(sassSources, gulp.parallel(css));
  gulp.watch('./*.html').on('change', browserSync.reload);
}

gulp.task('default', gulp.series(coffeeTask, js, css, serve));
