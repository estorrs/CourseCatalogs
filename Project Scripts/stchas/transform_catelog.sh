tr -d '\n' | sed 's/<p style="margin-top: -10px;">/\n/g' | sed 's/^.*<h4 id=//' | sed 's/^.*1em;">//' | sed 's/ &nbsp; /\t/' | sed 's/([0-9-].*).*<\/h4>.*<p>/\t/' | sed 's/<\/p>.*$//'
