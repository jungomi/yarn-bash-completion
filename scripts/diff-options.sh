#!/usr/bin/env sh
#
# Shows the options that are only available to the subcommand.
# Example: ./yarn-diff-options.sh add

global=$(yarn help | tr ',' '\n' | grep -o ' \-[[:alpha:]-]\+' | tr -d '\n')
sub=$(yarn help $1 | tr ',' '\n' | grep -o ' \-[[:alpha:]-]\+' | tr -d '\n')

echo ${sub#"$global"}
