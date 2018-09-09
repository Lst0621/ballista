function fish_prompt --description 'Write out the prompt'

	# Name
	set_color 000000
	set -g current_bg  4B0082
	set_color -b $current_bg
	echo  -n "$myname"

	set -g current_bg 9400d3
	set_color -b $current_bg
	echo  -n "@"
	echo  -n (cat /etc/hostname)
	
	# Time

	prompt_segment blue 000000 ''
	echo -n (date "+%m/%d")

	prompt_segment green 000000 ''

	echo -n  (date "+%a")

	prompt_segment yellow 000000 ''

	echo -n  (date "+%H:%M:%S")

	prompt_segment EE8C00 000000 ''
	echo -n "+1s⌚⌚ "

	
	# PWD

	prompt_segment red 000000 ''
	echo -n  (prompt_pwd)

	prompt_segment 000000 000000 ''
	
	echo ""
	
	
	# Face
	set  current_bg 050505

	set_color -b $current_bg 222222

	echo -n  "$face "
	prompt_segment 222222 444444 ''
	echo -n  "$face "
	prompt_segment 444444 777777 ''
	echo -n  "$face "
	prompt_segment 000000 000000 ' '

	set_color normal

end




