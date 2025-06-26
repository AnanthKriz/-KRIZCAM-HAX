#!/bin/bash
# KRIZCAM-HAX by AnanthKriz & Nicole
clear
cat banner.txt
echo "Starting KRIZCAM-HAX..."
bash install.sh
echo "[*] Select Port Forwarding Option:"
echo "1) Ngrok"
echo "2) Serveo"
read -p "Choice: " choice
if [[ $choice == "1" ]]; then
    echo "[*] Launching with Ngrok..."
    # Placeholder for Ngrok logic
elif [[ $choice == "2" ]]; then
    echo "[*] Launching with Serveo..."
    # Placeholder for Serveo logic
else
    echo "[!] Invalid option"
fi
