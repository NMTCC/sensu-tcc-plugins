#!/usr/bin/env ruby
#
# Check if too many authentication failures have happened during the past week
#

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

  def run
    #Get times in YYYYMMDDHHMMSS format
    today = (Time.now).strftime("%Y%m%d%H%M%S") 
    day_ago = (Time.now - 86400).strftime("%Y%m%d%H%M%S") 
		

    #Execute lastb command and capture output in stdout variable
    stdin0, stdout0, stderr0 = Open3.popen3("lastb")
    stdin1, stdout1, stderr1 = Open3.popen3("lastb -t " + day_ago)

    #lastb returns a line of output for each failed login
    num_failures_today = stdout0.readlines.count
    num_failures_day_ago = stdout1.readlines.count 

    #Subtract yesterday's bad logins from today's
    num_failures = num_failures_today - num_failures_day_ago


    message "#{num_failures} Authentication Failures in past 24 hours"

    critical if num_failures > config[:crit]
    warning if num_failures > config[:warn]
    ok
  
  
  end

end








