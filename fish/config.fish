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

# arrow/ tri
# powerline font needed!
# ref: https://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin
set segment_separator \uE0B0


