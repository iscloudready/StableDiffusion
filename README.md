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
