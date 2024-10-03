#!/usr/bin/bash


# Check arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <IP range> <port> <IP range output>"
    echo ""
    exit 1
fi

ip_range="$1"
port="$2"
ip_range_output="$3"


echo "Generating IP range file"
make-list "$ip_range" > "$ip_range_output"

echo "Generated IP range file and saved it under $3\n"

echo "Scanning for port $port in the generated range..."
nmap -p "$port" -iL "$ip_range_output" -v | tee nmap-output.txt
