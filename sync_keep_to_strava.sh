#!/bin/bash
 set -a
source .env
set +a
python run_page/keep_to_strava_sync.py ${KEEP_MOBILE} ${KEEP_PASSWORD} ${CLIENT_ID} ${CLIENT_SECRET} ${STRAVA_REFRESH_TOKEN} --sync-types running
