#!/usr/bin/env bash

if [ -f "./.use-docker-compose" ]; then
    # Run Drush command through Docker.
    DRUSH_COMMAND="docker-compose exec php drush $@";
else
    # Run Drush command through Lando.
    DRUSH_COMMAND="lando drush $@";
fi

$DRUSH_COMMAND;
