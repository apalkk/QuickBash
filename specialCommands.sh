if [ $1 = "m" ]
then 
    nvim $(mdfind -onlyin . -name 'main' | grep -A 1 /Users)
elif [  $1 == "d"  ]
then
     yt-dlp -x --geo-bypass $2
elif [  $1 == "da"  ]
then 
     yt-dlp -x --audio-format mp3 $2
else
     echo "Wrong Input"
fi

      

