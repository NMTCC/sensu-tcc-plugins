#!/usr/bin/env ruby
#
# Check if too many authentication failures have happened during the past week
#

require 'rubygems' if RUBY_VERSION < '1.9.0'
require 'sensu-plugin/check/cli'

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
    num_failures = `grep "authentication failure" /var/log/secure | awk '{ print $13 }' | cut -b7-  | sort | uniq -c`.to_i
    message "#{num_failures} Authentication Failures this week"

    critical if num_failures > config[:crit]
    warning if num_failures > config[:warn]
    ok
  
  
  end

end








