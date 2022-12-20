if [ $1 = "m" ]
then 
    nvim $(mdfind -onlyin . -name 'main' | grep -A 1 /Users)
fi
