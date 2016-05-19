#!/bin/bash
sudo netctl stop-all
sudo ip link set wlp2s0 down
sudo netctl start wlp2s0-FRITZbox
