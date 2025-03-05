# import gpiozero
from gpiozero import LED
import time

# Using BCM GPIO3 I/O on BOARD pin 5
red_led = LED(3) # BCM GPIO3 = BOARD 5

while(True):
  print("LED on")
  red_led.on()
  time.sleep(1)
  print("LED off")
  red_led.off()
  time.sleep(1)
print('Done')
