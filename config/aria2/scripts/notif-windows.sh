#!/usr/bin/env bash

cd "/mnt/e/custom-script-windows/" || exit 1
powershell.exe -ExecutionPolicy Bypass -Command 'New-BurntToastNotification -Text "aria2c", "Download selesai"'
