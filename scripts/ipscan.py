
import os
import re
from connection import execute

os.system("bash scanip.sh")

fichier = open("ip.txt","r")
lignes = fichier.readlines()       


for ligne in lignes:
    execute("INSERT INTO confip (ip) VALUES ('"+ligne+"');")

