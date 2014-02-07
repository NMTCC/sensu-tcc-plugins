#!/usr/bin/env ruby
# Plugin that monitors how many users are logged into a machine
# Returns the amount of users logged on at any time

require 'rubygems' if RUBY_VERSION < '1.9.0'
require 'sensu-plugin/metric/cli'
require 'socket'

class UsersLoggedInGraphite < Sensu::Plugin::Metric::CLI::Graphite

	option :scheme,
    :description => "Metric naming scheme, text to prepend to metric",
    :short => "-s SCHEME",
    :long => "--scheme SCHEME",
    :default => "#{Socket.gethostname}.users"

	def run
		timestamp = Time.now.to_i
		who_output = `who`
		users_number = who_output.scan(/^\w/).size
		output "#{config[:scheme]}", users_number, timestamp
		ok
	end

end
