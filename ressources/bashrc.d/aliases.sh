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

if [ -x /usr/bin/dircolors ]; then
    test        -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias       ls='ls --color=auto'
    alias       dir='dir --color=auto'
    alias       vdir='vdir --color=auto'
    alias       grep='grep --color=auto'
    alias       fgrep='fgrep --color=auto'
    alias       egrep='egrep --color=auto'
fi

alias   cp='cp -v'
alias   rsync='rsync -a --progress'

alias   ll='ls -l -h'
alias   lla='ls -l -A'
alias   la='ls -A'
alias   l='ls -CF'
alias   lr='ll -R'

alias   ne='emacs -nw'

alias   '..'='cd ..'

alias   reboot='sudo /sbin/reboot'
alias   poweroff='sudo /sbin/poweroff'
alias   shutdown='sudo /sbin/shutdown'
alias   ping='ping -c 5'
alias   diff='colordiff'

export  GZIP=-9
alias   compress='tar -zcvf'
alias   extract='tar -xvf'

alias   bldmake='rm -rf build && mkdir build && cd build && cmake .. && make && cd ..'

alias   MClean='find -name "*~" | xargs rm -f && find -name "*.o" | xargs rm -f'

alias   '?'='echo $?'

alias	rebash='source ~/.bashrc'
alias	modbash='emacs -nw ~/.bashrc'
