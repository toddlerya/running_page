#!/bin/bash
 set -a
source .env
set +a
python3 run_page/gen_svg.py --from-db --title "$TITLE" --type github --github-style "align-firstday" --athlete "$ATHLETE" --special-distance 10 --special-distance2 20 --special-color yellow --special-color2 red --output assets/github.svg --use-localtime --min-distance 0.5
python3 run_page/gen_svg.py --from-db --title "$TITLE_GRID" --type grid --athlete "$ATHLETE" --output assets/grid.svg --special-color yellow --special-color2 red --special-distance 20 --special-distance2 40 --use-localtime --min-distance "$MIN_GRID_DISTANCE"
python3 run_page/gen_svg.py --from-db --type circular --use-localtime
python3 run_page/gen_svg.py --from-db --year $(date +"%Y")  --language zh_CN --title "$(date +"%Y") Running" --type github --github-style "align-firstday" --athlete "$ATHLETE" --special-distance 10 --special-distance2 20 --special-color yellow --special-color2 red --output assets/github_$(date +"%Y").svg --use-localtime --min-distance 0.5