# DB_Project
Data Base Project Fall 2022

[![Build Status](https://github.com/flaskbb/flaskbb/actions/workflows/tests.yml/badge.svg)](https://github.com/flaskbb/flaskbb/actions/workflows/tests.yml)
[![codecov](https://codecov.io/gh/flaskbb/flaskbb/branch/master/graph/badge.svg)](https://codecov.io/gh/flaskbb/flaskbb)

[![License](https://img.shields.io/badge/license-BSD-blue.svg)](https://flaskbb.org)
[![#flaskbb:matrix.org](https://img.shields.io/badge/[matrix]-%23flaskbb%3Amatrix.org-blue)](https://matrix.to/#/#flaskbb:matrix.org)
[![#flaskbb@libera.chat](https://img.shields.io/badge/irc.libera.chat-%23flaskbb-blue.svg)](https://web.libera.chat/?channel=#flaskbb)

Installing
----------

Install and update using `pip`_:



  $ pip install -U Flask-SQLAlchemy

.. _pip: https://pip.pypa.io/en/stable/getting-started/


A Simple Example
----------------



    from flask import Flask
    from flask_sqlalchemy import SQLAlchemy

    app = Flask(__name__)
    app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///example.sqlite"
    db = SQLAlchemy(app)

    class User(db.Model):
        id = db.Column(db.Integer, primary_key=True)
        username = db.Column(db.String, unique=True, nullable=False)

    with app.app_context():
        db.create_all()

        db.session.add(User(username="example"))
        db.session.commit()

        users = db.session.execute(db.select(User)).scalars()

## Framework

- [Connexion](https://github.com/zalando/connexion) - Swagger/OpenAPI First framework for Python on top of Flask with automatic endpoint validation and OAuth2 support
- [Flask-MongoRest](https://github.com/closeio/flask-mongorest) - Restful API framework wrapped around MongoEngine
- [Eve](https://github.com/pyeve/eve) - REST API framework powered by Flask, MongoDB and good intentions
- [Flask-Restless](https://github.com/jfinkels/flask-restless) - A Flask extension for creating simple ReSTful APIs from SQLAlchemy models
- [Flask-RESTful](https://github.com/flask-restful/flask-restful) - Simple framework for creating REST APIs
- [Flask-RestPlus](https://github.com/noirbizarre/flask-restplus) - syntaxic sugar, helpers and automatically generated Swagger documentation.
- [Flask-Potion](https://github.com/biosustain/potion) - RESTful API framework for Flask and SQLAlchemy
- [Zappa](https://github.com/Miserlou/Zappa) - Build and deploy server-less Flask applications on AWS Lambda and API Gateway


# Database

## mysql

![MySQLTuner-perl](https://github.com/major/MySQLTuner-perl/blob/master/mtlogo.png)
====
[![Build Status - Master](https://travis-ci.org/major/MySQLTuner-perl.svg?branch=master)](https://travis-ci.org/major/MySQLTuner-perl)
[![Project Status](http://opensource.box.com/badges/active.svg)](http://opensource.box.com/badges)
[![Project Status](http://opensource.box.com/badges/maintenance.svg)](http://opensource.box.com/badges)
[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/major/MySQLTuner-perl.svg)](http://isitmaintained.com/project/major/MySQLTuner-perl "Average time to resolve an issue")
[![Percentage of open issues](http://isitmaintained.com/badge/open/major/MySQLTuner-perl.svg)](http://isitmaintained.com/project/major/MySQLTuner-perl "Percentage of issues still open")
[![GPL License](https://badges.frapsoft.com/os/gpl/gpl.png?v=103)](https://opensource.org/licenses/GPL-3.0/)


## Table of Contents

- [Install](#install)
- [Introduction](#introduction)
- [Contributors](#contributors)
- [Sponsors](#sponsors)
- [Community](#community)
- [Establishing connections](#establishing-connections)
- [Connection options](#connection-options)
  - [SSL options](#ssl-options)
  - [Connection flags](#connection-flags)
- [Terminating connections](#terminating-connections)
- [Pooling connections](#pooling-connections)
- [Pool options](#pool-options)
- [Pool events](#pool-events)
  - [acquire](#acquire)
  - [connection](#connection)
  - [enqueue](#enqueue)
  - [release](#release)
- [Closing all the connections in a pool](#closing-all-the-connections-in-a-pool)
- [PoolCluster](#poolcluster)
  - [PoolCluster options](#poolcluster-options)
- [Switching users and altering connection state](#switching-users-and-altering-connection-state)
- [Server disconnects](#server-disconnects)
- [Performing queries](#performing-queries)
- [Escaping query values](#escaping-query-values)
- [Escaping query identifiers](#escaping-query-identifiers)
  - [Preparing Queries](#preparing-queries)
  - [Custom format](#custom-format)
- [Getting the id of an inserted row](#getting-the-id-of-an-inserted-row)
- [Getting the number of affected rows](#getting-the-number-of-affected-rows)
- [Getting the number of changed rows](#getting-the-number-of-changed-rows)
- [Getting the connection ID](#getting-the-connection-id)
- [Executing queries in parallel](#executing-queries-in-parallel)
- [Streaming query rows](#streaming-query-rows)
  - [Piping results with Streams](#piping-results-with-streams)
- [Multiple statement queries](#multiple-statement-queries)
- [Stored procedures](#stored-procedures)
- [Joins with overlapping column names](#joins-with-overlapping-column-names)
- [Transactions](#transactions)
- [Ping](#ping)
- [Timeouts](#timeouts)
- [Error handling](#error-handling)
- [Exception Safety](#exception-safety)
- [Type casting](#type-casting)
  - [Number](#number)
  - [Date](#date)
  - [Buffer](#buffer)
  - [String](#string)
  - [Custom type casting](#custom-type-casting)
- [Debugging and reporting problems](#debugging-and-reporting-problems)
- [Security issues](#security-issues)
- [Contributing](#contributing)
- [Running tests](#running-tests)
  - [Running unit tests](#running-unit-tests)
  - [Running integration tests](#running-integration-tests)
- [Todo](#todo)

## Install

This is a [Node.js](https://nodejs.org/en/) module available through the
[npm registry](https://www.npmjs.com/).

Before installing, [download and install Node.js](https://nodejs.org/en/download/).
Node.js 0.6 or higher is required.

Installation is done using the
[`npm install` command](https://docs.npmjs.com/getting-started/installing-npm-packages-locally):

```sh
$ npm install mysql
```
For information about the previous 0.9.x releases, visit the [v0.9 branch][].

Sometimes I may also ask you to install the latest version from Github to check
if a bugfix is working. In this case, please do:

```sh
$ npm install mysqljs/mysql

```

## Frontend

- [Flask-CORS](https://github.com/corydolphin/flask-cors) - A Flask extension for handling Cross Origin Resource Sharing (CORS), making cross-origin AJAX possible
- [flask-assets](https://github.com/miracle2k/flask-assets) - Flask webassets integration
- [flask-s3](https://github.com/e-dard/flask-s3) - Seamlessly serve your static assets of your Flask app from Amazon S3
- [Flask-SSLify](https://github.com/kennethreitz/flask-sslify) - Force SSL on your Flask app
- [Flask-HTMLmin](https://github.com/hamidfzm/Flask-HTMLmin) - Flask html minifier

## Development (Debugging/Testing/Documentation)

- [Flasgger](https://github.com/rochacbruno/flasgger) - Create API documentation for Flask views using Swagger 2.0 specs
- [flask-apispec](https://github.com/jmcarp/flask-apispec) - simple self-documenting APIs with flask
- [flask2postman](https://github.com/numberly/flask2postman) - Generate a Postman collection from your Flask application
- [flask_profiler](https://github.com/muatik/flask-profiler) - endpoint analyzer/profiler for Flask
- [Flask-DebugToolbar](https://github.com/mgood/flask-debugtoolbar) - A port of the django debug toolbar to flask
- [flask-debug-toolbar-mongo](https://github.com/cenkalti/flask-debug-toolbar-mongo) - MongoDB panel for the Flask Debug Toolbar
- [Flask-Testing](https://github.com/jarus/flask-testing) - Unittest extensions for Flask
- [pytest-flask](https://github.com/pytest-dev/pytest-flask) - A set of pytest fixtures to test Flask applications
- [Flask-MonitoringDashboard](https://github.com/flask-dashboard/Flask-MonitoringDashboard) - Automatically monitor the evolving performance of Flask/Python web services.
- [nplusone](https://github.com/jmcarp/nplusone#flask-sqlalchemy) - Auto-detect n+1 queries with Flask and SQLAlchemy
- [connexion](https://github.com/zalando/connexion) - Swagger/OpenAPI First framework for Python on top of Flask with automatic endpoint validation & OAuth2 support.

# Links

* [Project Website](https://flaskbb.org)
* [Documentation](https://flaskbb.readthedocs.io)
* [Source Code](https://github.com/flaskbb/flaskbb)
