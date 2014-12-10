#!/bin/bash

doping=`ping -c 1 -W 2 google.com | cut -d"=" -f 4 | sed -n 2p | tr -d " ms" | cut -d"." -f 1`

echo $doping