# Exports
export PATH=$PATH:/usr/local/heroku/bin:~/bin:/Users/mads/dev/depot_tools
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="1;33"
export PAGER=less
export LESS="-FRX"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Aliases
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias h="cd ~"
alias s='open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'

# Functions
function canary() {
	open -a /Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --args $@
}

function server() {
	python -m SimpleHTTPServer $1
}