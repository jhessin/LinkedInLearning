#!/bin/bash
ls -l /etc | head | while
     read a b c d
do
     echo owner is $c
done

