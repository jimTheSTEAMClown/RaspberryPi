#
import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(18,GPIO.OUT)

for i in range(20)
  print "LED on"
  GPIO.output(18,GPIO.HIGH)
  time.sleep(1)
  print "LED off"
  GPIO.output(18,GPIO.LOW)
  time.sleep(1)
print('Done')

