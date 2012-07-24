#
# lib/bin/mist9.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
path = require 'path'
nomnom = require 'nomnom'
pork = require 'pork'

server = require '../../server'



nomnom.script = 'mist9'
nomnom.help = 'Start the mist9 web server.'
nomnom.options
  c9port:
    default: 3001
    metavar: 'C9PORT'
    help: 'The port that will be used as the base Cloud9 port. Each Cloud9 '+
      'instance spun up will use the next freely available port.'
  
  ### We're not supporting this option quite yet.
  daemon:
    default: false
    abbr: 'd'
    flag: true
    help: 'Run the streamer as a Forever process.'
  ###
  
  directory:
    default: path.join pork.home(), 'projects'
    position: 0
    help: 'The location that mist9 will store it\'s config, cloud9 '+
      'instances, projects, and etc.'
  
  port:
    default: 3000
    abbr: 'p'
    metavar: 'PORT'
    help: 'The HTTP port to use when connecting to the mist9 interface.'

options = nomnom.parse()



console.log "mist9 is now available at: localhost:#{options.port}."
server.app.start(options.port)
