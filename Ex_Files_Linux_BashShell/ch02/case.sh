#!/bin/bash
echo -n "Print message? "
while true
do
    read ans
    case $ans in
    yes|YES|y|Y ) echo Will print the message
                  echo The Message
                  break
                  ;;
    [nN][oO]    ) echo Will NOT print the message 
                  break
                  ;;
    *           ) echo Yes or No of some form please ;;
    esac
done
