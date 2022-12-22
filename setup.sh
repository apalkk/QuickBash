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
echo "load > to download HOMEBREW, wget, ffmpeg, imagemagick, ohmyzsh, git, tree, nmap, and iterm2 - all the essentials"
echo "acs  > to download aldente, hot, yt-dlp and iina to accesorize your terminal. (Make sure you have HomeBrew installed)"
echo "smv  > to download telegram, signal, and discord (Make sure you have HomeBrew installed)"
read Comd
if [ "$Comd" == "load" ]
then 
    install
elif [ "$Comd" == "acs" ]
then 
    brewInstall
elif [ "$Comd" == "smv" ]
then 
    smv
elif [ "$Comd" == "setup" ]
then 
    setup
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
  brew install nvim
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

socials (){
  brew install --cask telegram
  brew install --cask signal
  brew install --cask discord
}

func
