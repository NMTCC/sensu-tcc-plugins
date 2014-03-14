#!/usr/bin/env ruby

require 'rubygems'
require 'json'
require 'net/http'

#Read even data
#testjson = '{"client":{"name":"phobos"}, "check":{"name":"process_check","status":0,"output":"bad stuff"}}'
event = JSON.parse(STDIN.read, :symbolize_names => true)

#Extract viable information
client = "#{event[:client][:name]}"
check = "#{event[:check][:name]}"
statuscode = "#{event[:check][:status]}"
output = "#{event[:check][:output]}"

#Post Data to Hubot Listener
uri = URI("http://neptr.nmt.edu:8080/hubot/sensu")
response = Net::HTTP.post_form(uri, {'client'=>client,'check'=>check,'statuscode'=>statuscode,'output'=>output})

