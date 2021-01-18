#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export EDITOR=vim
export HISTSIZE=1000000
export HISTFILESIZE=1000000000

PERL_DESTRUCT_LEVEL=2

# Make colorcoding available for everyone

Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

NC="\e[m"               # Color Reset

# PS1 Setup
PROMPT_COMMAND=__prompt_command

__prompt_command() {
     local EXITCODE="$?"
     local HOSTCOLOR="5"
     local USERCOLOR="3"
     local PATHCOLOR="4"

     PS1="\[\033[0;032m\]╭─ \[\e[3${HOSTCOLOR}m  \h  \e[3${USERCOLOR}m \u  \e[3${PATHCOLOR}m \w  \n";
     if [ $EXITCODE == 0 ]; then
	 	 PS1+="\[\033[0;32m\]╰─➤   \[\e[0m\]";
	 else
	 	 PS1+="\[\033[0;31m\]╰─➤   \[\e[0m\]";
	 fi
}

# Fancy commands output
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mirror='sudo reflector --verbose -l 100 --sort rate --save /etc/pacman.d/mirrorlist'
alias purge='sudo pacman -Rsc $(pacman -Qtdq)'
