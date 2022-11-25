usr=$(whoami)
#echo "alias cSet='bash /Users/$usr/QuickBash/core.sh'"
echo "#The five lines following this line and this line itself belongs to QuickBash" >> ~/.zshrc
echo "alias qinfo='bash /Users/$usr/QuickBash/core.sh'" >> ~/.zshrc
source ~/.zshrc
echo "alias qlang='bash /Users/$usr/QuickBash/lang.sh'" >> ~/.zshrc
source ~/.zshrc
echo "alias qset='bash /Users/$usr/QuickBash/setup.sh'" >> ~/.zshrc
source ~/.zshrc
echo "alias qcrypt='bash /Users/$usr/QuickBash/crypt.sh'" >> ~/.zshrc
source ~/.zshrc
echo "alias qcom='bash /Users/$usr/QuickBash/specialCommands.sh'" >> ~/.zshrc
source ~/.zshrc
echo "#<<Quickbash aliases end<<" >> ~/.zshrc
