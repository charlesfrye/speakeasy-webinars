#!/bin/bash
set -eo pipefail
IFS=$'\n\t'

AGAINST="${2:-start.yaml}"

LN_WIDTH=4
(( WIDTH="$(tput cols)"-LN_WIDTH ))
diff  --width $WIDTH --minimal --side-by-side --color=always "$AGAINST" "$1" | less --RAW-CONTROL-CHARS --LINE-NUMBERS --line-num-width=$LN_WIDTH
