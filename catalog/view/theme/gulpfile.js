var gulp = require('gulp'),
    sass = require('gulp-sass'),
    watch = require('gulp-watch'),
    concat = require('gulp-concat'),
    jshint = require('gulp-jshint'),
    hint = require('jshint'),
    uglify = require('gulp-uglify'),
    uglifycss = require('gulp-uglifycss');

gulp.task('sass', function() {
  return gulp.src(['auxincar/sass/**/*.sass', 'auxincar/sass/**/*.scss'])
    .pipe(sass({outputStyle: 'expanded'}).on('error', sass.logError))
    .pipe(gulp.dest('auxincar/css'))
  });

gulp.task('watch', function() {
  gulp.watch(['**/*.sass', '**/*.scss'], ['sass']);
});

gulp.task('js', function() {
    return gulp.src(['auxincar/js/main.js'])
    	.pipe(jshint())
    	.pipe(jshint.reporter('default'))
    	.pipe(uglify())
    	.pipe(concat('script.min.js'))
    	.pipe(gulp.dest('auxincar/js'));
});

gulp.task('css', function () {
	gulp.src(['auxincar/libs/bootstrap/css/bootstrap.min.css',
		  	'auxincar/css/main.css'
		])
	.pipe(uglifycss({
		"uglyComments": true
	}))
	.pipe(concat('style.min.css'))
	.pipe(gulp.dest('auxincar/css'));
});

gulp.task('default', ['js', 'css']);