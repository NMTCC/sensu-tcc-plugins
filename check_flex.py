#!/usr/bin/python
import re,sys,commands

#Set Variables
threshold = 0.90 #The max ratio of licenses in use to licenses issued before WARNING

#Run lmstat
(status, output) = commands.getstatusoutput('/system/flexlm/lmstat -a')

#Create Pattern were looking for
#Regex Groups 
#Group 1: Name
#Group 3: Licenses Issued
#Group 5: Licenses in use
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
