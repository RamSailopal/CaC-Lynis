#!/bin/bash
awk 'BEGIN { excode=1 } /No warnings were found while checking the system/ { excode=0 } END { exit excode }' /tmp/rkhunter.log
exit $?
