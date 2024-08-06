#!/bin/bash

# Extract the fan RPM from sensors output
fan_rpm=$(sensors | grep -i 'Right Side' | grep -o '[0-9]\+ RPM' | head -n 1)

# Check if fan RPM is found
if [ -n "$fan_rpm" ]; then
    echo "Fan: ${fan_rpm}"
else
    echo "Fan: N/A"
fi
