# ============================================================================
# Source: STEAM Clown - www.steamclown.org 
# GitHub: https://raw.githubusercontent.com/jimTheSTEAMClown/RaspberryPi/master/RPi_NeoPixel_Strip.py
# Hacker: Jim Burnham - STEAM Clown, Engineer, Teacher, Maker, Propmaster & Adrenologist  
# This example code is licensed under the CC BY-NC-SA 4.0, GNU GPL and EUPL
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# https://www.gnu.org/licenses/gpl-3.0.en.html
# https://eupl.eu/
# Program/Design Name:		RPi_NeoPixel_Strip.py
# Description:    This is a program to drive a set of Neopixel design with functions, 
# that can be called with external parameters that are read using a post/get feature.
# program description:
# 1) Read user input from the data read in the post/get code
# 2) Select NeoPixel function and pattern
# 3) Drive a 101 NeoPixel strip
# Dependencies:   python3
#   Inputs: <list any expected user input here>
#   Outputs: <list any expected program output here>
# Revision: 
#  Revision 0.02 - Updated 03/04/2024 added Raspberry Pi Neopixel libraries and features 
#  Revision 0.01 - Created 03/04/2024
# Additional Comments: 
# 
# ============================================================================
import board
import time
import neopixel
pixels = neopixel.NeoPixel(board.D18, 30) # strip of 20 for testing.  Planned Strip has 101 Neopixels
# ============================================================================
def setup_test():
   # This function tests the Neopixel strip
   pixels[0] = (255, 0, 0)
   pixels.fill((0, 255, 0))
   


def main():
   # This is the main function.  all your main code goes here.  
   # You can call other functions from here
   setup_test()
   
   # All done

# This is the call to the Function main().  You should always 
# have a main() and def main(): as part of all your programs
main()
