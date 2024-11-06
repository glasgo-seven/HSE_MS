#!/bin/bash

line=$(ip addr show eth0 | head -n3 | tail -n1)
elements=($line)
ip=${elements[1]}

echo ${ip::-3}