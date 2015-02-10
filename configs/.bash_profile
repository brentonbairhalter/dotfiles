export JAVA_VERSION=1.7
export JAVA_HOME=$(/usr/libexec/java_home -v $JAVA_VERSION)

export PATH=$JAVA_HOME:/usr/local/bin:$HOME/.node/bin:$PATH:/usr/local/git/bin:/usr/local/bin
#export M2_HOME=/usr/local/bin/mvn

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'

  if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
     # Set config variables first
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_THEME=Solarized
    GIT_PROMPT_END=\\n\$

    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
  fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PS1='\[\033[31;1m\]\u\[\033[0m\]@\[\033[31;1m\]\h \[\033[01;34m\]\w$(__git_ps1 "\[\e[32m\] \[\033[31;1m\](\[\033[0m\]%s\[\033[31;1m\])\[\e[0m\]")\[\033[1;94m\]\n$'

#-------------------
# Personnal Aliases
#-------------------

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'                  # prevent accidentally clobbering files.

alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -ahpG'
alias ll='ls -FGlAhp'
alias lx='ls -lXB'                          #  Sort by extension.
alias lk='ls -lSr'                           #  Sort by size, biggest last.
alias lt='ls -ltr'                              #  Sort by date, most recent last.
alias lc='ls -ltcr'                           #  Sort by/show change time,most recent last.
alias lu='ls -ltur'                          #  Sort by/show access time,most recent last.

alias ~="cd ~"                              # go home!

mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash

#   ---------------------------
#   NETWORKING
#   ---------------------------

alias myip='curl ip.appspot.com'                            # myip:         Public facing IP Address

#   ---------------------------------------
#   NGINX
#   ---------------------------------------
alias nxstart='sudo nginx'                                            # start
alias nxrel='sudo nginx -s reload'                              # reload
alias nxquit='sudo nginx -s quit'                                 # shut  down gracefiully
alias nxstop='sudo nginx -s stop'                               # shut  down quickly
alias nxtest='sudo nginx -t'                                          # test conf file
alias nxv='sudo nginx -v'                                             # nginx version

alias editHosts='sudo sublime /etc/hosts'                # edit /etc/hosts file
alias herr='tail /var/log/httpd/error_log'                     # tails error logs