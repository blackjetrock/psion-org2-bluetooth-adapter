# psion-org2-bluetooth-adapter
Bluetooth adapter for Psion Organiser II

NOTE:Very much a prototype that needs modifications to run properly.

An adapter for the Psion Organiser II which has the Comms Link ROM in a Pico. hardware for bluetooth is a WROOM module.
The unit plugs in to the top slot of a PSion Organiser II and allows Bluetooth traffic to be passed on to the organiser.
The original comms link code runs on the Pico as it emulates a datapack ROM.

V1.0
----

Prototype PCB that is not designed to fit in a case.
Power from 1 cell Li-ion. Regulator should take input from jack and drop it to 5V. Battery charger/power path outputs 5.5V down to battery voltage. 
Pico takes output from regulator (5.5V to VBAT) and buck boosts to 3V3. 3V3 output from Pico drives external circuitry up to 300mA.
If running WROOM off 3V3 is too much then use 3V3 regulator off VREG.


V1.1
----

Movd charging circuit to the ETA6002 as soldering the BQxxx was tricky. This circuit doesn't really work as the datasheet has little data so I'm not sure about a lot of aspects of this chip. The code has had to be rewritten to not use interrupts. Instead of using one of the hardware UARTs and a PIO UART the code now uses two UARTS made fom PIOs. This doesn't use interrupts and works a lot better.
Master mode works on th elatest code and I have had two organisers communicating, on ein master mode and pone in slave using the TERM menu. Seems OK. The TRANSMIT menu option messes something up though, although it looks like the data is sent.
Turn off handshaking in the SETUP menu.
9600,n,8,1 is the Psion setting that is needed.
