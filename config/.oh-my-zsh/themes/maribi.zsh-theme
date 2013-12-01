red=$FG[160]   
green=$FG[002]  
orange=$FG[136]

open_brackets=%{$red%}[%{$reset_color%}; 
closed_brackets=%{$red%}]%{$reset_color%}; 
at=%{$orange%}@%{$reset_color%};
arrow=%{$red%}"➜"%{$reset_color%};

dir="%{$orange%}%~%{$reset_color%}"; 
time="%{$green%}%D{%T %Z}%{$reset_color%}"
date="%{$green%}%D{%Y-%m-%d}%{$reset_color%}"
week="%{$green%}KW%D{%V}%{$reset_color%}"
maschine="%{$orange%}%m%{$reset_color%}"
user="%{$orange%}%n%{$reset_color%}"
historynumber="$open_brackets%{$green%}%h%{$reset_color%}$closed_brackets"

PROMPT='
$user$at$maschine 
$historynumber$dir $arrow ';

RPROMPT='$open_brackets$date $time $week$closed_brackets';

