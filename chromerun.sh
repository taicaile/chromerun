#!/usr/bin/env bash

for PROFILE in ~/.config/google-chrome/Profile*
do
    google-chrome --profile-directory="$(basename "$PROFILE")" >/dev/null 2>&1
done

sleep 5

# echo "${PIDS[@]}" | xargs -r kill -SIGTERM "$1"
pgrep chrome | xargs -r kill -SIGTERM
