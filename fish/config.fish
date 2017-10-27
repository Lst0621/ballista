set fish_greeting ""

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


function fish_prompt

set num_faces 5
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
end

set_color magenta
echo -e  (date "+%m/%d/%y") "\c"
set_color green
echo -e  (date "+%H:%M:%S") "\c"
set_color red
echo -e +1s "\c"
set_color blue
echo (pwd)
set_color FFDF00
echo -e  "$face \c"
set_color normal
end


