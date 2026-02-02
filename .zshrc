# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="eastwood"

PROMPT='%F{green}%n@%m%f:%F{cyan}%~%f $ '

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
