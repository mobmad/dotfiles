# Exports
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="1;33"
export PAGER=less
export LESS="-FRX"


# Aliases
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias h="cd ~"


# OSX specific aliases
case $OSTYPE in darwin*)
	alias s='open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'
	;;
esac


# Load hostname specific configuration
if [ -f ~/.profile_`hostname` ]; then
	source ~/.profile_`hostname`
fi


# Functions
function server() {
	python -m SimpleHTTPServer $1
}
