Intall a shutdown button on Raspberry Pi
=======

This project shows how to install a button on the RaspBerry Pi board and configure a service to be monitoring a GPIO pin in order to perform a shutdown when the button is pressed for more than 2 seconds.
The GPIO pin to be used can be changed at line 3 of file shutdownd.sh. 

<table>
  <tr>
    <td>
      <img src="https://github.com/engpedrorafael/shutdownd/blob/master/doc/images/connectorP5.jpg"/>
    </td>
    <td>
      The button can be installed in the P5 header that is available at the Revision 2.0 PCB as shown in the picture.</br>
      This way we can solder a small button NO (normally opened) between pins P5-06 (GPIO31) and P5-08 (GND). No further components are needed since we will do the pull-up of the P5-06 pin by software.
      
      This keeps the P1 Header free to be used for other applications.
    </td>
  </tr>
</table>

Pre-requisites
--------------
This project was made for a Raspberry Pi running a debian-like distribution.
It can be tunned to be used with other distributions.

Installing the service
------------------------------------
After having cloned from github:

    $ sudo ./install.sh
    $ /etc/init.d/shutdownd start

Removing the service
------------------------------------

    $ sudo ./uninstall.sh


References
----------
* http://elinux.org/Rpi_Low-level_peripherals
