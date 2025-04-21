# SubRecon 

*SubRecon* is a simple Bash script for automated subdomain enumeration and live host checking. It combines results from multiple tools, removes duplicates, and probes for live targets — all in one go.

---

## Features

- Subdomain enumeration using:
  - Subfinder
  - Assetfinder
- Merges and filters out duplicate subdomains
- Automatically prepends https:// to each subdomain
- Probes live subdomains using httpx

---

##  Requirements

Make sure you have the following tools installed before running the script:

- [Subfinder](https://github.com/projectdiscovery/subfinder)
- [Assetfinder](https://github.com/tomnomnom/assetfinder)
- [httpx](https://github.com/projectdiscovery/httpx)

## Installation

subfinder requires go1.21 to install successfully. Run the following command to install the latest version:

```bash
git clone https://github.com/0xcolaa/subrecon.git
cd subrecon
chmod +x subrecon.sh
```

## Usage

To run the script:

```bash
./subrecon.sh
```
After running the script, provide the target domain :

## Output

domain.com/
├── subfinder.txt
├── assetfinder.txt
├── finalres.txt
├── output.txt
└── live.txt


## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE.md) file for full details.



