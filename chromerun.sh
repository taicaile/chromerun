#!/usr/bin/env bash

# make sure that no chrome is running when this script is executed.
# start chrome -> wait 5 seconds -> kill

for PROFILE in ~/.config/google-chrome/Profile*; do
    basename "$PROFILE"
    google-chrome --profile-directory="$(basename "$PROFILE")" >/dev/null 2>&1 &
    sleep 5
    kill -SIGTERM $!
done

# echo "${PIDS[@]}" | xargs -r kill -SIGTERM "$1"
# pgrep chrome | xargs -r kill -SIGTERM

# notes

# No chrome is running, the `google-chrome` command is ran in foreground.
# Otherwise, the `google-chrome` command is ran in background.
