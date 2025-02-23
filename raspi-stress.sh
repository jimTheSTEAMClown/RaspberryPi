#!/usr/bin/env bash
# This resulted in 30 seconds of low CPU idling, 
# ~9.5 minutes of heavy CPU usage using stress -c 4, 
# and 5 minutes of cool down time after killing the 
# stress processes.
(sleep 30 && stress -c 4) & (sleep 600 && kill -9 $(pgrep stress))
