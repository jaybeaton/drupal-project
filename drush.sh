#!/usr/bin/env bash

# Run Drush command through Docker.
DRUSH_COMMAND="docker-compose exec php drush -r web/ $@";
$DRUSH_COMMAND;

