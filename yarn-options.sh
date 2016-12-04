#!/usr/bin/env sh
#
# Shows the options of the given subcommand or the global options if no
# subcommand is given.
# Example: ./yarn-options.sh add

yarn help $1 | tr ',' '\n' | grep -o ' \-[[:alpha:]-]\+' | tr -d '\n'
