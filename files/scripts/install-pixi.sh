#!/usr/bin/env bash
curl -fsSL https://pixi.sh/install.sh | PIXI_BIN_DIR=/usr/bin PIXI_NO_PATH_UPDATE=1 bash

pixi completion --shell fish > /usr/share/fish/vendor_completions.d/pixi.fish
pixi completion --shell bash > /usr/share/bash-completion/completions/pixi

mkdir -p /usr/lib/systemd/user

cat > /usr/lib/systemd/user/pixi-global-update.service << 'EOF'
[Unit]
Description=Update pixi global packages

[Service]
Type=oneshot
ExecStart=/usr/bin/pixi global update
EOF

cat > /usr/lib/systemd/user/pixi-global-update.timer << 'EOF'
[Unit]
Description=Timer for pixi global package updates

[Timer]
OnCalendar=daily
Persistent=true

[Install]
WantedBy=timers.target
EOF

mkdir -p /etc/systemd/user/timers.target.wants
ln -sf /usr/lib/systemd/user/pixi-global-update.timer /etc/systemd/user/timers.target.wants/pixi-global-update.timer

