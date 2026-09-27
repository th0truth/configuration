export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="eastwood"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Automatically run tmux in Alacritty terminal windows
if [ "$ALACRITTY_LOG" ] && [ -z "$TMUX" ]; then
    tmux attach-session -t main || tmux new-session -s main
fi

. "$HOME/.local/share/../bin/env"
export PATH="/home/th0truth/.local/share/mise/installs/node/26.5.0/bin:$PATH"
