
if [ -x /usr/libexec/java_home ]; then
	export JAVA_HOME="`/usr/libexec/java_home`"
fi

if [ -x /usr/bin/mate ]; then
	export EDITOR="/usr/bin/mate -w"
else
	export EDITOR="vim"
fi

if [ -d $HOME/work/godev ]; then
	export GOPATH=$HOME/work/godev
fi

export GOROOT=`go env GOROOT`

for dir in \
	${HOME}/bin \
	${GOPATH}/bin \
	${GOROOT}/bin
do
	[ -d "${dir}" ] && PATH="${PATH}:${dir}"
done

alias gop='nocorrect $GOPATH'
alias gosrc='nocorrect $GOPATH/src'
alias zap='nocorrect $GOPATH/src/zaplab'
alias cdp='nocorrect $HOME/work/papers'
alias cda='nocorrect $HOME/work/applications'
alias cdadm='nocorrect $HOME/work/admin'
alias gitadm='nocorrect $HOME/work/gitolite'

alias cls='clear'
alias h='history'

alias lm='ls -lA|$PAGER'
alias psg='ps auxww|grep -i'
alias prv='open -a Preview'
alias egrep='env |grep -i'

alias -s tex=${EDITOR:-vi}
alias -s txt=${PAGER:-less}
alias -s html=open -a Safari
alias -s pdf=open -a Preview

