#!/bin/bash

echo "[+] Updating package lists..."
sudo apt update

echo "[+] Installing Burp Suite..."
sudo apt install -y burpsuite

echo "[+] Installing OWASP ZAP..."
sudo apt install -y zaproxy

echo "[+] Installing ffuf..."
sudo apt install -y ffuf

echo "[+] Installing dirsearch..."
sudo apt install -y dirsearch

echo "[+] Installing Amass..."
sudo apt install -y amass

echo "[+] Installing Go (for Assetfinder)..."
sudo apt install -y golang

echo "[+] Setting up Go environment..."
export PATH=$PATH:$(go env GOPATH)/bin
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.bashrc

echo "[+] Installing Assetfinder..."
go install github.com/tomnomnom/assetfinder@latest

echo "[+] All tools installed!"

echo "[*] Next Steps:"
echo "1. Launch Burp Suite: run 'burpsuite'"
echo "2. Launch OWASP ZAP: run 'zaproxy'"
echo "3. Use 'ffuf' and 'dirsearch' for directory brute-forcing"
echo "4. Use 'amass' or 'assetfinder' for subdomain discovery"
echo "5. Open Firefox and manually install extensions:"
echo "   - NoScript: https://addons.mozilla.org/firefox/addon/noscript/"
echo "   - User-Agent Switcher: https://addons.mozilla.org/firefox/addon/uaswitcher/"
