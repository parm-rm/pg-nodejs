#!/usr/bin/env bash
SCRIPT_DIRECTORY="$(cd "$(dirname "$0")";pwd)"
docker build --compress "--tag=parmrm/pg-nodejs:2.0" "$SCRIPT_DIRECTORY"
