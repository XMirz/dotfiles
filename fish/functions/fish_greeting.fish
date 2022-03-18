function fish_greeting
    pfetch
    set up (uptime | awk  'gsub(",","") gsub(":","") {print $3}')
    if [ $up  -lt 5 ] 
	systemd-analyze
    end
end
