#ref https://github.com/oh-my-fish/theme-budspencer/blob/master/fish_right_prompt.fish
function prompt_dur -d 'Displays the elapsed time of last command'
	if set -q $CMD_DURATION
		return
	end	
	set -l seconds ''
	set -l minutes ''
	set -l hours ''
	set -l days ''
	set -l cmd_duration (expr $CMD_DURATION / 1000)
	set -l mseconds (expr $CMD_DURATION \% 1000)'ms'
	if [ $cmd_duration -gt 0 ]
		set seconds (expr $cmd_duration \% 68400 \% 3600 \% 60)'s'
		if [ $cmd_duration -ge 60 ]
			set minutes (expr $cmd_duration \% 68400 \% 3600 / 60)'m'
			if [ $cmd_duration -ge 3600 ]
				set hours (expr $cmd_duration \% 68400 / 3600)'h'
				if [ $cmd_duration -ge 68400 ]
					set days (expr $cmd_duration / 68400)'d'
					end
				end
			end
		end
	set_color purple
	echo -n $segment_separator_right
	echo -n (set_color -b purple 000000)' '$days$hours$minutes$seconds$mseconds' '
	end
