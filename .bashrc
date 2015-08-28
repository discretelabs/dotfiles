alias ls="ls -G"
alias ll="ls -lahnG"       #Long list the file with size in human understandable form.
alias lv="ls -lF"                       #Classify the file type by appending special characters.
alias h="cd ~"
alias ..="cd .."
alias reload="source ~/.bash_profile"  #reloads the bash profile

#All files that have been removed from the file system are added to the index as deleted.
alias g='git'
alias r='rails'
alias grma='git ls-files --deleted | xargs git rm'

alias hm='heroku run rake --trace db:migrate --app' #heroku migrate
alias hr='heroku restart --app' #heroku restart app
alias hl='heroku logs --tail' #heroku logs
alias hp='git push heroku master' #push to heroku
alias pgr='pg_restore --verbose --clean --no-acl --no-owner -h localhost -d ' #supply dbname and path to database.dump file to be restored. Postgre Restore

alias ga="git config --get-regexp '^alias\.'"
alias find='find ~/ -iname'
alias mkdir='mkdir -pv'
alias code='cd ~/code'
alias gbl="git for-each-ref --sort=-committerdate --format='%(color:blue) %(committerdate:short) | %(color:red)%(color:bold)%(authorname) | %(authordate:relative) | %(color:white) %(refname:short)' refs/heads refs/remotes | sed 's/refs\/heads\///g'"
alias glop="git log --pretty=format:'%C(yellow)%h|%Cred%ad|%Cblue%an|%Cgreen%d %Creset%s' --date=short | column -ts'|' | less -r"

#Show and hide hidden files in finder on Mac
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export HISTSIZE=20
export HISTCONTROL=erasedups
export HISTIGNORE="pwd:ls:ls -ltr:"

#Added for Home brew
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#Load git completion
source ~/.git-completion.sh

# Define alias that returns the current git branch name
alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

# Show git branch name in terminal prompt
export PS1='[\D{%T}] \[\033[01;32m\]\u@\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] $(__git_ps1) $ '

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Add textmate as the text editor
export EDITOR="/usr/local/bin/mate -w"

# Adding project-specific binstubs to PATH
export PATH="./bin:$PATH"
source /usr/local/share/instantclient/instantclient.sh
