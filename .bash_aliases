alias hist='history | grep $1'
alias cd..='cd ..'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'

# ls better
alias la="ls -aF"
alias ld="ls -ld"
alias ll="ls -lhA"
alias lt='ls -At1 && echo "------Oldest--"'
alias ltr='ls -Art1 && echo "------Newest--"'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#git aliases
alias gpd="git push origin develop"
alias gpm="git push origin master"

# Mute system volume
alias stfu="osascript -e 'set volume output muted true'"

#copy output of last command to clipboard
alias cl="fc -e -|pbcopy"

# open chrome browser
alias chrome="open -a \"Google Chrome\""
