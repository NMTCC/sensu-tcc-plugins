#!/usr/bin/python
# Plugin to track the FlexLM metrics
# Requires a license file to point to the license server we are monitoring.

import re,sys,commands,socket,time

#Set Variables
file_path = '/usr/local/matlab-2013a/etc/glnxa64/matlab.lic' #path to license file pointing to server

#Run lmstat
(status, output) = commands.getstatusoutput('/usr/local/matlab-2013a/etc/glnxa64/lmutil lmstat -a -c ' + file_path)

#Create Pattern were looking for
#Regex Groups 
#Group 1: Name
#Group 3: # Licenses Issued
#Group 5: # Licenses in use
pattern = re.compile('(Users of )([^:]*)(:  \(Total of )([0-9]*)( licenses issued;  Total of )([0-9]*)( licenses in use\))')

#Perform the search and store matches in list
matches = re.findall(pattern, output)

#Process each license metric
for match in matches:
	fqdn = socket.getfqdn()
	timestamp = str(int(time.time()))
	print fqdn + '.flex.' + match[1] + '.in_use ' + match[3] + ' ' + timestamp

sys.exit(0)









