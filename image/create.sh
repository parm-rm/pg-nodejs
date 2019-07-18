#!/usr/bin/env bash
SCRIPT_DIRECTORY="$(cd "$(dirname "$0")";pwd)"
docker build --compress "--tag=pg-nodejs:latest" "$SCRIPT_DIRECTORY"
