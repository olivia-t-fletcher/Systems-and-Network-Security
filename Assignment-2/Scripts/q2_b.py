# Set the destination MAC address in the ether & arp to the ARP broadcast address (ff:ff:ff:ff:ff)
#!/usr/bin/python3

from scapy.all import *

E = Ether(dst = 'ff:ff:ff:ff:ff:ff', src = '08:00:27:55:5d:82')
A = ARP(hwsrc = '08:00:27:55:5d:82', psrc = '10.0.2.6', 
	   hwdst = 'ff:ff:ff:ff:ff:ff', pdst = '10.0.2.6')

pkt = E/A
pkt.show()
sendp(pkt)