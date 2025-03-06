# import gpiozero
from gpiozero import LED
from gpiozero import Button
import time

# Using BCM GPIO3 I/O on BOARD pin 5
red_led = LED(3) # BCM GPIO3 = BOARD 5
red_button = Button(7,pull_up = True,bounce_time= None) 
while(True):
  if red_button.is_pressed:
    print("Switch is pressed")
  else:
    print("Switch is not pressed")
  # Add a small delay if needed to avoid excessive CPU usage
  time.sleep(0.1)

