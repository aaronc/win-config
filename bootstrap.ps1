cinst packages.config

# Configure HOME variable
[environment]::SetEnvironmentVariable("HOME", [environment]::GetEnvironmentVariable("USERPROFILE") "user")

# Checkout emacs.d
cd %USERPROFILE%
git clone git@github.com:aaronc/emacs.d.git .emacs.d