#!/usr/bin/python
# Plugin to track the FlexLM metrics
# Checks all license server supplied with the --hosts option by running lmstat
# with the lmutil program supplied with the --lmpath option. 
# USAGE: flex_metrics.py --hosts host1 host2 hostN --lmpath /path/to/lmutil

import re,sys,commands,argparse,tempfile,socket,time

#Commandline Parsing
parser = argparse.ArgumentParser()
parser.add_argument('--hosts', nargs='+', help="fqdn names of license servers to check")
parser.add_argument('--lmpath', nargs='?', help="path to lmutil program")
args = parser.parse_args()

#Generate License File(s)
files = []
for host in args.hosts:
    t = tempfile.NamedTemporaryFile()
    data = "SERVER " + host + " 27000\nUSE_SERVER"
    t.write(data)
    t.flush()
    files.append(t)

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

#Run lmstat (with lmutil) on each of the license files
output = ''
for licfile in files:
    output = output + commands.getoutput(lmutil + " lmstat -a -c " + licfile.name)

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









