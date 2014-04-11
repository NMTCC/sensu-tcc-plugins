#!/usr/bin/env ruby
#
# Pushes Sensu Reports to a listening Hubot
#
# This Handler sends client name, check name, status code, and check 
# output to a properly configured Hubot HTTP listener.
#
# Data is sent though an HTTP post.
#
# One setting is required in hubotpush.json
#   host : The ip and port of the Hubot HTTP listener.

require 'rubygems' if RUBY_VERSION < '1.9.0'
require 'json'
require 'net/http'

#Read user settings from hubotpush.json
settingsfile = "#{File.expand_path(File.dirname(__FILE__))}" + "/hubotpush.json"
settings = JSON.parse(IO.read(settingsfile), :symbolize_names => true)

# Read event data
event = JSON.parse(STDIN.read, :symbolize_names => true)

#Extract viable information
client = "#{event[:client]}"
check = "#{event[:check][:name]}"
statuscode = "#{event[:check][:status]}"
output = "#{event[:check][:output]}".strip

#Post Data to Hubot Listener
uri = URI("#{settings[:hubotpush][:host]}")
response = Net::HTTP.post_form(uri, {'client'=>client,'check'=>check,'statuscode'=>statuscode,'output'=>output})

