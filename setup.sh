usr=$(whoami)
#echo "alias cSet='bash /Users/$usr/QuickBash/core.sh'"
echo "#The line following this line belongs to QuickBash" >> ~./zshrc
echo "alias cSet='bash /Users/$usr/bash_scripts/core.sh'" >> ~./zshrc
source ~/.zshrc
