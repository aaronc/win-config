# Configure HOME variable
[environment]::SetEnvironmentVariable("HOME", [environment]::GetEnvironmentVariable("USERPROFILE"), "user")

# Map Caps to Esc
regedit keys.reg

# Checkout emacs.d
cd ..
git clone git@github.com:aaronc/emacs.d.git .emacs.d

# Link bashrc
cmd /c mklink .bashrc .config\bashrc

# Install Chocolatey packages
cinst .config\packages.config

wget http://download.microsoft.com/download/D/B/C/DBC11267-9597-46FF-8377-E194A73970D6/vs_proweb.exe
wget http://download.microsoft.com/download/2/3/0/230C4F4A-2D3C-4D3B-B991-2A9133904E35/VS10sp1-KB983509.exe
