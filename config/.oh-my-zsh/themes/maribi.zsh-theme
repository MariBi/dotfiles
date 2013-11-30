red=$FG[160]   
green=$FG[002]  
orange=$FG[136]

open_braces=%{$red%}{$reset_color;
closed_braces=%{$red%}}$reset_color;
open_brackets=%{$red%}[$reset_color; 
closed_brackets=%{$red%}]$reset_color; 
at=%{$red%}@$reset_color;

line=%{$orange%}----$reset_color;
arrow="%{$orange%}=>$reset_color";

dir="%{$orange%}%d$reset_color"; 
time="$green%}%D{%T %Z}$reset_color%}"
date="$green%}%D{%Y-%m-%d}$reset_color%}"
week="$green%}KW%D{%V}$reset_color%}"
maschine="$green%}%m$reset_color%}"
user="$green%}%n$reset_color%}"
historynumber="$open_brackets%{$green%}%h$reset_color$closed_brackets"
PROMPT="
$open_brackets$date $time $week$closed_brackets $user$at$maschine 
$historynumber$dir $arrow "
