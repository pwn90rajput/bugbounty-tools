Bugbounty-tools
This script automates the installation of essential bug bounty and ethical hacking tools on Kali Linux.
Bug Bounty Toolkit Installer
This script automates the installation of essential bug bounty and ethical hacking tools on Kali Linux. It sets up:

🔍 Recon & enumeration tools (amass, assetfinder)

🔓 Web fuzzing utilities (ffuf, dirsearch)

🕵️‍♂️ Web interceptors (Burp Suite, OWASP ZAP)

🌐 Browser extensions for privacy testing

Perfect for beginners and pros to get started quickly with a ready-to-use environment for bug bounty hunting.

Basic Commands to Get Started (Hands-On)
These commands help you begin recon, fuzzing, and subdomain enumeration using the tools installed by the script.

🔍 1. Subdomain Enumeration with Amass
bash
Copy
Edit
amass enum -d example.com -o subs.txt
Enumerates subdomains for example.com and saves them to subs.txt.

🌐 2. Subdomain Discovery with Assetfinder

assetfinder --subs-only example.com > assetfinder.txt
Fast discovery of subdomains using public data sources.

🚪 3. Directory Brute-Forcing with ffuf

ffuf -u https://example.com/FUZZ -w /usr/share/wordlists/dirb/common.txt
Fuzzes directories on the target web server.

🗂 4. Directory Enumeration with dirsearch

python3 dirsearch.py -u https://example.com -e php,html,txt
Scans for directories and files with common extensions.

🧪 5. Intercept Traffic with Burp Suite

burpsuite
Launch Burp and configure your browser to use 127.0.0.1:8080 as a proxy.

Capture and analyze web requests for vulnerabilities.

🔁 6. Start OWASP ZAP

zaproxy
An alternative to Burp for intercepting and scanning websites.

👁 7. Manual Testing Tips
Open the browser, go to the target site, and:

Try URL manipulation (e.g., /profile?id=1 → id=2)

Check HTTP headers via Burp

Look for hidden parameters in forms or JS
