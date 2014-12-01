alias ls="ls -G"
alias ll="ls -lahnG"       #Long list the file with size in human understandable form.
alias hm="cd ~"
alias ..="cd .."

#All files that have been removed from the file system are added to the index as deleted.
alias grma='git ls-files --deleted | xargs git rm'
alias reload="source ~/.bash_profile"  #reloads the bash profile
alias lv="ls -F"                       #Classify the file type by appending special characters.
alias g='git'
alias r='rails'
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export HISTSIZE=20
export HISTCONTROL=erasedups
export HISTIGNORE="pwd:ls:ls -ltr:"

#Added for Home brew
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Added for git completion. Load the git completion file if it's available
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# Define alias that returns the current git branch name
alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

# Show git branch name in terminal prompt 
export PS1='[\D{%T}] \[\033[01;32m\]\u@\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] $(__git_ps1) $ '

#Another way to show git branch in command prompt
#export PS1='\[\033[01;32m\]\u@\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 "\[\033[01;33m\](%s)\[\033[00m\]")$ '
#export PS1='$(__git_ps1) > '
#export PS1="\u@\w$ "   #Original prompt settings

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Adding project-specific binstubs to PATH
export PATH="./bin:$PATH"
