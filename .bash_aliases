# search history, requires one input
alias hist='history | grep $1'

# ls better
alias la="ls -aF"
alias ld="ls -ld"
alias ll="ls -lhA"
alias lt='ls -At1 && echo "------Oldest--"'
alias ltr='ls -Art1 && echo "------Newest--"'

#git aliases
alias gpd="git push origin develop"
alias gpm="git push origin master"

# Mute system volume
alias stfu="osascript -e 'set volume output muted true'"

#copy output of last command to clipboard
alias cl="fc -e -|pbcopy"

# open chrome browser
alias chrome="open -a \"Google Chrome\""
