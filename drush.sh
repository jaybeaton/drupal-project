#!/usr/bin/env bash

SITE=$1

if [[ $SITE == @* ]]; then
    SITE=${SITE:1}
fi

# Remove first argument.
shift;

# Run drush command through docker.
DRUSH_COMMAND="docker-compose exec php drush @local-$SITE $@";
$DRUSH_COMMAND;
