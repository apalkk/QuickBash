read num
if [ num = "1" ]
then 
  path = $(mdfind -onlyin . -name 'main.rs' | grep -A 1 /Users)
  cd $path
elif [ num = "2" ]
fi
