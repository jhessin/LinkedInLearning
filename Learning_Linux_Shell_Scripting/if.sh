#!/bin/env bash

color=$1
if [ $color = "blue" ]
then
  echo "The color is blue"
fi

USER_GUESS=$2
COMPUTER=50

if [ $USER_GUESS -lt $COMPUTER ]
then
  echo "You're too low"
fi
