echo "Welcome $USER"

func (){
Comd=""
echo Running Scripts .......
sleep 1
echo "Ready"

pub_ip=$(curl ipinfo.io/ip)
mac=$(ifconfig en1 | awk '/ether/{print $2}')
echo 'Basic Info:'
echo "Your MAC address is $mac"
echo "Your public ip is $pub_ip"
echo "_-_-_-_-_-_-_-_-_-_"
echo 'OS > to get information on your operating system.'
echo 'net > to look at network stats '
echo 'cpu > to check all system processes'
echo 'bat > To check battery conditions and power settings'
echo 'setup > to customize your terminal'
echo 'For more info go to https://github.com/apalkk/QuickBash'
echo '<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>'
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
elif [ "$Comd" == "bat" ]
then 
    pms
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
    ip=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
    echo "Your primary private ip (as assigned to you by the ISP) is $ip"
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
  echo "User CPU usage:"
  top -l 2 | grep -E "^CPU"
  func
}

pms (){
  echo "Currently scheduled events :"
  pmset -g sched
  echo "_-_-_-_-_-_-_-_-_-_"
  echo "Showing powerstate of every driver on device"
  pmset -g powerstate
  echo "_-_-_-_-_-_-_-_-_-_"
  echo 'cap > to get Capabilities for Battery Power.'
  echo 'sysp > to get System-wide power settings '
  echo 'check > to check workload on system and user activity'
  echo 'For more info go to https://github.com/apalkk/QuickBash'
  read Comd
  if [ "$Comd" == "cap" ]
  then 
       pmset -g cap
  elif [ "$Comd" == "sysp" ]
  then 
       pmset -g
  elif [ "$Comd" == "check" ]
  then 
       pmset -g sysload
       pmset -g useractivity
       #pmset -g log
  fi
  }

func
