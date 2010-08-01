frap () { find . -name '*.$1' -print0 | xargs -0 perl -pi -e '$2'; }
