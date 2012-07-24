#
# server/route.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
app = require './app'



app.router.get '/', () ->
  @res.end 'Prepare for dragons, please stand by...'
