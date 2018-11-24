#!/bin/bash

#
## Project : GitProjectManagementTool
##
## Creator : Nathan Hautbois
##
## Contributors :
##
## Date : 05/09/2017
#

#
## Version 1.0
#

## Basic

BLACK="\[$(tput setaf 0)\]"
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
BLUE="\[$(tput setaf 4)\]"
MAGENTA="\[$(tput setaf 5)\]"
CYAN="\[$(tput setaf 6)\]"
WHITE="\[$(tput setaf 7)\]"

## Style

BOLD="\[$(tput bold)\]"
REV="\[$(tput rev)\]"

## Custom

TURQUOISE='\[\033[38;5;14m\]'
TURQUOISE2='\[\033[38;5;6m\]'

## Utils

RESET='\[$(tput sgr0)\]'

## Functions

function git-prompt()
{
    local GIT_PROMPT=$(git symbolic-ref HEAD --short 2> /dev/null)

    if [[ ! -z "$GIT_PROMPT" ]] ; then
    	echo -e "($GIT_PROMPT)"
    fi
}

## Prompt

# User diff

export	PS1="$MAGENTA[\h]$RESET "			# 'Hostname'

if [ $(id -u) -eq 0 ];
then # root aliases
    export	PS1+="$GREEN\u$RESET"
else
    export	PS1+="$RED\u$RESET"
fi

# Content

export	PS1+=" $TURQUOISE\A$RESET "		        # ' HH:MM '
export	PS1+="$RED[\W]$RESET"				# '[Current_Dir]'
export	PS1+="$YELLOW\$(git-prompt)$RESET"		# ['(Current_Git_Branch)']||['']
export	PS1+="$TURQUOISE2>$RESET"			# '>'
