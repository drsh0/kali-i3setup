#!/bin/bash
echo "starting bluetooth service"
sudo systemctl start bluetooth.service && sleep 3s  
echo "starting bluetooth manager in bg"
blueman-manager &
