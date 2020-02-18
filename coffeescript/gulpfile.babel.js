import gulp from 'gulp';
// import gutil from 'gulp-util'
import uglify from 'gulp-uglify';
import concat from 'gulp-concat';
import sass from 'gulp-sass';

let jsSources = [
  'components/scripts/scriptOne.js',
  'components/scripts/scriptTwo.js'
];

let sassSources = [
  'components/sass/*.scss'
];

export function js() {
  return gulp.src(jsSources)
    .pipe(uglify())
    .pipe(concat('script.js'))
    .pipe(gulp.dest('js'));
}

export function css() {
  return gulp.src(sassSources)
    .pipe(sass({
      style: 'expanded',
      lineNumbers: true
    }))
    .pipe(concat('style.css'))
    .pipe(gulp.dest('css'));
}

export function watch() {
  gulp.watch(jsSources, gulp.parallel(js));
  gulp.watch(sassSources, gulp.parallel(css));
}

gulp.task('default', gulp.series(js, css, watch));
