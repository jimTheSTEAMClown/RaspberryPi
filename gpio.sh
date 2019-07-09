#!/bin/bash
gpio -g mode 10 out
gpio -g mode 18 pwm
gpio -g mode 5 out
gpio -g mode 6 out
gpio -g mode 13 out
gpio -g mode 19 out
gpio readall

