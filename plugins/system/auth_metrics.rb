#!/usr/bin/env ruby
# Plugin that monitors the amount of authentication failures

require 'rubygems' if RUBY_VERSION < '1.9.0'
require 'sensu-plugin/metric/cli'
require 'socket'

class AuthenticationFailuresGraphite < Sensu::Plugin::Metric::CLI::Graphite

	option :scheme,
    :description => "Metric naming scheme, text to prepend to metric",
    :short => "-s SCHEME",
    :long => "--scheme SCHEME",
    :default => "#{Socket.gethostname}.auth_failures"

	def run
		timestamp = Time.now.to_i
		num_failures = `grep "authentication failure" /var/log/secure | awk '{ print $13 }' | cut -b7-  | sort | uniq -c`
		output "#{config[:scheme]}", num_failures.to_i, timestamp
		ok
	end
end
