#!/usr/bin/python
# Plugin to check the FlexLM licenses.
# Requires a license file to point to the license server we are monitoring.

import re,sys,commands

#Set Variables
threshold = 0.90 #The max ratio of licenses in use to licenses issued before WARNING
matlab_file = '/usr/local/matlab-2013a/etc/glnxa64/matlab.lic' #path to license file pointing to server
maple_file = '/usr/local/matlab-2013a/etc/glnxa64/maple.lic' #path to maple license file

#Run lmstat
(status, output) = commands.getstatusoutput('/usr/local/matlab-2013a/etc/glnxa64/lmutil lmstat -a -c ' + matlab_file)
(status2, output2) = commands.getstatusoutput('/usr/local/matlab-2013a/etc/glnxa64/lmutil lmstat -a -c ' + maple_file)

#Create Pattern were looking for
#Regex Groups 
#Group 1: Name
#Group 3: # Licenses Issued
#Group 5: # Licenses in use
pattern = re.compile('(Users of )([^:]*)(:  \(Total of )([0-9]*)( licenses issued;  Total of )([0-9]*)( licenses in use\))')

#Perform the search on both output arrays (one from each command) and store matches in list
matches = re.findall(pattern, output + output2)

#Parse each individual match for errors
for match in matches:
    ratio = float(match[5]) / float(match[3])
    if ratio == 1:
        print "All " + match[1] + " licenses checked out"
        sys.exit(2)
    if ratio > threshold:
        print match[1] + " licenses are in high use"
        sys.exit(1)


print "Licenses are A-OK"
sys.exit(0)

