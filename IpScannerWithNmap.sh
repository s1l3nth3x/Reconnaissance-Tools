#!/bin/bash

for i in {1..255}

do
	sudo nmap -s 192.168.1.$i 192.168.1.6 -p 80 -pn -e eth0
done












#				help
#$i ==> variabel for edit ip
#192.168.1.6 ==> Target	ip
#-p ==> selected Port
#-e ==> Selected networkInterFase
