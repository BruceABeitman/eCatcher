#!/usr/bin/env python
# -*- coding: utf-8 -*-
##-----------------------------------------------------------------------------
## usage: ./app_util.py <input_log> <targeted_package_name>
##-----------------------------------------------------------------------------

import os
import sys

## input parameters: 1) targeted log, 2) targeted package name
if len(sys.argv) < 3:
    print 'Usage: ./app_util.py <input_util_log> <package_name>'
    exit(1)

input_log = sys.argv[1]
package_name = sys.argv[2]
print 'Input util log: ' + input_log
print 'Package: ' + package_name 

if not os.path.exists(input_log):
    print 'Error: ' + input_log + ' not found'
    exit(1)
elif not os.path.exists(input_log+'.assoc'):
    print 'Error: ' + input_log+'.assoc' + ' not found'
    exit(1)

## get the app uid via package name
in_file = open(input_log+'.assoc', 'r')
uid = 0
for line in in_file:
    records = line.strip().split(' ')
    if records[1] == package_name:
        uid = records[0]
        print 'Uid: ' + uid
in_file.close()
if uid == 0:
    print 'Error: targeted package ' + package_name + ' not found'
    exit(1)

## generate targeted app utility log
## record_dict: { up_time, cpu_freq, app_cpu_time, total_cpu_time, 
##                use_display, wifi_rx, wifi_tx }
record_dict = {}

in_file = open(input_log, 'r')
out_file = open(input_log+'.util', 'w')
print 'Output file: ' + input_log + '.util'
out_file.write('up_time cpu_freq cpu_app cpu_idle cpu_total ' + 
               'display_use display_on brightness wifi_on wifi_rx wifi_tx\n')
for line in in_file:
    records = [x.strip() for x in line.split(',')]
    if len(records) < 2:
        continue
    
    if len(record_dict) == 0:
        ## begin of record
        if records[0] == 'begin':
            record_dict['up_time'] = records[1]
            #print '\nbegin: ' + records[1]
    elif len(record_dict) > 0:
        if records[0] == 'display': 
            record_dict['display_on'] = records[2]
            record_dict['brightness'] = records[3]
            if records[1] == uid:
                record_dict['display_use'] = 1
            else:
                record_dict['display_use'] = 0
        elif records[0] == 'cpu_freq':
            record_dict['cpu_freq'] = records[1]
            #print 'cpu_freq: ' + records[1]
        elif records[0] == 'cpu_total':
            records[1:5] = [int(x) for x in records[1:5]]
            #print records[1:5]
            record_dict['cpu_idle'] = records[4]
            record_dict['cpu_total'] = sum(records[1:5]) ## index 1 to 4
            #print 'cpu_total: ' + str(record_dict['cpu_total'])
        elif records[0] == 'cpu':
            ## we use uid to identify the app instead of pid 
            ## an uid could have multiple processes
            if records[1] == uid:
                records[3:5] = [int(x) for x in records[3:5]]
                #print records[3:5]
                if not 'cpu_app' in record_dict:
                    record_dict['cpu_app'] = sum(records[3:5])  ## index 3, 4
                else:
                    record_dict['cpu_app'] += sum(records[3:5])  ## index 3, 4
                #print 'cpu_app: ' + str(record_dict['cpu_app'])
        elif records[0] == 'network_total':
            ## we don't need network_total for app utility, but here
            ## we need to check if the targeted app was running 
            if not 'cpu_app' in record_dict:
                ## the targeted app was not running at this moment
                record_dict.clear()
                print 'Warning: targeted app is not running'
                continue

            ## get the network device status (on/off)
            record_dict['wifi_on'] = records[2]
        elif records[0] == 'network':
            if records[1] == uid:
                records[2:4] = [int(x) for x in records[2:4]]
                if records[2] >= 0:
                    record_dict['wifi_rx'] = records[2]
                else:
                    record_dict['wifi_rx'] = 0
                
                if records[3] >= 0:
                    record_dict['wifi_tx'] = records[3]
                else:
                    record_dict['wifi_tx'] = 0
                #print 'wifi: ' + str(record_dict['wifi_rx']) + ' ' + str(record_dict['wifi_tx'])
        elif records[0] == 'mobile_total':
            ## we don't need mobile_total for app utility, but here
            ## we use this to mark the end of record
            out_file.write(record_dict['up_time'] + ' ' + 
                           record_dict['cpu_freq'] + ' ' + 
                           str(record_dict['cpu_app']) + ' ' + 
                           str(record_dict['cpu_idle']) + ' ' + 
                           str(record_dict['cpu_total']) + ' ' + 
                           str(record_dict['display_use']) + ' ' + 
                           str(record_dict['display_on']) + ' ' + 
                           str(record_dict['brightness']) + ' ' + 
                           record_dict['wifi_on'] + ' ' + 
                           #str(record_dict['wifi_rx']) + ' ' + 
                           str(0) + ' ' +
                           #str(record_dict['wifi_tx']) + '\n')
                           str(0) + '\n')
            record_dict.clear()
            #print 'end'
        else: 
            print 'Error: ' + str(records)

in_file.close()
out_file.close()

