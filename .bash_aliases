alias ..='cd ../'                           # ..            Go back 1 directory level
alias ~="cd ~"                              # ~:            Go Home
alias cl='clear'                            # cl:           Clear terminal display

alias halp='cat ~/.bash_aliases'            # halp:         Shows available useful admin aliases 


unquotify () { sudo setquota -u "$1" 10240 10250 0 0  -a /dev/loop0; }     			            # unquotify:     Removes any quota limit from a user 
quotify () { sudo setquota -u "$1" 10240 10250 0 0  -a /dev/loop0; }       			            # quotify:       Give a user a 10mb quota 
alias hacksters="cat /etc/passwd | grep '/home' | cut -d: -f1 | awk '!/admin/ && !/syslog/'"    # hacksters:     List all tilde accounts

