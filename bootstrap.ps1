# Configure HOME variable
[environment]::SetEnvironmentVariable("HOME", [environment]::GetEnvironmentVariable("USERPROFILE") "user")

# Checkout emacs.d
cd %USERPROFILE%
git clone git@github.com:aaronc/emacs.d.git .emacs.d

# Create ssh private keys
if(!(Test-Path .ssh)) {mkdir .ssh}
cd .ssh
if(!(Test-Path id_rsa)) {ssh-keygen -t rsa -C %Username%}

# Link bashrc
cd %USERPROFILE%
mklink .bashrc .config/bashrc

# Install Chocolatey packages
cinst packages.config

