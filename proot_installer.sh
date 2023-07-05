#!/bin/bash

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
RESET='\033[0m'

# Function to display the menu and get user's choice
function display_menu() {
  clear
  echo -e "${CYAN}============================="
  echo "Proot Distro Installer"
  echo "=============================${RESET}"
  echo -e "${YELLOW}Choose an action:"
  echo -e "1. ${GREEN}Install a Linux distribution"
  echo -e "${YELLOW}2. ${GREEN}Run an installed distribution"
  echo -e "${YELLOW}3. ${GREEN}Install a custom distribution"
  echo -e "${YELLOW}4. ${GREEN}Exit${RESET}"
  echo -e "${CYAN}=============================${RESET}"
  read -p "${YELLOW}Enter your choice (1-4): ${RESET}" choice
}

# Function to install the selected distribution
function install_distro() {
  case $1 in
    1)
      clear
      echo -e "${CYAN}============================="
      echo "Choose a Linux distribution to install:"
      echo "1. ${GREEN}Ubuntu"
      echo "2. ${GREEN}Debian"
      echo "3. ${GREEN}Kali Linux"
      echo "4. ${GREEN}Back to main menu"
      echo -e "${CYAN}=============================${RESET}"
      read -p "${YELLOW}Enter your choice (1-4): ${RESET}" distro_choice
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
          echo -e "${RED}Invalid choice. Please choose a valid option.${RESET}"
          sleep 2
          ;;
      esac
      ;;
    2)
      clear
      echo -e "${CYAN}============================="
      echo "Choose an installed distribution to run:"
      echo "1. ${GREEN}Ubuntu"
      echo "2. ${GREEN}Debian"
      echo "3. ${GREEN}Kali Linux"
      echo "4. ${GREEN}Back to main menu"
      echo -e "${CYAN}=============================${RESET}"
      read -p "${YELLOW}Enter your choice (1-4): ${RESET}" run_choice
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
          echo -e "${RED}Invalid choice. Please choose a valid option.${RESET}"
          sleep 2
          ;;
      esac
      ;;
    3)
      clear
      read -p "${YELLOW}Enter the URL of the custom tarball or rootfs archive: ${RESET}" custom_url
      read -p "${YELLOW}Enter a name for the custom distribution: ${RESET}" custom_name
      pkg install proot-distro
      proot-distro install $custom_name $custom_url
      ;;
    4)
      echo -e "${CYAN}Exiting...${RESET}"
      exit 0
      ;;
    *)
      echo -e "${RED}Invalid choice. Please choose a valid option.${RESET}"
      sleep 2
      ;;
  esac
}

while true; do
  display_menu
  install_distro $choice
  echo -e "${BLUE}Press Enter to continue...${RESET}"
  read
done
