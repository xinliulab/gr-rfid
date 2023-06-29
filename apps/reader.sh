#!/bin/bash

# Adjusting MTU (Maximum Transmission Unit) for the network interface.
# Replace '9000' with your desired MTU value.
# sudo ifconfig enp5s0 mtu 12000

# Adjusting the maximum size of the UDP send buffer space
# sudo sysctl -w net.core.wmem_max=2453333

# sudo ifconfig enp5s0 mtu 8000

cd ../build

cmake ../

make

sudo make install

sudo ldconfig

cd ../apps

# Running reader.py
GR_SCHEDULER=STS nice -n -20 python3 ./reader.py