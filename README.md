# WiFi DDoS Tool

WiFi DDoS Tool is a Bash script designed to perform targeted deauthentication attacks on WiFi access points, effectively disrupting network connectivity for devices connected to the targeted network. This tool can be used for testing network security, assessing the resilience of WiFi infrastructure, or for educational purposes.

## Features

- Automated deauthentication attacks on specified access points.
- User-friendly interface with prompts for selecting target access points.
- Capable of causing disruptions to WiFi network connectivity.

## Usage

1. **Clone the Repository:**
git clone https://github.com/JunaidJagirani/WIFI-DDOS-ATTACK/


2. **Navigate to the Repository:**
cd WIFI-DDOS-ATTACK


3. **Ensure Script is Executable:**
Before running the script, ensure that it has executable permissions. If not, grant execute permission using the following command:

''chmod +x wifi-ddos.sh''
   

4. **Run the Script:**

./wifi-ddos.sh

5. **Follow the Prompts:**
- The script will guide you through the process of selecting a target access point and initiating the deauthentication attack.

## Requirements

- Linux operating system
- Bash shell
- `airmon-ng` and `aireplay-ng` utilities
- Superuser privileges (some commands in the script require sudo)

## Credits

This script was created by [Junaid Jagirani].

## License

This project is licensed under the [MIT License](LICENSE).
