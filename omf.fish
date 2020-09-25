# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

#zsh
alias zshconfig="nvim ~/.zshrc"
alias zshsource="source ~/.zshrc"

# start xinitrc
alias sx="startx"

# update pacman and yay
alias update="pacupg && yaupg"

# delete a file
alias yeet="rm -rf"

# shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="sudo reboot"

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"


#history
alias h="history"

#neovim
alias vim="nvim"

#sudo make clean install
alias smci="sudo make clean install"

# Shortcut to vim config
alias vimconfig="cd ~/.config/nvim/"

#figlet -f ~/.local/share/fonts/figlet-fonts/3d.flf "bruh" | lolcat
