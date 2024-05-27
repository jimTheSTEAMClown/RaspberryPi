# safe_shutdown_Pi.py
# ============================================================================
# Python program to safely shut down a Raspberry Pi
# Source: Editted By STEAM Clown - www.steamclown.org
# Original Sources: https://learn.sparkfun.com/tutorials/raspberry-pi-safe-reboot-and-shutdown-button/all#:~:text=Press%20and%20hold%20GPIO17%20button,your%20finger%20off%20the%20button.
# GitHub: https://github.com/jimTheSTEAMClown/RaspberryPi
# Hacker: Jim Burnham - STEAM Clown, Engineer, Maker, Propmaster & Adrenologist 
#     # LICENSE: This code is released under the MIT License (http://opensource.org/licenses/MIT)
# Program/Design Name: safe_shutdown_Pi.py
# Description:    Python program to safely shut down a Raspberry Pi 
# Dependencies:   
# Revision: 
#  Revision 0.03 - Updated 05/27/2024 Added Instructions for shell script setup, and just cleaned up comments and flow  
#  Revision 0.02 - Updated 05/26/2024 for SVCTE Mechatronics Class
#  Revision 0.01 - Created 05/26/2024
# Additional Comments: 
# ============================================================================
# Sources: https://learn.sparkfun.com/tutorials/raspberry-pi-safe-reboot-and-shutdown-button/all#:~:text=Press%20and%20hold%20GPIO17%20button,your%20finger%20off%20the%20button.
#     
#     # -----------------------------------------------------------------------------
#     #                 Raspberry Pi Safe Shutdown Python Script
#     # -----------------------------------------------------------------------------
#     # WRITTEN BY: Ho Yun "Bobby" Chan
#     # @ SparkFun Electronics
#     # DATE: 3/31/2020
#     #
#     # Based on code from the following blog and tutorials:
#     #
#     #    Kevin Godden
#     #    https://www.ridgesolutions.ie/index.php/2013/02/22/raspberry-pi-restart-shutdown-your-pi-from-python-code/
#     #
#     #    Pete Lewis
#     #    https://learn.sparkfun.com/tutorials/raspberry-pi-stand-alone-programmer#resources-and-going-further
#     #
#     #    Shawn Hymel
#     #    https://learn.sparkfun.com/tutorials/python-programming-tutorial-getting-started-with-the-raspberry-pi/experiment-1-digital-input-and-output
#     #
#     # ==================== DESCRIPTION ====================
#     #
#     # This python script takes advantage of the Qwiic pHat v2.0's
#     # built-in general purpose button to safely reboot/shutdown you Pi:
#     #
#     #    1.) If you press the button momentarily, the Pi will shutdown.
#     #
#     # ========== TUTORIAL ==========
#     #  For more information on running this script on startup,
#     #  check out the associated tutorial to adjust your "rc.local" file:
#     #
#     #        https://learn.sparkfun.com/tutorials/raspberry-pi-safe-reboot-and-shutdown-button
#     #
#     # ========== PRODUCTS THAT USE THIS CODE ==========
#     #
#     #   Feel like supporting our work? Buy a board from SparkFun!
#     #
#     #        Qwiic pHAT v2.0
#     #        https://www.sparkfun.com/products/15945
#     #
#     #   You can also use any button but you would need to wire it up
#     #   instead of stacking the pHAT on your Pi.
#     #
#     # LICENSE: This code is released under the MIT License (http://opensource.org/licenses/MIT)
#     #
#     # Distributed as-is; no warranty is given
#     #
#     #     #     #     #     # -----------------------------------------------------------------------------

# Libraries
import time
import RPi.GPIO as GPIO

# Suppress warnings
GPIO.setwarnings(False)

# Use "GPIO" pin numbering
# Using GPIO.BOARD, because I'm not a Psychopath
# GPIO.setmode(GPIO.BCM)
GPIO.setmode(GPIO.BOARD)

# Pin definition
shutdown_pin = 37 # BOARD Header pin 37 / BCM pin 26 - This pin is not used by the VIAM Rover Fragments

# Use built-in internal pullup resistor so the pin is not floating
# if using a momentary push button without a resistor.
GPIO.setup(shutdown_pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)

# modular function to shutdown Pi
def shut_down():
    print("shutting down")
    command = "/usr/bin/sudo /sbin/shutdown -h now"
    import subprocess
    process = subprocess.Popen(command.split(), stdout=subprocess.PIPE)
    output = process.communicate()[0]
    print(output)

# Check button if we want to shutdown the Pi safely
while True:
    #short delay, otherwise this code will take up a lot of the Pi's processing power
    time.sleep(1) # Check every second

    # For troubleshooting, uncomment this line to output buton status on command line
    #print('GPIO state is = ', GPIO.input(shutdown_pin))
    if GPIO.input(shutdown_pin) == False:
        # Add Code Here To Display A 'Shutting Down' Message On An LCD Display
        print(' ---------------------------------------------- ')
        print(' Got A Shutdown Command')
        print(' ---------------------------------------------- ')
        time.sleep(1)
        print(' ---------------------------------------------- ')
        print(' Shutting Down In: 3 ')
        print(' ---------------------------------------------- ')
        time.sleep(1)
        print(' ---------------------------------------------- ')
        print(' In: 2 ')
        print(' ---------------------------------------------- ')
        time.sleep(1)
        print(' ---------------------------------------------- ')
        print(' In: 1 ')
        print(' ---------------------------------------------- ')
        time.sleep(1)
        print(' ---------------------------------------------- ')
        print(' Good Bye ')
        print(' ---------------------------------------------- ')
        time.sleep(1)
# Call any other commands you want to execute before a shutdown here:
        
# Calls the Raspberry Pi shut down Command
        shut_down() 

