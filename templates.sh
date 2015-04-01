#!/bin/bash

#####################################
#   TEMPLATE GENERATORS             #
#####################################

generateSimple () {
cat >> index.html <<- _EOF_
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <head lang="en">
    <head>
        <!-- bower:css -->
        <!-- endbower -->
        <!-- bower:js -->
        <!-- endbower -->
    <title>HTML Template</title>
    <style>
        body {
            background: white;
        }
    </style>
    <script>
        window.onload = function(){
            console.log("page loaded");
        }
    </script>
    </head>
    <body></body>
</html>
_EOF_
}


generateAngularParse () {
cat >> index.html <<- _EOF_
<!DOCTYPE html>
<html ng-app='app'>
    <head>
        <meta charset='UTF-8'>
        <head lang="en">
        <script src='node_modules/parse/build/parse-latest.js'></script>
        <!-- bower:css -->
        <!-- endbower -->
        <!-- bower:js -->
        <!-- endbower -->
        <script src='main.js'></script>
        <title>Angular-Parse Template</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body ng-controller='AppController'>
    </body>
</html>
_EOF_

cat >> main.js <<- _EOF_
/*global Parse, angular */
'use strict';

Parse.initialize('appid', 'javascript-key');
var app = angular.module('app', ['ngAnimate','parse-angular', 'ngRoute','angularFileUpload']);

app.controller('AppController', function() {
    
    function main() {
        //var query = new Parse.Query(Parse.Object.extend('Item'));
    }

    main();
});
_EOF_

cat >> style.css <<- _EOF_
body {
    background: white;
}
_EOF_
}

generateReactParse () {
cat >> index.html <<- _EOF_
<!DOCTYPE html>
<html>
    <head>
        <meta charset='UTF-8'>
        <head lang="en">
        <!-- bower:css -->
        <!-- endbower -->
        <!-- bower:js -->
        <!-- endbower -->
        <title>React-Parse Template</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div id="app"></div>
        <script src="build/app.js"></script>
    </body>
</html>
_EOF_

cat >> js/app.js <<- _EOF_
var React = window.React = require('react');
var Parse = window.Parse = require('parse').Parse;
var ParseReact = require('parse-react');

Parse.initialize('APP_ID', 'JAVASCRIPT_CLIENT_ID');

var Todos = React.createClass({

    //Inherits methods from official ParseReact.Mixin
    mixins: [ParseReact.Mixin],

    //Observe belongs to ParseReact. Takes a query and stores result in this.data
    observe: function() {
        return {
            todos: (new Parse.Query('Todo')).ascending('createdAt')
        };
    },

    //Button add event listener
    add: function(e){
        ParseReact.Mutation.Create('Todo', {
            title: this.refs.input.getDOMNode().value
        }).dispatch();
    },

    //Renders list of todos
    render: function(){
        var todos = this.data.todos.map(function(item){
            return <Todo key={ item.id } title={ item.title } />
        });

        return (
            <div>
                <input ref="input" type="text" />
                <button onClick={ this.add }>Add</button>
                <ul>
                    { todos }
                </ul>
            </div>
        )
    }
});

var Todo = React.createClass({
    render: function(){
        return (
            <li>{ this.props.title }</li>
        )
    }
});

React.render(<Todos />, document.getElementById('app'));
_EOF_

cat >> css/style.css <<- _EOF_
body {
    background: white;
}
_EOF_

cat >> gulpfile.js <<- _EOF_
'use strict';

var gulp = require('gulp');
var watch = require('gulp-watch');
var browserify = require('gulp-browserify');
var react = require('gulp-react');

gulp.task('default', function(){
    gulp.src('js/app.js')
    .pipe(watch('js/*.js'))
    .pipe(react())
    .pipe(browserify())
    .pipe(gulp.dest('build/'));
});
_EOF_

cat >> package.json <<- _EOF_
{
  "name": "parse-react-simple",
  "version": "1.0.0",
  "description": "parse-react-simple web template",
  "main": "gulpfile.js",
  "scripts": {
    "test": "echo Error: no test specified && exit 1",
    "start": "gulp serve"
  },
  "author": "David Åberg",
  "license": "ISC",
  "dependencies": {
    "react": "latest",
    "parse": "latest",
    "parse-react": "latest"
  },
  "devDependencies": {
    "gulp": "latest",
    "gulp-react": "latest",
    "gulp-browserify": "latest",
    "gulp-watch": "latest"
  }
}
_EOF_
}

showHelp () {
cat <<- _EOF_
Usage:

	web <command> [<option>]

Commands:

	new simple			Initiate a minimal web project
	new angular-parse           	Initiate a web project with AngularJS and Parse
	new react-parse			Initiate a web project with React and Parse
	add                         	Add dependency eg. Jquery
	update		            	Update all dependencies in your web project
	search		            	Search for dependency eg. Jquery

Options:

	-desk		            	Generates the project on your OSX Desktop

Web depends on NodeJS and Bower.
_EOF_
}
