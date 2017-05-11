#!/bin/bash

find -name 'Index*' | xargs cat | egrep '<tr valign=\"TOP\"><td><strong>' | sed 's/<tr valign="TOP"><td><strong>//' | sed 's/^\(...\):/\1-/' | sed 's/^\(....\):/\1-/' | sed 's/^\(..\):/\1-/' | sed 's/\(<[^<]*>\)\+/\t/g' | sed 's/ Prerequisite.*:.*$//' | sed 's/ Corequisite.*:.*$//' | sed 's/\t[0-9]\t/\t/'
