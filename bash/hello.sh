

#some alias
alias cff="clang-format-3.6  --style=file"
alias a='fc -s'
alias e='exit'
alias c='javac *.java'


#cap lock is a disaster
setxkbmap -option ctrl:swapcaps
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape;Control_L=Escape;Control_R=Escape'


#workspace in ubuntu
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 5
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2

#configure touch 
#the number is strange
xsetwacom set "9" "MapToOutput" eDP1
xsetwacom set "10" "MapToOutput" eDP1
xsetwacom set "15" "MapToOutput" eDP1


#rotate touch screen
xsetwacom  set "9" Rotate half
xsetwacom  set "10" Rotate half
xsetwacom  set "15" Rotate half

