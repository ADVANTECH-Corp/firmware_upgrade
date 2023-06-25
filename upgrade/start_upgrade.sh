#!/bin/bash
firmware_upgrade="balena run --rm -it --privileged --network host -w /app \
-v /run/dbus:/host/run/dbus -v /sys:/sys -v /dev:/dev -v /proc:/proc -v /mnt/data:/mnt/data \
-e DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket \
firmware_upgrade"

$firmware_upgrade

