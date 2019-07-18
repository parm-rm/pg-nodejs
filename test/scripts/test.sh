#!/usr/bin/env bash

/docker-entrypoint.sh postgres &
PG_PID=$!

cd /repo
cp .env.example .env

npm i
npm run migration-ci
EXIT_CODE=$?
kill $PG_PID

exit $EXIT_CODE
