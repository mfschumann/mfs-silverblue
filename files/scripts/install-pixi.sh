curl -fsSL https://pixi.sh/install.sh | PIXI_BIN_DIR=/usr/bin PIXI_NO_PATH_UPDATE=1 bash

pixi completion --shell fish > /usr/share/fish/vendor_completions.d/pixi.fish
pixi completion --shell bash > /usr/share/bash-completion/completions/pixi