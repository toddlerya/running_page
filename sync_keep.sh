#!/bin/bash
 set -a
source .env
set +a
python run_page/keep_sync.py ${KEEP_MOBILE} ${KEEP_PASSWORD} --sync-types running
