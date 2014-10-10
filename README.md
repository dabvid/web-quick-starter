# Web quick starter

> Generates a simple web project.

For occasions:

* when you just need a simple index.html and an easy way to add latest versions of dependencies such as jquery, less and bootstrap.
* when the task is to simple for a complex file struture.
* when build system and task runners seems to heavy.


Web quick starter depends on [Node.js](http://nodejs.org/), [Bower](http://bower.io), [wiredep](https://github.com/taptapship/wiredep) and [git](http://git-scm.com/)

Dependency managment are handled with Bower.

If you'r starting out a potentially large web project, check out [Yeoman](http://yeoman.io/) instead.

## Install

You need to install [Node.js](http://nodejs.org/) before installing Web quick starter.

```sh
    git clone https://github.com/dabvid/web-quick-starter.git
    sudo bash web-quick-starter/install
```

## Usage

```sh
# Initiate a minimal web project
$ web simple

# Initiate a minimal web project on your OSX Desktop
$ web simple -desk

# Initiate a minimal web project with AngularJS and Parse.
$ web angular-parse

# Search for a dependency eg. jquery
$ web search jquery

# install jquery and inject script src tags to index.html
$ web add jquery

# update all dependencies
$ web update
```
