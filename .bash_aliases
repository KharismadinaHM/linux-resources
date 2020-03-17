#-------------------- All aliases command -----------
alias bash_aliases='subl /home/nahid/.bash_aliases'
alias copytolfs10x='cp ~/.bash_aliases /media/nahid/data-center/github-repo/LFS10x/'
alias tocsv='libreoffice --headless --convert-to csv'
alias topdf='lowriter --convert-to pdf'
alias open='xdg-open'
alias yesrm='yes | rm -i '
alias localru='xdg-open http://local.ru.ac.bd/login'
alias github='xdg-open https://github.com/Nahid-Hassan'
alias facebook='xdg-open https://www.facebook.com/'
alias youtube='xdg-open https://www.youtube.com/'
alias mail='xdg-open https://mail.google.com/mail/u/0/'
alias drive='xdg-open https://drive.google.com/drive/my-drive'
alias linkedin='xdg-open https://www.linkedin.com/in/md-nahid-hassan-a3639317a/'
alias githubio='xdg-open https://nahid-hassan.github.io/'
alias google='xdg-open https://www.google.com/'
alias base='source ~/anaconda3/bin/activate'
alias deactivate='conda deactivate'
alias gcal='xdg-open https://calendar.google.com/calendar/r?pli=1&t=AKUaPmYCgDLp3XU4ClfdQlw1-XRjtDRcNTF-GFauYRYPEjcikeXK1PyvsjTCLgLP9RJo4FVDF94HeOxXUQsDLVsUUzp9ukPmNw%3D%3D'

alias gtrans="xdg-open https://translate.google.com/"

# fun option
alias today='calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'

# Add safety nets
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# very handy
alias untar='tar -zxvf '
alias wget='wget -c '
alias getpass="openssl rand -base64 10"
alias c='clear'
alias ipe='curl ipinfo.io/ip'

# insatll program
# alias install='sudo apt-get install'
# alias update='sudo apt-get update --yes'
# alias upgrade='sudo apt-get upgrade --yes'

# Control cd command behavior
alias .='cd ../'
alias ..='cd ../../'
alias ...='cd ../../../'
alias ....='cd ../../../../'

# Control ls command output

## Colorize the ls output ##
alias ls='ls --color=auto' 
## Use a long listing format ##
alias ll='ls -lht'
## Show hidden files ##
alias l.='ls -d .* --color=auto'


# Start calculator with math support
alias bc='bc -l'

# Create parent directories on demand
alias mkdir='mkdir -pv'

# Make mount command output pretty and human readable format
alias mount='mount |column -t'

# open file in specific software alias -s txt=gedit alias -s md=typora alias
# -s cpp=code alias -s py=code alias -s mp4=vlc alias -s mp3=rhythmbox alias
# -s java=subl alias -s js=code alias -s html=code alias -s css=code alias -s
# htm=code alias -s c=

# du - estimate file space usage
alias uspace='du -sh .'

# df - report file system disk space usage
alias sfs='df -h | grep sda'
# alias df="df -Tha --total"
# alias du="du -ach | sort -h"

alias du=ncdu
alias df=AKUaPmYCgDLp3XU4ClfdQlw1-XRjtDRcNTF-GFauYRYPEjcikeXK1PyvsjTCLgLP9RJo4FVDF94HeOxXUQsDLVsUUzp9ukPmNw

# drive shortcut open the drive
alias data-center='xdg-open /media/nahid/data-center'
alias admin-user='xdg-open /media/nahid/admin-user'
alias entertainment='xdg-open /media/nahid/entertainment'
alias fma-library='xdg-open /media/nahid/fma-library'


# shortcut for google-chrome
alias gdrive='google-chrome /media/nahid/'
alias ghome='google-chrome /home/nahid/'
alias ggoogle='google-chrome http://www.google.com/'

# shortcut for cd command 
alias godata-center='cd /media/nahid/data-center/'
alias goadmin-user='cd /media/nahid/admin-user/'
alias goentertainment='cd /media/nahid/entertainment/'
alias gofma-libraryi='cd /meida/nahid/fma-library/'

# update .bash_aliases
alias ubash='source ~/.bash_aliases'

# find ip address
alias myip="ifconfig | grep -G "192.168.*.255" | cut -d' ' -f10"
alias myip1="hostname -I | cut -d' ' -f1"

# other ... 
alias copycorejava='cp -r /media/nahid/data-center/departmental/2nd\ year\ 2nd\ semester/OPP\ with\ Java /media/nahid/data-center/github-repo/Java-Programming-Language'

# ps command
alias psgrep='ps -ef | grep $1'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# github alias
alias gs='git status'
alias gc='git commit -m $1'
alias gp='git push -u origin master'

alias exam='xdg-open https://docs.google.com/document/d/1XaEYplDcBzllnK_HOHkyoDa4WS6YRSAaY8cinZIf93o/edit'

alias dhalchut='xdg-open https://www.facebook.com/groups/1713320778742013/'

alias mc='mc -b'

alias tlpstat='sudo tlp-stat -s'
alias tlpstart='sudo systemctl tlp start'

alias dept='xdg-open https://drive.google.com/drive/folders/1MU_wg3jBnRJhJmPjL9Jdq3w_1CXKHd4S'

alias gitresetlastcommit='git reset HEAD~'

alias cn='ping 8.8.8.8'

alias udacity='xdg-open https://classroom.udacity.com/me'

alias grep='grep -i'

alias todo='subl /media/nahid/data-center/sdt-inc/to-do.txt'