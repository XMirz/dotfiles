function fish_right_prompt
  set -l cyan (set_color -o 67E8F9)
  set -l yellow (set_color -o FACC15)
  set date (date "+%H:%M:%S %Z")
  echo -s $cyan $date ' ' $yellow '#SHISHUFIED'
  set_color normal
end
