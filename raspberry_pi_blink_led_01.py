#
import RPi.GPIO as GPIO
import time

blink_led = 5
GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)
GPIO.setup(blink_led,GPIO.OUT)

while(true):
  print("LED on")
  GPIO.output(blink_led,GPIO.HIGH)
  time.sleep(1)
  print("LED off")
  GPIO.output(blink_led,GPIO.LOW)
  time.sleep(1)
print('Done')

