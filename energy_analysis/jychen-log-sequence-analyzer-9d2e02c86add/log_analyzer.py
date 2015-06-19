#!/usr/bin/env python
# -*- coding: utf-8 -*-
##-----------------------------------------------------------------------------
## usage: ./log_analyzer.py <input_log> <input_dict>
## If the dict does not exist, <input_dict> will be the dict file 
##-----------------------------------------------------------------------------

import sys
import os
import hashlib
import math

## input parameters: 1) targeted log, 2) action dict of the app
if len(sys.argv) < 3:
    print 'Usage: ./log_analyzer.py <input_log> <input_dict>'
    exit(1)

input_log = sys.argv[1]
input_dict = sys.argv[2]
print 'Input log: ' + input_log
print 'Dict: ' + input_dict 

## analyzing and transforming log file into mining data file
action_dict = {}
action_id = {}
action_time = {}

action_stack = []
action_time_stack = []
action_check_stack = []

idle_action_stack = []
idle_action_time_stack = []
idle_action_check_stack = []

last_acquire = 0
last_release = 0
last_action_time = 0

line_count = 0
line_count_at_last_acquire = 0
line_count_at_last_release = 0

## read the dict file of the targeted app
if os.path.exists(input_dict):
    print 'Dict: ' + input_dict + ' found'
    dict_file = open(input_dict, 'r')
    for dict_line in dict_file:
        ## dict_line: action_id, action_hash, action_string
        dict_action = dict_line.strip().split(' ')
        action_dict[dict_action[1]] = dict_action[2]
        ## action_id has to be set to the integer type for max() to operate correctly
        action_id[dict_action[1]] = int(dict_action[0])
    dict_file.close()
    ## check if the dict file is empty
    if(len(action_id) > 0):
        base_id = max(action_id.itervalues())
    else:
        base_id = 0
        print 'Warning: dict file is empty'

    print 'Base actin id: ' + str(base_id)
else:
    base_id = 0
    print 'Base action id: ' + str(base_id)


in_file = open(input_log, 'r')
out_file = open(input_log+'.hash', 'w')

## chronological action log with begin and end timestamp
out_action = open(input_log+'.action', 'w')
idle_out_action = open(input_log+'_idle.action', 'w')

## out_log is based on the input_log and is used to generate the behavior hash
## in other words, the ignored log statements in input_log are removed in out_log 
out_log = open(input_log+'.new', 'w')
idle_out_log = open(input_log+'_idle.new', 'w')


## check if *_user.log.ill exists, if postive, we need it to label ill actions
## to simplify the case, each log is limited to have one ill session only
## *_user.log.ill only contains two lines, which indicate the session begin and the end respectively
in_ill = None
if(os.path.exists(input_log+'.ill')):
    in_ill = open(input_log+'.ill', 'r')
    ill_start = in_ill.readline().strip()
    ill_end = in_ill.readline().strip()

time_id = 0
#last_timestamp = 0
local_id = 0
action_cntr = 0

pvact_end = 0

