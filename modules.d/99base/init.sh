#!/bin/sh

# provide entropy
/usr/sbin/modprobe virtio-rng || true
exec /sbin/init
