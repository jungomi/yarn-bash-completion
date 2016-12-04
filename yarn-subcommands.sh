#!/usr/bin/env sh
#
# Shows all available subcommands.

yarn help | grep -o '\- [[:alpha:]-]\+' | sed -e 's/- \(.*\)$/\1/' | tr '\n' ' '
