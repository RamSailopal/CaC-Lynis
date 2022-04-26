#!/bin/bash
rkhunter --update --propupd -c -sk | tee /tmp/rkhunter.log
awk 'BEGIN { excode=1 } /No warnings were found while checking the system/ { excode=0 } END { exit excode }' /tmp/rkhunter.log
exit $?
