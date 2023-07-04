# Proot Distro Installer

The Proot Distro Installer is a Bash script that simplifies the process of installing and running Proot-based Linux distributions in Termux. It provides an interactive menu to install predefined distributions (Ubuntu, Debian, Kali Linux) or allows users to install custom distributions using direct URLs to tarballs or rootfs archives.

## Requirements

- Termux (available on Google Play Store or F-Droid)
- Internet connection (for downloading distributions and dependencies)

## Usage

1. Clone this repository or copy the script to your local machine:

```bash
git clone https://github.com/arbajisscripting/proot-distro-installer.git
cd proot-distro-installer
```

2. Ensure the script has execution permissions:

```bash
chmod +x proot_installer.sh
```

3. Run the script:

```bash
./proot_installer.sh
```

4. The interactive menu will appear, offering the following options:

    - **Install a Linux distribution**: Choose from predefined distributions (Ubuntu, Debian, Kali Linux) to install.
    - **Run an installed distribution**: Start a previously installed distribution.
    - **Install a custom distribution**: Install a custom Proot-based distribution by providing a URL to a tarball or rootfs archive.
    - **Exit**: Close the installer.

5. Follow the prompts to select the desired action and complete the installation process.

## Note

- Proot Distro Installer relies on the `proot-distro` package in Termux for installing and running Proot-based distributions.
- Make sure you have enough free storage space in Termux to accommodate the installations.
- Custom distributions must be provided in the form of tarballs or rootfs archives with appropriate configurations for Proot.

## Disclaimer

The Proot Distro Installer is intended for educational and experimentation purposes only. The installation and usage of Linux distributions in Proot may have certain limitations compared to running on native systems. Please use it responsibly and adhere to the terms and conditions of any distributions you install.

## License

This script is licensed under the [MIT License](LICENSE).

Feel free to contribute to this project by opening issues or submitting pull requests.

Enjoy exploring different Linux distributions in Termux with the Proot Distro Installer! 🚀
