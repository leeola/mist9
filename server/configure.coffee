#
# server/configure.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
flatiron = require 'flatiron'
app = require './app'



# Use the default http plugin.
app.use flatiron.plugins.http