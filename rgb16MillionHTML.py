import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)

# GND is on 20
RED = 16
GREEN = 18
BLUE = 22

GPIO.setup(RED,GPIO.OUT)
GPIO.output(RED,0)
GPIO.setup(GREEN,GPIO.OUT)
GPIO.output(GREEN,0)
GPIO.setup(BLUE,GPIO.OUT)
GPIO.output(BLUE,0)

red_pwm = GPIO.PWM(RED,1000)		#create PWM instance with frequency
red_pwm.start(0)				#start PWM of required Duty Cycle
green_pwm = GPIO.PWM(GREEN,1000)		#create PWM instance with frequency
green_pwm.start(0)				#start PWM of required Duty Cycle
blue_pwm = GPIO.PWM(BLUE,1000)		#create PWM instance with frequency
blue_pwm.start(0)				#start PWM of required Duty Cycle 

try:
    while True :
      user_hex = input("Give me a color Hex code > ")
      print(user_hex)
      if user_hex[0] == "#" :
        user_red = int(user_hex[1:3],16)
        print(user_red)
        user_green = int(user_hex[3:5],16)
        print(user_green)
        user_blue = int(user_hex[5:7],16)
        print(user_blue)
        normal_red = user_red * (100/255)
        normal_green = user_green * (100/255)
        normal_blue = user_blue * (100/255)
        print(normal_red)
        print(normal_green)
        print(normal_blue)
        red_pwm.ChangeDutyCycle(normal_red) #provide duty cycle in the range 0-100
        green_pwm.ChangeDutyCycle(normal_green) #provide duty cycle in the range 0-100
        blue_pwm.ChangeDutyCycle(normal_blue) #provide duty cycle in the range 0-100
        sleep(1)
except KeyboardInterrupt:
    GPIO.cleanup()
