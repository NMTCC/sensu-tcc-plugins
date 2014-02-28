#!/usr/bin/python
# Plugin to track the FlexLM metrics
# Checks all license server supplied with the --hosts option by running lmstat
# with the lmutil program supplied with the --lmpath option. 
# USAGE: flex_metrics.py --hosts host1 host2 hostN --lmpath /path/to/lmutil

import re,sys,commands,argparse,tempfile,time

#Commandline Parsing
parser = argparse.ArgumentParser()
parser.add_argument('--hosts', nargs='+', help="fqdn names of license servers to check")
parser.add_argument('--lmpath', nargs='?', help="path to lmutil program")
args = parser.parse_args()

#Change Path to lmutil program
if args.lmpath:
    lmutil = args.lmpath
else:
    lmutil = '/usr/local/matlab-2013a/etc/glnxa64/lmutil'
#Make sure path correctly points to a valid lmutil
(statuscheck, output) = commands.getstatusoutput(lmutil)
if statuscheck != 0:
    print "Please enter a valid path to lmutil"
    sys.exit(1)

#Create Pattern were looking for
#Regex Groups 
#Group 1: Name
#Group 3: # Licenses Issued
#Group 5: # Licenses in use
pattern = re.compile('(Users of )([^:]*)(:  \(Total of )([0-9]*)( licenses issued;  Total of )([0-9]*)( licenses in use\))')

#Check all the hosts
if args.hosts:
    for host in args.hosts:
        #Generate License File
        t = tempfile.NamedTemporaryFile()
        data = "SERVER " + host + " 27000\nUSE_SERVER"
        t.write(data)
        t.flush()

        #Run lmstat (with lmutil) on each of the license files
        output = commands.getoutput(lmutil + " lmstat -a -c " + t.name)

        #Perform the search and store matches in list
        matches = re.findall(pattern, output)

        #Process each license metric
        for match in matches:
            timestamp = str(int(time.time()))
            print host + '.flex.' + match[1] + '.in_use ' + match[5] + ' ' + timestamp
else:
    print "Please specify hosts to check with the --hosts option"
    sys.exit(2)

sys.exit(0)


