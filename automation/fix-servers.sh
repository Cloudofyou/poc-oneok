#!/bin/bash
ansible servers -a `wget -O /home/cumulus/.ssh/authorized_keys "http://192.168.200.254/authorized_keys"`
ansible storage -a `wget -O /home/cumulus/.ssh/authorized_keys "http://192.168.200.254/authorized_keys"`
ansible servers -a "sudo ip route delete default"
ansible storage -a "sudo ip route delete default"
ansible servers -a "sudo ip route add default via 10.1.212.1"
ansible storage -a "sudo ip route add default via 10.18.10.1" 
