#!/bin/bash
set -eu

sections=`ls _sections|grep -v index`

cat header.html _sections/index.html footer.html > index.html
for section in $sections; do
  mkdir -p ${section%*.html}
  cat header.html _sections/$section footer.html > ${section%*.html}/index.html
done
