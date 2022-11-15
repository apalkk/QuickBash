echo Enter Your Name 
read Name
if [ "$Name" != $USER ]
then 
  echo "Your name isn't your username"
  exit 0
else
  echo "Correct Answer"
fi

func (){
Comd=""
echo Commencing Operations .......
sleep 1
echo Ready
echo 'OS > to get information on your operating system.'
echo 'net > to look at network stats '
echo 'cpu > to check all system processes'
echo 'setup > to create the ultimate terminal'
echo 'For more info go to https://github.com/apalkk/QuickBash'
read Comd
if [ "$Comd" == "OS" ]
then 
    os
elif [ "$Comd" == "net" ]
then 
    net
elif [ "$Comd" == "cpu" ]
then 
    cpu
elif [ "$Comd" == "setup" ]
then 
    setup
fi
}

os (){
  sw_vers
  Var=$(uname)
  echo "$Var"
  if [ "$Var" == "Darwin" ]
  then
      echo "Darwin is the core upon which macOS (previously Mac OS X, and OS X) runs on.  
      It is derived from NextSTEP, which itself is built upon a BSD and Mach core. Darwin 
      is the open source portion of macOS"
  fi
  echo Enter info to get more details about hardware
  read info
  if [ "$info" == "info" ]
  then
      system_profiler SPSoftwareDataType SPHardwareDataType
      func
  else
      func
  fi
}

net (){
    mac=$(ifconfig en1 | awk '/ether/{print $2}')
    ip=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
    pub_ip=$(curl ipinfo.io/ip)
    echo "Your MAC address is $mac"
    echo "Your primary private ip (as assigned to you by the ISP) is $ip"
    echo "Your public ip is $pub_ip"
    echo "For details about network speed and connection quality enter nst"
    echo "For details about the status of all sockets enter socs"
    read nst
    if [ "$nst" == "socs" ]
    then
      netstat -a
      func
    elif [ "$nst" == "nst" ]
    then
      net2
      func
    else
      func
    fi
}
net2 (){
  ping 8.8.8.8 -c 5
  result=$(ping -c 4 www.google.com | tail -1| awk '{print $4}' | cut -d '/' -f 2)
  echo "Average ping time to google.com is $result"
  key1=35
  key2=60
  key3=110
  if [ $(bc <<< "$result <= $key1") -eq 1 ]
  then
      echo Excellent Connection
      func
  elif [ $(bc <<< "$result <= $key2") -eq 1 ]
  then
      echo Good Connection
      func
  elif [ $(bc <<< "$result <= $key3") -eq 1 ]
  then
      echo Slow Connection
      func
  else
      echo Bad Connection
      func
  fi
}

cpu (){
  sysctl -a | grep machdep.cpu
  func
}

setup (){
  echo "load > to download Homebrew, wget, ffmpeg, imagemagick, ohmyzsh, git, tree, nmap, and iterm2 - all the coding classics"
  echo "acs  > to download aldente, hot, yt-dlp and iina to truly accesorize your device. (Make sure you have HomeBrew installed)"
  read pload
  if [ "$pload" == "load" ]
  then
      install
  elif [ "$pload" == "acs"]
  then
      brewInstall
  fi
}

install (){
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew install wget
  brew install ffmpeg
  brew install qbitorrent
  brew install tree
  brew install imagemagick
  brew install git
  brew install nmap
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  brew install iterm2
  #brew install htop
}
brewInstall (){
  brew install aldente
  brew install hot
  brew install yt-dlp
  brew install iina
}

func
