#!/bin/bash

#####################################
#   TEMPLATE GENERATORS             #
#####################################

generateSimple () {
cat >> index.html <<- _EOF_
<!doctype html>
<html>
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
<!doctype html>
<html ng-app='app'>
    <head>
        <meta charset='UTF-8'>
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


showHelp () {
cat <<- _EOF_
Usage:

	web <command> [<option>]

Commands:

	simple	        	    Initiate a minimal web project
	angular-parse               Initiate a minimal web project with AngularJS
	add                         Add dependency eg. Jquery
	update		            Update all dependencies in your web project
	search		            Search for dependency eg. Jquery

Options:

	-desk		            Generates the project on your OSX Desktop

Web depends on NodeJS and Bower.
_EOF_
}
