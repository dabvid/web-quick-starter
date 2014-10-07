#!/bin/bash

#   INCLUDES
#   All content of included files will be added to this file in build process.

#include templates.sh

if [ "$1" == "simple" ]; then
    if [ "$2" == "-desk" ]; then
        mkdir ~/Desktop/simple-web
        cd ~/Desktop/simple-web
    else
        mkdir simple-web
        cd simple-web
    fi
    
    generateSimple
    
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

    generateAngularParse
    
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
    showHelp
fi
