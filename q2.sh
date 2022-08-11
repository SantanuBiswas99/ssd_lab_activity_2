#!/bin/bash


cat /etc/shells | awk '/^\/usr/ {print $0}' | awk -F '/' '{print $NF}';
