#!/bin/bash

sed 's/^ *//' | sed -n '/^[A-Z][A-Z]/ {N; s/[\n]/\t/g; p}' | sed 's/Prerequisite[^\.]*\.//g' | sed 's/Prerequisite.*: .*$//' | sed 's/ - /\t/' | sed 's/^\([A-Z]\{2,5\}\) /\1-/' | sed 's/ ([0-9-].*)\t/\t/'
