install-nix:
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install ostree --explain --determinate
    sed -i -r -e '/^\s*Defaults\s+secure_path/ s[=(.*)[=\1:/nix/var/nix/profiles/default/bin[' /etc/sudoers 
