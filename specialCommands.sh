if [  $1 == "m"  ]
then 
  nvim $(mdfind -onlyin . -name 'main' | grep -A 1 /Users)
elif [  $1 == "d"  ]
then
  yt-dlp -x --geo-bypass $2
elif [ $1 == "da"  ]
then
  yt-dlp -x --audio-format mp3 $2
elif [  $1 == "cmake"  ]
then
  mkdir $2
  cd $2
  touch CMakeLists.txt
  echo "cmake_minimum_required(VERSION 3.15)" >> CMakeLists.txt
  echo "project($2)" >> CMakeLists.txt 
  echo "cmake_minimum_required(VERSION 3.15)" >> CMakeLists.txt
  echo "add_executable($2 $(pwd)/src/main.cpp)" >> CMakeLists.txt
  echo "#find_package()" >> CMakeLists.txt
  echo "#target_incldue_directories()" >> CMakeLists.txt
  echo "#target_link_directories()" >> CMakeLists.txt
  echo "#target_link_libraries()" >> CMakeLists.txt
  mkdir src
  cd src
  touch main.cpp
  cd ../..
else
  echo "Wrong Input"
fi
