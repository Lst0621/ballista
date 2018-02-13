# ~/.config/fish/config.fish

set fish_greeting ""
bash ~/workspace/ballista/helper/bash/greet.sh

#alias
.  ~/workspace/ballista/helper/bash/alias.sh

# https://github.com/nvbn/thefuck
eval (thefuck --alias | tr '
' ';')


# prompt
set face (python ~/workspace/ballista/helper/python/prompt.pyc)
set myname (whoami)


function fish_prompt

	# Name
	set_color 9400d3
	echo  -e "$myname \c"
	set_color 4B0082
	echo  -e "@ \c"
	
	# Time
	set_color blue
	echo -e  (date "+%m/%d") "\c"
	
	set_color green
	echo -e  (date "+%a") "\c"
	
	set_color yellow
	echo -e  (date "+%H:%M:%S")"\c"
	
	set_color FF8C00
	echo -e "+1s⌚⌚ \c"
	
	# PWD
	set_color red
	echo -n  (prompt_pwd)
	set_color normal
	
	# GIT
	echo (__terlar_git_prompt)
	
	
	# Face
	echo -e  "$face \c"
	set_color normal

end


function matlab
   set -lx SHELL /bin/bash
   command matlab $argv 
end


