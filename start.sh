usr=$(whoami)
#echo "alias cSet='bash /Users/$usr/QuickBash/core.sh'"
echo "#The two lines line following this line belongs to QuickBash" >> ~./zshrc
echo "alias qinfo='bash /Users/$usr/QuickBash/core.sh'" >> ~./zshrc
echo "alias qlang='bash /Users/$usr/QuickBash/lang.sh'" >> ~./zshrc
echo "alias qset='bash /Users/$usr/QuickBash/setup.sh'" >> ~./zshrc
source ~/.zshrc
