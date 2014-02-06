#!/bin/bash

# an uptime metric

echo "$(hostname).uptime $(uptime -s)"
