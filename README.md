# Bash Recon Script

A simple Bash script that automates basic recon tasks on a target domain or IP.  
Combines `nmap`, `whois`, `dig`, and `whatweb` into a single command for quick info gathering.

---

## Features  
- Runs an `nmap` scan with default scripts and version detection  
- Performs Whois lookup on the target  
- Fetches DNS records using `dig`  
- Fingerprints web technologies with `whatweb`  
- Organizes all output in a neat folder per target  

---

## Requirements  
- Linux/macOS system with Bash shell  
- Installed tools: `nmap`, `whois`, `dig`, `whatweb`  

---

## Usage  

```bash
chmod +x recon.sh
./recon.sh example.com
