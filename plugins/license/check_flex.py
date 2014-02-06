#!/usr/bin/python
# Plugin to check the FlexLM licenses.
# Requires a license file to point to the license server we are monitoring.

import re,sys,commands

#Set Variables
threshold = 0.90 #The max ratio of licenses in use to licenses issued before WARNING
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

