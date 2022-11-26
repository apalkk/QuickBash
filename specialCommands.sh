if [ $1 = "m" ]
then 
  path=$(mdfind -onlyin . -name 'main.rs' | grep -A 1 /Users)
  nvim $path
elif [ $1 = "u" ]
  cd /Users/$(whoami)
else 
  echo "Wrong Input"
fi
