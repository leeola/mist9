#
# server/app.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
flatiron = require 'flatiron'

# Create the app, and expose it.
exports = module.exports = flatiron.app


# Now call our configure/route modules so that they can set up this app.
require './configure'
require './route'
