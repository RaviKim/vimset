# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'


# Personal alias settings
# Change Directory Command // 2018.02.11 HSKIM

alias ll='ls -alv'
alias ls='ls -h'
alias my='cd /home/pi/Workspace.d' #Go to my Workspace // HSKIM
alias qq='cd /home/pi/Workspace.d/git.d/CentDir/CPlusTest.d' # Go to my CPlusDirectory // HSKIM
alias sss='cd /home/pi/Workspace.d/git.d/linuxSystem.d' # Linux system
alias algo='cd /home/pi/Workspace.d/git.d/CentDir/CPlusTest.d/Myalgotest.d/ss.d'
alias qtd='cd /home/pi/Workspace.d/git.d/CentDir/CPlusTest.d/Myalgotest.d/QT.d'
# Vim setting // 2018.02.11 HSKIM
alias vrc='vim ~/.vimrc'
alias python='/usr/bin/python3.4'

# bash setting // 2018.02.11 HSKIM
alias brc='vim ~/.bashrc'

# bluetooth monitoring temp & humid
alias xi='python3 /home/pi/mitemp/demo.py --backend bluepy poll 4c:65:a8:da:ea:de'
alias xis='python3 /home/pi/mitemp/demo.py --backend bluepy poll 4c:65:a8:da:ea:de > /home/pi/test.txt
'

# Debuging Setting // 2018.02.11 HSKIM

alias cc='g++'
alias p3='python3'

# git setting // 2018.02.11 HSKIM
alias gs='git status'
alias gc='git commit -m'
alias elas='cd /home/pi/elasticsearch-5.2.1' 


# SetNetwork
alias ns='vim /etc/ssh/sshd_config'
alias nc='vim /etc/services'


# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
    else
    color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


#call alias
alias sc='alias'
alias vi='vim'

# WorkSpace Arrange.

alias so='cd /home/pi/Workspace.d/git.d/Socket.d'
alias 2019='cd /home/pi/Workspace.d/git.d/CentDir/2019.d/'
