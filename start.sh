usr=$(whoami)
#echo "alias cSet='bash /Users/$usr/QuickBash/core.sh'"
echo "#The three lines following this line and this line itself belongs to QuickBash" >> ~./zshrc
echo "alias qinfo='bash /Users/$usr/QuickBash/core.sh'" >> ~./zshrc
echo "alias qlang='bash /Users/$usr/QuickBash/lang.sh'" >> ~./zshrc
echo "alias qset='bash /Users/$usr/QuickBash/setup.sh'" >> ~./zshrc
source ~/.zshrc
