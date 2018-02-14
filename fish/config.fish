# ~/.config/fish/config.fish

set fish_greeting ""
bash ~/workspace/ballista/helper/bash/greet.sh

#alias
.  ~/workspace/ballista/helper/bash/alias.sh

# https://github.com/nvbn/thefuck
eval (thefuck --alias | tr '
' ';')


# prompt
set face (shuf -n1 ~/workspace/ballista/helper/prompt.txt)
set myname (whoami)

# arrow/ tri
# powerline font needed!
# ref: https://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin

# dead code
#  can be used with powerline
#set segment_separator \uE0B0
#set segment_separator_right  \uE0b2

# nerd font needed!
# https://nerdfonts.com/
#  use DroidSansMono
#  ref:https://github.com/ryanoasis/powerline-extra-symbols
set segment_separator_left \uE0c0
set segment_separator_right  \ue0c2

