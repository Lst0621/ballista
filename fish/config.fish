set fish_greeting ""
bash ~/workspace/ballista/helper/bash/greet.sh
#bash ~/workspace/ballista/helper/bash/asc/minions.sh
.  ~/workspace/ballista/helper/bash/alias.sh
eval (thefuck --alias | tr '
' ';')


set face (python ~/workspace/ballista/helper/python/prompt.py)


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


