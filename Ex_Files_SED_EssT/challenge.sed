#!/usr/bin/env -S sed dukeofyork.txt -f

# This script capitalizes the first three words of dukeofyork.txt
s/ /#/3
h
s/#.*$//
y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/
G
s/\n.*#/ /
