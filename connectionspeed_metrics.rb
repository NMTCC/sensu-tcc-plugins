#!/usr/bin/env ruby
# Plugin that monitors the connection_speed metrics
# Returned values are in Mb/s

require 'rubygems' if RUBY_VERSION < '1.9.0'
require 'sensu-plugin/metric/cli'
require 'socket'

class ConnectionSpeedGraphite < Sensu::Plugin::Metric::CLI::Graphite

	option :scheme,
    :description => "Metric naming scheme, text to prepend to metric",
    :short => "-s SCHEME",
    :long => "--scheme SCHEME",
    :default => "#{Socket.gethostname}.connection_speed"

	def run
		ifconfig_output = `ifconfig -s` #capture output that lists network interfaces

		interfaces = ifconfig_output.scan(/^[^\s\t\r\n\f]+/) #just get the NIC names from output
		interfaces = interfaces.drop(1) #get rid of first row (which is generic "IFace")

		interfaces.each do |interface|
			timestamp = Time.now.to_i
			ethtool_output = `ethtool #{interface} | grep -i speed`
			if ethtool_output =~ /([0-9]+)/
				output "#{config[:scheme]}.#{interface}", $1, timestamp
			end		
		end

	ok
	end

end