for line in in_file:
    ## cloumn: time, enter/exit, page (activity), method, parameter (if any) 
    actions = [x.strip() for x in line.strip().split(' ')]

    ## method monitored from APIMonitor
    if len(actions) < 2:
        #print actions
        continue
    else:
        line_count += 1
        action_len_check = len(actions)
        ## parameter in string type could be separated into several sections
        if action_len_check > 5:
            actions[4] = '_'.join(actions[4:])
            for i in range(5, action_len_check):
                actions.pop(5)

        ## enter the method
        if actions[1] == '+':
            entry_stmt = '+' + '->'.join(actions[2:])
            ## remove object id (after @)
            entry_stmt = entry_stmt.split('@')[0]
            entry_time = actions[0]
            action_stack.append(entry_stmt)
            action_check_stack.append(entry_stmt)
            action_time_stack.append(entry_time)
            action_cntr = action_cntr + 1
            out_log.write(actions[0] + ' ' + entry_stmt + '\n')
        ## leave the method
        elif actions[1] == '-':
            exit_stmt = '->'.join(actions[2:])
            ## check if the exit statement happens to appear at the beginning of log
            if(len(action_check_stack) == 0):
                print 'Warning: ignore unmatched exit statement at the beginning of log'
                print 'Stmt: ' + actions[0] + ' - ' + exit_stmt
                continue

            ## check if the last element in the stack is the corresponding entry
            entry_stmt = action_check_stack.pop().split('->')
            if '->'.join(entry_stmt[0:2]) != ('+'+exit_stmt):
                print 'Error: method exit cannot find the corresponding entry'
                exit(1)
                
            exit_stmt = '-' + exit_stmt
            exit_time = actions[0]

            if (pvact_end == 0):
		        pvact_end = exit_time

            out_log.write(actions[0] + ' ' + exit_stmt + '\n')
            last_action_time = actions[0]

            action_cntr = action_cntr - 1
            ## method exit does not match with the first entry
            if action_cntr > 0:
                action_stack.append(exit_stmt)
                action_time_stack.append(exit_time)
                continue
          
            ## method exit matches with the first entry
            actions_stmt = ''.join(action_stack)+exit_stmt
            actions_time = ' '.join(action_time_stack)+' '+exit_time
            actions_start = action_time_stack[0]

            actions_dur = (int(actions_start) - int(pvact_end))/1000

            action_stack = []
            action_time_stack = []
            #print actions_stmt

            ## for each actions_stmt, we hash the whole string with sha256 algo 
            ## and build a dictionary for each app
            actions_hash = hashlib.sha256(actions_stmt).hexdigest() 
            if actions_hash not in action_dict:
                local_id = local_id + 1
                action_dict[actions_hash] = actions_stmt
                action_id[actions_hash] = base_id + local_id
         
            ## add a label for each action: N for normal, I for ill
            ## check each timestamp to see if it is between the ill session
            if (in_ill is not None) and \
               (int(actions_start)>=int(ill_start)) and (int(actions_start)<=int(ill_end)):
                out_action.write(str(action_id[actions_hash])+' '+actions_hash+' I '+actions_time+'\n')
            else: 
                out_action.write(str(action_id[actions_hash])+' '+actions_hash+' N '+actions_time+'\n')


            ## Originally the difference between timestamps of actions varies from 0ms 
            ## to several milliseconds or even longer, and it could also hurt the efficiency 
            ## of the sequence mining algorithm because the max time difference of two 
            ## consecutive actions and a sequence might be easily over hundreds or thousands 
            ## of milliseconds. To reduce the overhead, we define "consecutive actions" 
            ## in the sequence mining as those actions with timestamp difference smaller than 
            ## 1000ms, and the "distance" between consecutive actions will be 1. The distance 
            ## increases by 1 when the timestamp difference is over 1000ms. 

            ## update: 20130324
            ## To avoid "duplicate" sequences caused by different timestamp differences, e.g.
            ## {t=0:33, t=2:26 } and {t=0:33, t=4:26 }, we use the simple timestamp counting 
            ## for each action. In other words, timestamp difference is set to 1 by default.
            ## By doing this, the mining performance also improved dramatically because now
            ## we needn't consider the variation of distance.

            #diff_timestamp = 0
            #action_enter_timestamp = int(actions_start)
            #if last_timestamp > 0:
            #    diff_timestamp = action_enter_timestamp - last_timestamp
            #time_id = time_id + math.ceil(float(diff_timestamp)/1000)
            #print '%d %d %d' % (time_id, action_enter_timestamp, diff_timestamp)
            #out_file.write('<%d> %s -1 ' % (time_id, action_id[actions_hash]))
            #out_file.write('<%s> %s -1 ' % (time_id, action_id[actions_hash]))
            #out_file.write('<%d> %s -1 ' % (action_enter_timestamp, action_id[actions_hash]))
            #last_timestamp = action_enter_timestamp
            #time_id = time_id + 1

            if (actions_dur > 3):
                out_file.write(' \n')
            #out_file.write('<%s:%s> %s ' % (time_id, actions_dur, action_id[actions_hash]))
	        #out_file.write('<%s> %s ' % (actions_dur, action_id[actions_hash]))
            out_file.write('%s ' % (action_id[actions_hash]))
            #out_file.write('<%d> %s -1 ' % (action_enter_timestamp, action_id[actions_hash]))
            #last_timestamp = action_enter_timestamp
            time_id = time_id + 1
            if (pvact_end != 0):
		        pvact_end = exit_time
        ## non-method cases
        elif actions[1] == '>':
            idle_entry_stmt = '>acquire'
            ## remove object id (after @)
            #idle_entry_stmt = idle_entry_stmt.split('@')[0]
            idle_entry_time = actions[0]
            idle_action_stack.append(idle_entry_stmt)
            idle_action_check_stack.append(idle_entry_stmt)
            idle_action_time_stack.append(idle_entry_time)

            # If last wakelock action is not acquire, mark this as first acquire
            print 'Acquire, last on stack: ' + str(idle_action_stack[-2])
            #print '(len(idle_action_stack) == 0)) ' + str(len(idle_action_stack))
            if ((idle_action_stack[-2] != idle_entry_stmt) or (last_acquire == 0)):
                last_acquire = idle_entry_time
                line_count_at_last_acquire = line_count
            

            #action_cntr = action_cntr + 1
            idle_out_log.write(actions[0] + ' ' + idle_entry_stmt + '\n')
        elif actions[1] == '<':
            idle_exit_stmt = '<release'
            idle_exit_time = actions[0]
            idle_action_stack.append(idle_exit_stmt)
            idle_action_check_stack.append(idle_exit_stmt)
            idle_action_time_stack.append(idle_exit_time)

            # If last wakelock action is not release, mark this as first release

            if (len(idle_action_stack) > 1):
                print 'Release, last on stack: ' + str(idle_action_stack[-2])
                if (idle_action_stack[-2] != idle_exit_stmt):
                    last_release = idle_exit_time
                    line_count_at_last_release = line_count

            ## check if release statements happen before an acquire
            if(not('>acquire' in idle_action_stack)):
                print 'Warning: ignore unmatched wakelock statement(s) at the beginning of log'
                print 'Stmt: ' + actions[0] + ' - ' + idle_exit_stmt
                continue
            ## check if we have a duplicate release statement
            elif (idle_action_stack[-2] == idle_entry_stmt):
                # We have had a release, and previously had an acquire
                idle_out_action.write(str(last_acquire) +'\n')
                idle_out_action.write(str(last_release) +'\n')
                #out_action.write(str(action_id[actions_hash])+' '+last_acquire+last_release+'\n')
                    
print 'last_acquire: ' + str(last_acquire) + ' last_release ' + str(last_release)
print '(last_acquire > last_release): ' + str(int(last_acquire) > int(last_release))
if (int(last_acquire) > int(last_release)):
    idle_out_action.write(str(last_acquire) +'\n')
    idle_out_action.write(str(last_action_time) +'\n')

out_file.write('\n')
in_file.close()
out_log.close()
out_action.close()
out_file.close()
idle_out_action.close()
idle_out_log.close()

print '%d new actions added\n' % local_id

out_file = open(input_dict, 'w')
#out_file_local = open(input_log+'.dict', 'w')
for k, v in action_dict.iteritems():
    out_file.write(str(action_id[k])+' '+k+' '+v+'\n')
    #out_file_local.write(str(action_id[k])+' '+k+' '+v+'\n')
#out_file_local.close()
out_file.close()
