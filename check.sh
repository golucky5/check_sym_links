#!/bin/bash
echo "checking splunk directories"
find /var/log/splunk/ -printf "%f\n" |sort > foo
echo "checking datacom directories"
find /var/log/datacom/ -name *.log -printf "%f\n" |sort > bar
echo "launching vimfiff"
vimdiff /home/lunax/foo /home/lunax/bar
