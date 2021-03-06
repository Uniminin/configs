# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

PS1="\n \[\033[0;34m\]┌─────(\[\033[1;35m\]\u\[\033[0;34m\])─────(\[\033[1;32m\]\w\[\033[0;34m\]) \n └> \[\033[1;36m\]\$ \[\033[0m\]"

# LAZER #
alias osu-lazer="sh ~/osu"

# barva #
#sh ~/barva/barva.sh &

# Gentoo
alias reposync="sudo emerge --sync ; sudo layman -S"
alias add="sudo layman -a"
alias del="sudo layman -d"
alias install="sudo emerge -av"
alias uninstall="sudo emerge -avC"
alias clean="sudo emerge --ask --depclean"
alias upgrade="sudo emerge -avuDN @world"
alias belongs="equery belongs -e"
alias depends="equery depends"
alias compile_time="sudo genlop -t"
alias packages="eix-installed -a ; eix-installed -a | count"
alias written_in="eix --depend -c"
alias readme="glow"

# EXA #
alias ls="exa -la --icons"
alias l="exa -ll --icons"
alias lt="exa -T --icons"

# Media #
alias play="mpv --hwdec=vaapi"
alias mpv="mpv --hwdec=vaapi"

# Extras #
alias grep="rg"
alias rm="rm -v"
alias mv="mv -v"
alias mkdir="mkdir -vp"
alias ..="cd .. ; l"
alias edit="vim"
alias cp="cp -v"
alias clone="git clone"
alias cat="dog"
alias search="fd"
