# Stable Diffusion AUTOMATIC1111 Windows Installer

This PowerShell script automates the installation process of Stable Diffusion (AUTOMATIC1111 version) on Windows systems. It simplifies the setup by installing Python, Git, cloning the AUTOMATIC1111 repository, and guiding through the model file download process.

## Prerequisites

Ensure your system meets the following before running the script:
- Windows 10 or higher
- Administrator privileges
- An active internet connection
- Nvidia GPU with at least 4 GB VRAM (Note: Integrated GPUs are not supported)

## 🚀 How to Use

1. **Download the Script**  
   Download the `Install-StableDiffusion.ps1` script from this repository.

2. **Run PowerShell as Administrator**  
   Right-click on the PowerShell icon and select "Run as administrator" to open a PowerShell window with administrator privileges.

3. **Execute the Script**  
   Navigate to the directory where you downloaded `Install-StableDiffusion.ps1` and execute the script by entering the following command:
   ```powershell
   .\Install-StableDiffusion.ps1

## Manual Model File Download

The script will prompt you to manually download the Stable Diffusion model file due to legal and ethical considerations. Follow the instructions provided in the script to complete this step.

## Restart the Script (If Necessary)

After placing the model file in the specified directory, re-run the script if necessary to finalize the setup.

## 📋 Features

- **Python Installation**: Automatically installs Python 3.10.6, ensuring compatibility with Stable Diffusion.
- **Git Installation**: Downloads and installs Git, a requirement for cloning the AUTOMATIC1111 repository.
- **Cloning AUTOMATIC1111**: Clones the AUTOMATIC1111 version of Stable Diffusion into a specified directory.
- **Model File Guidance**: Instructions for manually downloading the model file required for Stable Diffusion to operate.

## 🔧 Troubleshooting

Encountered issues? Here's what you can check:

- **Python Version**: Confirm Python 3.10.6 is installed and correctly set in your system's PATH.
- **Git Installation**: Make sure Git has been installed properly.
- **Model File**: Ensure the model file has been downloaded and placed in the correct directory as instructed by the script.

## 🤝 Contributing

Contributions to this script are welcome! If you have suggestions for improvements or bug fixes, please feel free to open a pull request or issue in this repository.

## 📄 License

This script is distributed under the [MIT License](LICENSE). By using this script, you agree to abide by the terms of the license.

## ⚠️ Disclaimer

This script is provided "as is", without warranty of any kind. Use at your own risk. The creators of this script are not liable for any damages or data loss resulting from its use.
