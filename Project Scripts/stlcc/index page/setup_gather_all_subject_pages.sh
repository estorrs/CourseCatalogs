cat Index.asp | egrep '<li><a href="/Courses/Index\.asp\?subjec' | sed 's/^.*href=//' | sed 's/>.*$//' | sed 's/^/wget /'
