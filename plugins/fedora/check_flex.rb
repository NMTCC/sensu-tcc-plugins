#!/usr/bin/env ruby
threshold = 0.90 #max ratio of licenses in use to licenses issued before WARNING

output = `/system/flexlm/lmstat -a`

matches = output.scan(/(Users of )([^:]*)(:  \(Total of )([0-9]*)( licenses issued; Total of )([0-9]*)( licenses in use\))/)

matches.each do |match|
	ratio = Float(match[5]) / float(match[3])
	if ratio == 1:
		puts "All " + match[1] + " licenses checked out"
		exit 2
	end
	if ratio > threshold:
		puts match[1] + " licenses are in high use"
		exit 1
	end
end
puts "Licenses are A-OK"
exit 0
