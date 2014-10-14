#!/bin/bash

GPIO=31

# Configure GPIOx for input with a pull-up
echo "$GPIO" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio$GPIO/direction
echo "high" > /sys/class/gpio/gpio$GPIO/direction
 
# wait for button to be pressed during about 2 seconds (1-3 seconds)
while [[ 1 ]]
do
    if [[ $(cat /sys/class/gpio/gpio$GPIO/value) -eq 0 ]]; then
        #Prevent accidental touch to the button
        sleep 1
	if [[ $(cat /sys/class/gpio/gpio$GPIO/value) -eq 0 ]]; then
            logger -s "Shutting Down!"
            echo "$GPIO" > /sys/class/gpio/unexport

            halt &
            exit 0
        fi
    fi
    sleep 2
done

#Release the GPIO
echo "$GPIO" > /sys/class/gpio/unexport
exit 0

