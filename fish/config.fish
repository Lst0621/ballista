set fish_greeting ""
bash ~/workspace/ballista/helper/bash/greet.sh
.  ~/workspace/ballista/helper/bash/alias.sh
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


