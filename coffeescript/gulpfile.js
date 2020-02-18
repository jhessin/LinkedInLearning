var gulp = require('gulp'),
  // gutil = require('gulp-util'),
  uglify = require('gulp-uglify'),
  concat = require('gulp-concat');

function js(cb) {
  gulp.src(['components/scripts/scriptOne.js',
    'components/scripts/scriptTwo.js'])
    .pipe(uglify())
    .pipe(concat('script.js'))
    .pipe(gulp.dest('js'));

  cb();
}

exports.default = js;
