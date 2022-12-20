if [ $1 = "m" ]
then 
  nvim $(mdfind -onlyin . -name 'main' | grep -A 1 /Users)
elif [ $1 = "u" ]
  cd /Users/$(whoami)
else 
  echo "Wrong Input"
fi
