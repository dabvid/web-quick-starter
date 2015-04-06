# Web quick starter

> Web generator for frontend developers


* Generates a bare minimum code structure.
* Gives the ability to add, update and <b>inject</b> dependencies like jQuery, Bootstrap etc. to your index.html


## Templates
> All templates are prepared to use quick dependency injection.

##### Minimal
Just a simple index.html

##### Angular with Parse
index.html main.js, style.css and one ng-controller.

##### React with Parse
index.hmtl, app.js, style.css and two React classes with JSX code.
This project template also uses gulp to let you require modules and will watch js files for changes.

## Install

You need to install [Node.js](http://nodejs.org/) before installing Web quick starter.

```sh
    git clone https://github.com/dabvid/web-quick-starter.git
    sudo bash web-quick-starter/install
```

## Usage

```sh
# Initiate a minimal web project
$ web new simple

# Initiate a minimal web project on your OSX Desktop
$ web new simple -desk

# Initiate a minimal web project with AngularJS and Parse.
$ web new angular-parse

# Initiate a minimal web project with React and Parse. Also uses gulp for watching changes and transforming JSX to Javascript.
$ web new react-parse

# Search for a dependency eg. jquery
$ web search jquery

# install jquery and inject script src tags to index.html
$ web add jquery

# update dependencies
$ web update
```
## Note
If you'r starting out a potentially large web project, you probably should check out [Yeoman](http://yeoman.io/) instead.

Web quick starter depends on [Node.js](http://nodejs.org/), [Bower](http://bower.io), [wiredep](https://github.com/taptapship/wiredep) and [git](http://git-scm.com/)
