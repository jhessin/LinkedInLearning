#!/bin/bash

unset x a
a=${x:-Hotdog}
echo a is $a
echo x is $x

unset x a
a=${x:=Hotdog}
echo a is $a
echo x is $x

unset x a
${x:?}
echo Will not get here


