#!/usr/bin/env sh
#
# Shows the commands that the given subcommand expects.
# Example: ./yarn-subsub.sh config

yarn help $1 | grep Usage | sed -e 's/[^\[]*\[\([^\[]*\)\].*/\1/' | tr '|' ' '
