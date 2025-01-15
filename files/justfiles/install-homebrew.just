install-homebrew:
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    sed -i -r -e '/^\s*Defaults\s+secure_path/ s[=(.*)[=\1:/home/linuxbrew/.linuxbrew/bin[' /etc/sudoers 
