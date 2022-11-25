func (){
Comd=""
echo Ready
echo 'py > Download anaconda and python3.'
echo 'cpp > Download cmake and a c++ compiler via xcode '
echo 'rust > Download rust environment with curl and a c++ compiler via xcode'
echo 'java > Download java environment via homebrew'
read Comd
if [ "$Comd" == "py" ]
then 
    pyInstall
elif [ "$Comd" == "cpp" ]
then 
    cppInstall
elif [ "$Comd" == "rust" ]
then 
    rustInstall
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

rustInstall (){
  curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
  xcode-select --install

}

cppInstall (){
  brew install cmake
  brew update && brew upgrade
  xcode-select --install
}

javaInstall (){
  brew install java
  java --version
  echo "Use symlink if operation could not be completed: sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk \
     /Library/Java/JavaVirtualMachines/openjdk.jdk"
}

func
