import gulp from 'gulp';
// import gutil from 'gulp-util'
import uglify from 'gulp-uglify';
import concat from 'gulp-concat';

let jsSources = [
  'components/scripts/scriptOne.js',
  'components/scripts/scriptTwo.js'
];

export function js(cb) {
  gulp.src(jsSources)
    .pipe(uglify())
    .pipe(concat('script.js'))
    .pipe(gulp.dest('js'));

  cb();
}

export function watch() {
  gulp.watch(jsSources, gulp.parallel(js));
}

gulp.task('default', gulp.series(js, watch));
