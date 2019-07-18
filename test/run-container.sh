#!/usr/bin/env bash
SCRIPT_DIRECTORY="$(cd "$(dirname "$0")";pwd)"

docker run --rm "--volume=${SCRIPT_DIRECTORY}/scripts:/scripts" pg-nodejs:latest /scripts/test.sh
