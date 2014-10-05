#!/bin/bash

if [ "$1" == "simple" ]; then
    if [ "$2" == "-desk" ]; then
        mkdir ~/Desktop/simple-web
        cd ~/Desktop/simple-web
    else
        mkdir simple-web
        cd simple-web
    fi

    html="<!DOCTYPE html>\n"
    html+="<html>\n"
    html+=" \t <head>\n"
    html+=" \t \t <!-- bower:css -->\n"
    html+=" \t \t <!-- endbower -->\n"
    html+=" \t \t <!-- bower:js -->\n"
    html+=" \t \t <!-- endbower -->\n"
    html+=" \t </head>\n"
    html+=" \t <body>\n"
    html+=" \t </body>\n"
    html+="</html>"

    echo -e $html > index.html
    echo -e "{\"name\":\"web\"}" > bower.json

    echo "------------------------------------------------------------------------------"
    echo "Success! A simple web project was created in a folder named 'simple-web'"
    echo "------------------------------------------------------------------------------"
fi
if [ "$1" == "angular-parse" ]; then

    if [ "$2" == "-desk" ]; then
        mkdir ~/Desktop/simple-angular
        cd ~/Desktop/simple-angular
    else
        mkdir simple-angular
        cd simple-angular
    fi

    html="<!DOCTYPE html>\n"
    html+="<html ng-app='app'>\n"
    html+=" \t <head>\n"
    html+=" \t \t <meta charset='UTF-8'>\n"
    html+=" \t \t <script src='node_modules/parse/build/parse-latest.js'></script>\n"
    html+=" \t \t <!-- bower:css -->\n"
    html+=" \t \t <!-- endbower -->\n"
    html+=" \t \t <!-- bower:js -->\n"
    html+=" \t \t <!-- endbower -->\n"
    html+=" \t \t <script src='main.js'></script>\n"
    html+=" \t </head>\n"
    html+=" \t <body ng-controller='AppController'>\n"
    html+=" \t </body>\n"
    html+="</html>"

    js="/*global Parse, angular */\n"
    js+="'use strict';\n\n"
    js+="Parse.initialize('appid', 'javascript-key');\n\n"
    js+="var app = angular.module('app', ['ngAnimate','parse-angular', 'ngRoute','angularFileUpload']);\n\n"
    js+="app.controller('AppController', function() {\n\n"
    js+=" \t function main() {\n"
    js+=" \t \t //var query = new Parse.Query(Parse.Object.extend('Item'));\n"
    js+=" \t }\n\n"
    js+=" \t main();\n"
    js+="});"

    echo -e $html > index.html
    echo -e $js > main.js

    echo -e "{\"name\":\"web\"}" > bower.json

    web add angular
    web add angular-animate
    web add angular-route
    web add ng-file-upload
    web add parse-angular-patch
    npm install parse --save-dep

    echo "----------------------------------------------------------------------------------------------"
    echo "Success! A simple web project with AngularJS was created in a folder named 'simple-angular'---"
    echo "----------------------------------------------------------------------------------------------"
fi
if [ "$1" == "add" ]; then
    bower install --save $2
    wiredep -s index.html
fi
if [ "$1" == "update" ]; then
    bower update
fi
if [ "$1" == "search" ]; then
    bower search $2
fi
if [ -z "$1" ] || [ "$1" == "help" ]; then
    echo -ne "\n"
    echo -e "Usage:"
    echo -ne "\n"
    echo -e "\tweb <command> [<args>]"
    echo -ne "\n"
    echo "Commands:"
    echo -ne "\n"
    echo -e "\tsimple\t\tInitiate a minimal web project"
    echo -e "\tangular-parse\tInitiate a minimal web project with AngularJS"
    echo -e "\tadd\t\tAdd dependency eg. Jquery"
    echo -e "\tupdate\t\tUpdate all dependencies in your web project"
    echo -e "\tsearch\t\tSearch for dependency eg. Jquery"
    echo -ne "\n"
    echo "Options:"
    echo -ne "\n"
    echo -e "\t-desk\t\tInitiate project on your Desktop"
    echo -ne "\n"
    echo "Web depends on NodeJS and Bower."
fi

