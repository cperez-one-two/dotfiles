#
# Uhoh's Zoomer Shell
#
# Colors and prompt
autoload -U colors && colors	  # Load colors
PS1="%B%{$fg[yellow]%}%n %{$fg[magenta]%}%15<..<%~ %{$fg[green]%}>%b "
setopt autocd                   # cd into directory just by typing it
stty stop undef                 # Disable C-s to freeze terminal

# History settings
HISTFILE=~/.cache/zsh/history
HISTSIZE=100000
SAVEHIST=100000

# Source aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Auto/tab complete
autoload -Uz compinit
compinit
_comp_options+=(globdots)               # Include hidden files.

# Keybinds
bindkey '^[[P' delete-char              # Delete key fix

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q'                       # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;}        # Use beam shape cursor for each new prompt.

# Fast syntax highlighting plugin
source "$XDG_CONFIG_HOME/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" 2>/dev/null
