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

  option :minutes,
    :description => 'No. of minutes, back in time, to check',
    :short => '-m MINS',
    :proc => proc {|a| a.to_i },
    :default => 60

  def run

    #Get times in YYYYMMDDHHMMSS format
    present = (Time.now).strftime("%Y%m%d%H%M%S") 
    past = (Time.now - (60 * config[:minutes])).strftime("%Y%m%d%H%M%S")
		
    #Execute lastb command and capture output in stdout variable
    stdin0, stdout0, stderr0 = Open3.popen3("lastb -t " + present)
    stdin1, stdout1, stderr1 = Open3.popen3("lastb -t " + past)

    #lastb returns a line of output for each failed login
    num_failures_present = stdout0.readlines.count
    num_failures_past = stdout1.readlines.count 

    #Subtract yesterday's bad logins from today's
    num_failures = num_failures_present - num_failures_past

    timestamp = Time.now.to_i
    output "#{config[:scheme]}", num_failures, timestamp
    ok
  end
end
