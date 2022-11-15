func (){
Comd=""
echo Ready
echo 'py > to get information on your operating system.'
echo 'cpp > to look at network stats '
echo 'js > to check all system processes'
echo 'java > to create the ultimate terminal'
echo 'For more info go to '
read Comd
if [ "$Comd" == "py" ]
then 
    pyInstall
elif [ "$Comd" == "cpp" ]
then 
    cppInstall
elif [ "$Comd" == "js" ]
then 
    jsInstall
elif [ "$Comd" == "java" ]
then 
    javaInstall
fi
}

pyInstall (){
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew install --cask anaconda
  sed -i '1s/^/export PATH="/usr/local/anaconda3/bin:$PATH" /' ~.zshrc
  source ~/.zshrc
  brew update && brew upgrade
  brew install python3
}

func
