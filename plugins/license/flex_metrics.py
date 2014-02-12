#!/usr/bin/python
# Plugin to track the FlexLM metrics
# Requires a license file to point to the license server we are monitoring.

import re,sys,commands,socket,time

#Set Variables
matlab_file = '/usr/local/etc/matlab.lic' #path to license file pointing to server
maple_file = '/usr/local//etc/maple.lic' #path to maple license file

#Run lmstat
(status, output) = commands.getstatusoutput('/usr/local/matlab-2013a/etc/glnxa64/lmutil lmstat -a -c ' + matlab_file)
(status2, output2) = commands.getstatusoutput('/usr/local/matlab-2013a/etc/glnxa64/lmutil lmstat -a -c ' + maple_file)

#Create Pattern were looking for
#Regex Groups 
#Group 1: Name
#Group 3: # Licenses Issued
#Group 5: # Licenses in use
pattern = re.compile('(Users of )([^:]*)(:  \(Total of )([0-9]*)( licenses issued;  Total of )([0-9]*)( licenses in use\))')

#Perform the search and store matches in list
matches = re.findall(pattern, output + output2)

#Process each license metric
for match in matches:
	fqdn = socket.getfqdn()
	timestamp = str(int(time.time()))
	print fqdn + '.flex.' + match[1] + '.in_use ' + match[3] + ' ' + timestamp

sys.exit(0)









