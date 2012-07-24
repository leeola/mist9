#
# server/route.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
plates = require 'plates'
views = require './views'
app = require './app'



app.router.get '/', () ->
  @res.writeHead 200, options =
    'Content-Type': 'text/html'
  @res.end views.base
