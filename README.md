# SMB Bruteforce

## Overview
SMB Bruteforce is a batch script that automates the process of brute-forcing SMB (Server Message Block) credentials on a target host. This script uses a wordlist to attempt multiple password combinations for a given username until it finds the correct one or exhausts the wordlist.

## Features
- Automated brute-force attack on SMB shares.
- Prompts the user to input the target host, username, and password wordlist.
- Displays a success message if the correct password is found.
- Simple and easy-to-use interface.

## Requirements
- Windows operating system.
- A wordlist text file containing potential passwords.

## Usage
1. Run the script by double-clicking the `main.bat` file.
2. Enter the target host IP address or hostname when prompted.
3. Enter the username for the SMB share.
4. Select the wordlist file containing the passwords.
5. The script will attempt to connect to the SMB share using each password in the wordlist.
6. If a correct password is found, it will be displayed in a pop-up message box.

## Disclaimer
This tool is intended for educational purposes only. Unauthorized access to systems without permission is illegal and unethical. Use this tool responsibly and only on systems you have explicit permission to test.
