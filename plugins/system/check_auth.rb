#!/usr/bin/env ruby
#
# Check if too many authentication failures have happened during a previous time period
# By default, checks No. of failures in past hour (change time period with -m option)

require 'rubygems' if RUBY_VERSION < '1.9.0'
require 'sensu-plugin/check/cli'
require 'open3'

class CheckAuthFailures < Sensu::Plugin::Check::CLI

  option :warn,
    :short => '-w WARN',
    :proc => proc {|a| a.to_i },
    :default => 75

  option :crit,
    :short => '-c CRIT',
    :proc => proc {|a| a.to_i },
    :default => 100

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
    stdin0, stdout0, stderr0 = Open3.popen3("lastb")
    stdin1, stdout1, stderr1 = Open3.popen3("lastb -t " + past)

    #lastb returns a line of output for each failed login
    num_failures_present = stdout0.readlines.count
    num_failures_past = stdout1.readlines.count 

    #Subtract yesterday's bad logins from today's
    num_failures = num_failures_present - num_failures_past


    message "#{num_failures} Authentication Failures in past #{config[:minutes]} minutes"

    critical if num_failures > config[:crit]
    warning if num_failures > config[:warn]
    ok
  
  
  end

end








