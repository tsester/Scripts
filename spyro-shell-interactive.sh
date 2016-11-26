#        #         #         #          #       #        #       #       #         #      #         #
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias cd..='cd ..'
alias cp_='rsync --info=progress2 --devices --executability --group --hard-links -hh --links --owner --perms --recursive --specials --times'
alias cp_d='rsync --info=progress2 --devices --executability --group --hard-links -hh --links --owner --perms --recursive --specials --times'
alias cp='cp -a'
alias df='df --si --print-type --exclude-type tmpfs --exclude-type devtmpfs'
alias df_Hp='df --si --print-type --exclude-type tmpfs --exclude-type devtmpfs'
alias diff='colordiff -u'
#alias du_hPsx='du --si --no-dereference --one-file-system --summarize'
alias eix='eix --force-color'
alias emerge='emerge --ask --verbose --quiet-build --color=y'
#alias emerge1='emerge --verbose --oneshot --color y --quiet-build'
alias deepmerge='emerge --ask --verbose --quiet-build --color=y --deep --newuse --tree --with-bdeps=y @world'
alias upmerge='emerge --ask --verbose --quiet-build --color=y --deep --newuse --tree --update --with-bdeps=y @world'
#alias emerged='emerge --deep --color y --newuse --quiet-build --tree --update --verbose --ask world'
#alias emergep='emerge --color y --pretend --verbose'
#alias emerger='emerge --color y --depclean --quiet-unmerge-warn'
#alias emergea='emerge --color y --verbose --ask --quiet-build'
#alias fsck__='fsck -y -f -E fragcheck'
alias gnome-terminal='gnome-terminal --geometry=134x25'
alias grepi='grep --ignore-case'
alias grepir='grep -r -i'
alias grep_ciIs='grep --color=always --ignore-case --no-messages -I'
alias grepi_c='grep --colour=always --ignore-case'
alias grepir_c='grep -r -i --color=always'
alias iotop='iotop -ao'
alias less='less -r'
alias less_c='less -R'
alias lessi='less -i'
alias lessi_c='less -R -i'
alias llll='ls -l -S --color=auto --si --almost-all --time-style=iso'
alias lll='ls -a -l --color=auto --si --time-style=iso'
alias ll='ls --almost-all --color=auto'
#alias mpv='optirun mpv'
alias nitrogen='nitrogen --save'
alias pacmanc='pacman --color=always'
alias pamcan='pacman'
alias pacamn='pacman'
alias pkill='pkill --count'
alias mpo='primusrun mpv'
alias ps_grepi='ps -A | grep -i'
alias rmr='rm -r'
alias rsync='rsync --info=progress2 --archive --hard-links --one-file-system'
alias rsyncp='rsync --info=progress2 --archive -hh'
alias rsyncadeghioppstx='rsync --info=progress2 --acls --devices --executability --group --hard-links -hh --itemize-changes --owner --perms --recursive --specials --times --xattrs'
alias stty_arduino='stty -F /dev/ttyACM0 cs8 115200 ignbrk -brkint -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke noflsh -ixon -crtscts min 1 icrnl && cat /dev/ttyACM0'
alias sudo='sudo '
alias tail='tail -n 60'
alias tailf='tailf -n 60'
export SAGE_BROWSER=/usr/bin/firefox
export EDITOR=nano
export GTK_OVERLAY_SCROLLING=0
function du_HPsx()
{
du --si --no-dereference --one-file-system --summarize --total --exclude=/proc "$@" | sort -h;
}
alias if.me='curl ifconfig.me'
#make the following only available to root
#alias yaourt='sudo -u tsester yaourt '

#        #         #         #          #       #        #       #       #         #      #         #
#if [[ "$SHELL" == "/usr/bin/zsh" ]]; then
[ -r /usr/share/doc/pkgfile/command-not-found.zsh ] && . /usr/share/doc/pkgfile/command-not-found.zsh
[ -r /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#elif [[ "$SHELL" == "/usr/bin/bash" ]]; then
#	[ -r /usr/share/doc/pkgfile/command-not-found.bash ] && . /usr/share/doc/pkgfile/command-not-found.bash
#fi
which ()
{
	(alias; declare -f) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde --show-dot $@
}
#export -f which
#which cowsay fortune &> /dev/null && command fortune -ac | cowthink -f $(find /usr/share/cows -type f | shuf -n 1)
which cowsay fortune &> /dev/null && command fortune -ac | cowthink -f turtle
function iw_sig()
{
while true;do iwconfig wlan0|grep -o "Signal\ level.*"|grep -o "\-.*" && sleep 0.6;done
}
tabs -d 3
export PATH="/usr/lib/colorgcc/bin/:$PATH"
(($(id -u) == 0)) && alias pacaur='sudo -u \#1000 pacaur'
/home/tsester/dateme.sh "1988/09/05"
date
