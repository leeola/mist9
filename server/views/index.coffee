#
# server/views/index.coffee
#
# A simple and rather ugly template loader.
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
fs = require 'fs'



base = project = undefined


# We're just going to load them all at once, in sync, on app load. No error
# catching or anything stable for now.
if not base?
  base = fs.readFileSync "#{__dirname}/base.html", 'utf-8'
  project = fs.readFileSync "#{__dirname}/base.html", 'utf-8'



exports.base = base
exports.project = project