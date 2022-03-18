function fish_right_prompt
  set -l cyan (set_color -o 2563eb)
  set -l yellow (set_color -o ea580c)
  set date (date "+%H:%M:%S %Z")
  echo -s $cyan $date ' ' $yellow '#SHISHUFIED'
  set_color normal
end
