#!/usr/bin/env sh

if [ -z "$1" ]; then
    echo -n "Enter a word you wish to lookup: "
    read ans
    curl https://www.merriam-webster.com/thesaurus/$ans --output /dev/stdout 2>/dev/null | grep --color=never -E 'name="description"' | perl -pe 's/(<meta name="description" content=")((?:.*))((?:Antonyms.*))">/$2\n\n$3/gu' | perl -pe 's/[\s]*//u'
else
    curl https://www.merriam-webster.com/thesaurus/$1 --output /dev/stdout 2>/dev/null | grep --color=never -E 'name="description"' | perl -pe 's/(<meta name="description" content=")((?:.*))((?:Antonyms.*))">/$2\n\n$3/gu' | perl -pe 's/[\s]*//u'
fi