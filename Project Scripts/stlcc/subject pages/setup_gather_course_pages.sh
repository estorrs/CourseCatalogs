find -name 'Index*' | xargs cat | egrep 'subject=' | sed 's/^.*href=//' | sed 's/>.*$//' | sed 's/^\"/wget \"https:\/\/www.stlcc.edu/'
