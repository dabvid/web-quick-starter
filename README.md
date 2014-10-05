# Web quick starter

> Generates a simple web project.

It's for occasions:

* when you just need a simple index.html and a few dependencies such as bootstrap or jquery.
* when the task is to simple for a complex file struture.
* when build system and task runners feels to heavy.

Web quick starter depends on [Node.js](http://nodejs.org/), [Bower](http://bower.io), [wiredep](https://github.com/taptapship/wiredep) and [git](http://git-scm.com/)

If you'r starting a larger web projects, check out [Yeoman](http://yeoman.io/) instead.

## Install

```sh
    git clone https://github.com/dabvid/web-quick-starter.git
    sudo bash web-quick-starter/install.sh
```

## Usage

```sh
# Initiate a minimal web project
$ web simple

# Initiate a minimal web project on your OSX Desktop
$ web simple -desk

# Initiate a minimal web project with AngularJS
$ web angular

# Search for a dependency eg. jquery
$ web search jquery

# install jquery and inject script src tags to index.html
$ web add jquery

# update all dependencies
$ web update
```
