#!/bin/bash

# Function to display the menu and get user's choice
function display_menu() {
  clear
  echo "============================="
  echo "Proot Distro Installer"
  echo "============================="
  echo "Choose an action:"
  echo "1. Install a Linux distribution"
  echo "2. Run an installed distribution"
  echo "3. Install a custom distribution"
  echo "4. Exit"
  echo "============================="
  read -p "Enter your choice (1-4): " choice
}

# Function to install the selected distribution
function install_distro() {
  case $1 in
    1)
      clear
      echo "============================="
      echo "Choose a Linux distribution to install:"
      echo "1. Ubuntu"
      echo "2. Debian"
      echo "3. Kali Linux"
      echo "4. Back to main menu"
      echo "============================="
      read -p "Enter your choice (1-4): " distro_choice
      case $distro_choice in
        1)
          pkg install proot-distro
          proot-distro install ubuntu
          ;;
        2)
          pkg install proot-distro
          proot-distro install debian
          ;;
        3)
          pkg install proot-distro
          proot-distro install kali
          ;;
        4)
          return
          ;;
        *)
          echo "Invalid choice. Please choose a valid option."
          sleep 2
          ;;
      esac
      ;;
    2)
      clear
      echo "============================="
      echo "Choose an installed distribution to run:"
      echo "1. Ubuntu"
      echo "2. Debian"
      echo "3. Kali Linux"
      echo "4. Back to main menu"
      echo "============================="
      read -p "Enter your choice (1-4): " run_choice
      case $run_choice in
        1)
          proot-distro login ubuntu
          ;;
        2)
          proot-distro login debian
          ;;
        3)
          proot-distro login kali
          ;;
        4)
          return
          ;;
        *)
          echo "Invalid choice. Please choose a valid option."
          sleep 2
          ;;
      esac
      ;;
    3)
      clear
      read -p "Enter the URL of the custom tarball or rootfs archive: " custom_url
      read -p "Enter a name for the custom distribution: " custom_name
      pkg install proot-distro
      proot-distro install $custom_name $custom_url
      ;;
    4)
      echo "Exiting..."
      exit 0
      ;;
    *)
      echo "Invalid choice. Please choose a valid option."
      sleep 2
      ;;
  esac
}

while true; do
  display_menu
  install_distro $choice
  echo "Press Enter to continue..."
  read
done
