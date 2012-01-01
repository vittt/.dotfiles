# Sudo
alias s='sudo'

# Reboot
alias reboot='sudo reboot'

# CD
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# RM
alias rm='rm -r'
alias rmf='rm -rf'

# CP
alias cp='cp -r'
alias cpp='rsync -PrlpE'
alias cpz='rsync -PrlpEz'

# LS
alias l='ls -Xp --color=auto'
alias ls='ls -Xp --color=auto'
alias ll='ls++'

# MKDIR
alias mk='mkdir -p'
alias mkdir='mkdir -p'

# Various
alias cls='clear'
alias h='history'
alias mplayer='mplayer -msgcolor'
alias utorrent='utserver -configfile ~/.config/utorrent/utserver.conf'
alias wget='wget -c'
alias aria='aria2c -c -x 10 -s 10 -k 10M'
alias burniso='cdrecord -eject dev=1,0,0 -data'
alias sxiv='sxiv -dr'
alias osstest='osstest -g 5'
alias pychrom='pychrom -c /usr/share/X11/rgb.txt'
alias rtorrent="rtorrent -n -o import=${XDG_CONFIG_HOME}/rtorrent/config.rc"

# Mounting
alias musb='sudo mount /dev/sdb'
alias uusb='sudo umount /mnt/usb'

# Apache
alias apache='sudo apache2ctl'

# Tmux
alias irc='tmux -2 a -t irc'
alias imap='tmux -2 a -t imap'
alias torrent='tmux -2 a -t torrent'
alias t='tmux -2 a -t tmux'

# Ping
alias pr='ping -c 1 192.168.1.1 | tail -3'
alias pg='ping -c 1 google.com | tail -3'

# Git
alias g='git'
alias ga='git add'
alias gst='git status'
alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gd='git diff | mate'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -m'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'

# Ruby
alias gem='sudo gem'

# Handbrake (What the fuck is wrong with you guys?)
alias handbrake='ghb'
alias handbrakecli='HandBrakeCLI'

#ncmcpp
alias play='ncmpcpp play'
alias pause='ncmpcpp pause'
alias stop='ncmpcpp stop'
alias next='ncmpcpp next'
alias prev='ncmpcpp prev'
alias volume='ncmpcpp volume'
#Pacman
alias pacupg='sudo pacman-color -Syu'        # Synchronize with repositories before upgrading packages that are out of date on the local system.
alias pacin='sudo pacman-color -S'           # Install specific package(s) from the repositories
alias pacins='sudo pacman-color -U'          # Install specific package not from the repositories but from a file 
alias pacre='sudo pacman-color -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman-color -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman-color -Si'              # Display information about a given package in the repositories
alias pacreps='pacman-color -Ss'             # Search for package(s) in the repositories
alias pacloc='pacman-color -Qi'              # Display information about a given package in the local database
alias paclocs='pacman-color -Qs'             # Search for package(s) in the local database

# Fun with sed
alias df='df -h | grep sd |\
	sed -e "s_/dev/sda[1-9]_\x1b[34m&\x1b[0m_" |\
	sed -e "s_/dev/sd[b-z][1-9]_\x1b[33m&\x1b[0m_" |\
	sed -e "s_[,0-9]*[MG]_\x1b[36m&\x1b[0m_" |\
	sed -e "s_[0-9]*%_\x1b[32m&\x1b[0m_" |\
	sed -e "s_9[0-9]%_\x1b[31m&\x1b[0m_" |\
	sed -e "s_/mnt/[-_A-Za-z0-9]*_\x1b[34;1m&\x1b[0m_"'

alias duch='du -ch | grep insgesamt |\
	sed -e "s_[0-9]*,[0-9]*[B|G|K|M|T]_\x1b[32m&\x1b[0m_"'
