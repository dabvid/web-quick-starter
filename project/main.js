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
