# Web quick starter

> Lightweight web project templates with dynamic dependency injection.

* Quickly gets you started with one of four templates: Minimal, Angular/Parse or React/Parse.
* Lets you add, update and inject dependencies like jQuery, Bootstrap etc. to your index.html


# Minimal
* Just a simple index.html

# Angular with Parse
index.html main.js, style.css and one ng-controller.

# React with Parse
index.hmtl, app.js, style.css and two React classes with JSX code.


If you'r starting out a potentially large web project, check out [Yeoman](http://yeoman.io/) instead.

Web quick starter depends on [Node.js](http://nodejs.org/), [Bower](http://bower.io), [wiredep](https://github.com/taptapship/wiredep) and [git](http://git-scm.com/)

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
