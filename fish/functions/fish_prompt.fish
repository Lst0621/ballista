function fish_prompt --description 'Write out the prompt'


	# Name
	set_color 000000
	set -g current_bg 9400d3
	set_color -b $current_bg
	echo  -n "$myname"



	set -g current_bg  4B0082
	set_color -b $current_bg

	echo  -n "@"

	
	# Time

	prompt_segment blue 000000 ''

	#set_color  -b blue


	#set_color $current_bg
	#echo -n "$segment_separator"
	#set_color 000000


	echo -n (date "+%m/%d")


	
	#set_color -b green
	#set_color blue
	#echo -n "$segment_separator"
	#set_color 000000

	prompt_segment green 000000 ''


	echo -n  (date "+%a")

	#set_color green
	#set_color -b yellow
	#echo -n "$segment_separator"
	#set_color 000000

	prompt_segment yellow 000000 ''

	echo -n  (date "+%H:%M:%S")
	
	#set_color -b EE8C00
	#set_color yellow
	#echo -n "$segment_separator"
	#set_color 000000

	prompt_segment EE8C00 000000 ''
	echo -n "+1s⌚⌚ "

	
	# PWD
	#set_color -b red
	#set_color  EE8C00
	#echo -n "$segment_separator"
	#set_color 000000

	prompt_segment red 000000 ''
	echo -n  (prompt_pwd)

	#set_color red
	#set_color -b 000000
	#echo -n "$segment_separator"
	#set_color normal

	prompt_segment 000000 000000 ''
	
	echo ""
	
	set_color normal
	
	# Face
	echo -e  "$face \c"
	set_color normal

end




