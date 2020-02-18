import gulp from 'gulp';
// import gutil from 'gulp-util'
import uglify from 'gulp-uglify';
import concat from 'gulp-concat';
// import livereload from 'gulp-livereload';

export default function js(cb) {
  gulp.src(['components/scripts/scriptOne.js',
    'components/scripts/scriptTwo.js'])
    .pipe(uglify())
    .pipe(concat('script.js'))
    .pipe(gulp.dest('js'));

  cb();
}
