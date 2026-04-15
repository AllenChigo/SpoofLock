sudo -i bash <(curl -SLk https://github.com/MercuryWorkshop/fakemurk/releases/latest/download/fakemurk.sh) 

In case that one doesn't work. which It Should Work, Try This One.

#!/bin/bash
# Chromebook Enrollment Status Checker
# Educational purposes only

echo "Checking Chromebook enrollment status..."

# Check enrollment status
crossystem dev_boot_usb=1
crossystem dev_boot_legacy=1

# Check for enterprise enrollment
if [ -d "/var/lib/devicesettings" ]; then
    echo "Device appears to be enrolled"
    ls -la /var/lib/devicesettings/
else
    echo "No enrollment directory found"
fi

# Display device information
crossystem
