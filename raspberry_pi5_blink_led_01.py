#
# import gpiozero
from gpiozero import LED
import time

blink_led = LED(3) # BCM GPIO3 = BOARD 5

while(True):
  print("LED on")
  blink_led.on()
  time.sleep(1)
  print("LED off")
  blink_led.off()
  time.sleep(1)
print('Done')
