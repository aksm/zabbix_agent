#!/bin/bash

# Requires lm-sensors package. Gets the average Celsius from core temps.
sensors | grep 'temp1' | awk -F'[+|.]' '{ total += $2 } END { print total/NR }'
