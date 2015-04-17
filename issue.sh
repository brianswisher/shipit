#!/usr/bin/env bash
# htx_fix; 55555

initials='bs'

issue() {
  IN="`pbpaste`"
  arrIN=(${IN//;/ })

  echo "[RAILS-${arrIN[1]}](https://hoteltonight.atlassian.net/browse/RAILS-${arrIN[1]}) - `echo ${arrIN[0]} | sed 's/_/ /g'`

\`\`\`
`echo ${arrIN[0]} | sed 's/_/ /g'` - RAILS-${arrIN[1]} ($initials)

closes #----
\`\`\`

\`\`\`bash
echo "$initials'_'${arrIN[0]}_RAILS_${arrIN[1]}" | pbcopy && curl -s https://raw.githubusercontent.com/brianswisher/shipit/master/shipit.sh | bash
\`\`\`

\`\`\`
curl -s https://gist.githubusercontent.com/brianswisher/9a550a3d53f71e924d05/raw/cf74c7c208a7dcde5f3881c471ee25c463a54f4f/pr-checklist.sh | bash
\`\`\`
" | pbcopy

  echo "`pbpaste`"
}

issue
