#!/bin/bash
rkhunter --update --propupd && rkhunter -c -sk || rkhunter -c -sk
