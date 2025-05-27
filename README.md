OSinfo.sh — System Overview Script

Make the script executable:
chmod +x OSinfo.sh

Run the script:
./OSinfo.sh

Run with sudo to see process names for open ports.

Sample Output

========================
 OS Version Info
========================

NAME="Ubuntu"
VERSION="24.04.2 LTS (Noble Numbat)"

========================
 Users with bash shell
========================

root
imazu

========================
 Open Ports
========================

tcp   LISTEN 0      4096          127.0.0.53%lo::53        0.0.0.0:*
tcp   LISTEN 0      4096             127.0.0.54::53        0.0.0.0:*
tcp   LISTEN 0      4096                      *::22              *:*

NOTES
Port numbers are printed in red for clarity.
Script is designed for Ubuntu 22.04.