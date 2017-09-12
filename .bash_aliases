alias ='stty erase '
alias ='stty erase '

alias cd..='cd ..'
alias cd..2='cd ../..'
alias cd..3='cd ../../..'
alias cd..4='cd ../../../..'
alias cd..5='cd ../../../../..'

# fullscreen window: subtract 62 on vertical to account for taskbar & windowing
alias vnc_serv='vncserver -geometry 1920x1138 -randr 1920x1138,1920x1200,1200x1920,1920x1080,1920x1018,3840x2160,3840x2098'
alias xrandr_desk='xrandr -s 0'
alias xrandr_deskfull='xrandr -s 1'
alias xrandr_deskrot='xrandr -s 2'
alias xrandr_lapfull='xrandr -s 3'
alias xrandr_lap='xrandr -s 4'
alias xrandr_4kfull='xrandr -s 5'
alias xrandr_4k='xrandr -s 6'

alias gvim='gvim --sync'

alias git-init='rm .git/hooks/*; git init'

alias du1="du . --max-depth=1 -k | sort -nr"
