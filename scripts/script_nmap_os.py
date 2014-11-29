#!usr/bin/env python

import nmap

nm = nmap.PortScanner()
scan = nm.scan(hosts='10.188.217.110' , arguments=' -O')

scan2 = nm['127.0.0.1']['osclass']

dico = scan2[1]

osfamily = dico['osfamily']
fabricant = dico['vendor']
osgen = dico['osgen']

print("Os " + osfamily + " " + osgen)


