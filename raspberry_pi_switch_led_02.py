#
import RPi.GPIO as GPIO
import time

blink_led = 5
pb_switch = 40

GPIO.setmode(GPIO.BOARD) # Note:physical pins 
GPIO.setup(blink_led,GPIO.OUT)
GPIO.setup(pb_switch,GPIO.IN)

pb_switch_state = 0
while(True):
    pb_switch_state = GPIO.input(pb_switch)
    print(pb_switch_state)
    GPIO.output(blink_led,pb_switch_state)
print('Done')
