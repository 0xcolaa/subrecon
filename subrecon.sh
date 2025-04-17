#!/bin/bash


read -p "Enter The Domain: " domain
if [[ -z "$domain" ]]; then
    echo "[-] No domain entered. Exiting."
    exit 1
fi

mkdir -p "$domain"

echo "[+] Running Subfinder on $domain"
subfinder -d $domain -o $domain/subfinder.txt

echo "[+] Running Assetfinder..."
assetfinder --subs-only "$domain" > $domain/assetfinder.txt

echo "[+] Removing duplicate Values "
cat $domain/subfinder.txt $domain/assetfinder.txt | sort -u > $domain/finalres.txt

sed 's|^|https://|' $domain/finalres.txt > $domain/output.txt


echo "[+] Probing with httpx... "
cat $domain/output.txt | httpx  > $domain/live.txt

echo " Done. Results saved in $domain/"
