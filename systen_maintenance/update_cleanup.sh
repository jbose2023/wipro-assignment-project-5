#!/bin/bash

echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "Cleaning unused packages..."
sudo apt autoremove -y
sudo apt autoclean -y

echo "System update and cleanup completed."
