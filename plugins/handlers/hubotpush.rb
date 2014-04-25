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
require 'sensu-handler'

class HubotPush < Sensu::Handler

  def handle
    #Extract viable information
    client = @event['client']['name']
    check = @event['check']['name']
    statuscode = @event['check']['status']
    output = @event['check']['output'].strip

    #Post Data to Hubot Listener
    print settings['hubotpush']['host']
    uri = URI(settings['hubotpush']['host'])
    response = Net::HTTP.post_form(uri, {'client'=>client,'check'=>check,'statuscode'=>statuscode,'output'=>output})
  end
end


