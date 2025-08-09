if [ -z "$1" ]; then
  echo "Usage: $0 <target>"
  exit 1
fi

TARGET=$1
OUTDIR="recon_$TARGET"
mkdir -p $OUTDIR

echo "[*] Starting recon on $TARGET"
echo ""

echo "[*] Running Nmap Scan..."
nmap -sC -sV $TARGET -oN $OUTDIR/nmap.txt

echo "[*] Running Whois Lookup..."
whois $TARGET > $OUTDIR/whois.txt

echo "[*] Running Dig DNS Info..."
dig $TARGET any +noall +answer > $OUTDIR/dig.txt

echo "[*] Running WhatWeb..."
whatweb $TARGET > $OUTDIR/whatweb.txt

echo "[*] Recon Complete. Results saved in $OUTDIR/"
