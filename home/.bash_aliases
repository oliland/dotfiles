frap () { find . -name '*.$1' -print0 | xargs -0 perl -pi -e '$2'; }

tunnel() { ssh -nNTR $1:localhost:$2 $3 $4 $5; }
