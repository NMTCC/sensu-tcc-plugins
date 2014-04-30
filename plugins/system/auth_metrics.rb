#!/usr/bin/env ruby
# Plugin that monitors the amount of authentication failures in past day
# Returns the amount of failed logins in the last hour
# This plugin works by using the lastb linux command
# Specifically, this plugin returns the # of failed logins from current time MINUS the # of failed logins as of a day ago

require 'rubygems' if RUBY_VERSION < '1.9.0'
require 'sensu-plugin/metric/cli'
require 'socket'
require 'open3'

class AuthenticationFailuresGraphite < Sensu::Plugin::Metric::CLI::Graphite

  option :scheme,
    :description => "Metric naming scheme, text to prepend to metric",
    :short => "-s SCHEME",
    :long => "--scheme SCHEME",
    :default => "#{Socket.gethostname}.auth_failures"

  def run

    #Get times in YYYYMMDDHHMMSS format
    today = (Time.now).strftime("%Y%m%d%h%M%S") 
    day_ago = (Time.now - 86400).strftime("%Y%m%d%h%M%S") 
		
    #Execute lastb command and capture output in stdout variable
    stdin0, stdout0, stderr0 = Open3.popen3("lastb")
    stdin1, stdout1, stderr1 = Open3.popen3("lastb -t " + day_ago)

    #lastb returns a line of output for each failed login
    num_failures_today = stdout0.readlines.count
    num_failures_day_ago = stdout1.readlines.count 

    #Subtract yesterday's bad logins from today's
    num_failures = num_failures_today - num_failures_day_ago

    timestamp = Time.now.to_i
    output "#{config[:scheme]}", num_failures, timestamp
    ok
  end
end
