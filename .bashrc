#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export EDITOR=vim
export HISTSIZE=1000000
export HISTFILESIZE=1000000000

PERL_DESTRUCT_LEVEL=2

#                                   Settings

# TERMCAP Setup
# enter blinking mode - red
#export LESS_TERMCAP_mb=$(printf '\e[01;31m')
# enter double-bright mode - bold, magenta
#export LESS_TERMCAP_md=$(printf '\e[01;35m')
# turn off all appearance modes (mb, md, so, us)
#export LESS_TERMCAP_me=$(printf '\e[0m')
# leave standout mode
#export LESS_TERMCAP_se=$(printf '\e[0m')
# enter standout mode - green
#export LESS_TERMCAP_so=$(printf '\e[01;32m')
# leave underline mode
#export LESS_TERMCAP_ue=$(printf '\e[0m')
## enter underline mode - blue
#export LESS_TERMCAP_us=$(printf '\e[04;34m')

# PS1 Setup
PROMPT_COMMAND=__prompt_command

__prompt_command() {
     local EXITCODE="$?"
     local HOSTCOLOR="5"
     local USERCOLOR="3"
     local PATHCOLOR="4"

     PS1="\e[3${HOSTCOLOR}m \h  \e[3${USERCOLOR}m \u  \e[3${PATHCOLOR}m \w  \n";
     if [ $EXITCODE == 0 ]; then
	 	 PS1+="\e[\[32m --\[\e[0m ";
	 else
	 	 PS1+="\e[\[31m --\[\e[0m ";
	 fi
}

# Fancy commands output
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mirror='sudo reflector --verbose -l 100 --sort rate --save /etc/pacman.d/mirrorlist'
