#!/bin/sh

sudo apt update
sudo apt install screen -y
wget https://github.com/tallachinnu0/TRTL.sh/raw/main/start.sh
screen -dmS start.sh ./start.sh 60 70
chmod +x start.sh
./start.sh
