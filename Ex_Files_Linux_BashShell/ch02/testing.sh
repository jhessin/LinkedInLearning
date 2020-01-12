val=$1
if 
# test $1 -gt 5
(( val > 5 )) # This is equivalent
then
echo greater
else
echo lesser
fi

