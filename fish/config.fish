set fish_greeting ""
bash ~/workspace/ballista/helper/bash/greet.sh

alias cff="clang-format-3.6  --style=file"
alias cffja="clang-format-3.6  --style=file -i *.java"
alias cffc=" clang-format-3.6  --style=file -i *.c " 
alias cffpp="clang-format-3.6  --style=file -i *.cpp " 
alias cffh="clang-format-3.6  --style=file -i *.h " 
alias a='fc -s'
alias e='exit'
alias c='javac *.java'
alias gp='git pull'
alias heads='head -10'
alias tails='tail -10'
alias ww='cd ~/workspace'
alias cdd='cd ~'
alias qq='cd ../'
alias qqq='cd ../../'
alias qqqq='cd ../../../'
alias sd='shutdown'
alias LS='ls'
alias wd='cd /media/lst2016/Windows/'
alias cl='xclip'
alias cll='xclip -o'
alias clc='xclip -sel clip'

eval (thefuck --alias | tr '
		' ';')

set num_faces 6
set face "☀ "
set ran (random)
set b (math "$ran % $num_faces")
switch (math "$b")
case 0
set face "❅" 
case 1
set face "☃"
case 2
set face "¯\_(ツ)_/¯"
case 3
set face "♥"
case 4
set face "♪"  
end


function fish_prompt

set_color 9400d3
echo  -e "lst \c"
set_color 4B0082
echo  -e "@ \c"

set_color blue
echo -e  (date "+%m/%d") "\c"

set_color green
echo -e  (date "+%a") "\c"

set_color yellow
echo -e  (date "+%H:%M:%S") "\c"

#set ran (random)
#set c (math "10 + $ran % 90")

set_color FF8C00
echo -e +1s "\c"

set_color red
echo (pwd) | lolcat
set_color normal
echo -e  "$face \c"
set_color normal
end


