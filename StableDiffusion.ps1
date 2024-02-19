# Ensure the script can run with elevated privileges
# Check if running as Administrator
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "Please run this script as an Administrator!"
    Break
}

# Function to install Python 3.10.6
function Install-Python {
    $pythonInstallerUrl = "https://www.python.org/ftp/python/3.10.6/python-3.10.6-amd64.exe"
    $installerPath = "$env:TEMP\python-installer.exe"
    Invoke-WebRequest -Uri $pythonInstallerUrl -OutFile $installerPath
    Start-Process -FilePath $installerPath -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1" -Wait
    Remove-Item $installerPath
}

# Function to check Python version
function Check-PythonVersion {
    $pythonVersion = python --version 2>&1
    if ($pythonVersion -like "*Python 3.10.6*") {
        Write-Host "Python 3.10.6 is correctly installed." -ForegroundColor Green
    } else {
        Write-Host "Installing Python 3.10.6..." -ForegroundColor Yellow
        Install-Python
    }
}

# Function to install Git
function Install-Git {
    $gitInstaller = "https://github.com/git-for-windows/git/releases/download/v2.31.1.windows.1/Git-2.31.1-64-bit.exe"
    $installerPath = "$env:TEMP\git-installer.exe"
    Invoke-WebRequest -Uri $gitInstaller -OutFile $installerPath
    Start-Process -FilePath $installerPath -Args "/VERYSILENT" -Wait
    Remove-Item $installerPath
}

# Function to clone AUTOMATIC1111 repository
function Clone-AUTOMATIC1111 {
    $destinationPath = "C:\StableDiffusion" # Specify your desired path
    if (-Not (Test-Path $destinationPath)) {
        New-Item -ItemType Directory -Path $destinationPath
    }
    Set-Location -Path $destinationPath
    git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
}

# Function to download the model file (Manual step required)
function Download-ModelFile {
    Write-Host "Please download the Stable Diffusion v1.5 model checkpoint file and place it in the models\Stable-diffusion folder within the cloned repository." -ForegroundColor Yellow
    # Provide instructions for manual download due to potential legal implications of automating this step
}

# Function to run web UI
function Start-WebUI {
    $scriptPath = "C:\StableDiffusion\stable-diffusion-webui\webui-user.bat"
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c $scriptPath" -Wait
}

# Execution flow
Check-PythonVersion
Install-Git
Clone-AUTOMATIC1111
Download-ModelFile # Reminder for manual step
# Start-WebUI # Uncomment to automatically start the web UI

Write-Host "Installation and setup complete. Please manually download the model file as instructed above." -ForegroundColor Green
