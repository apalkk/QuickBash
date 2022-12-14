# QuickBash
A bash command system which allows users to quickly setup a coding environment on your Mac devices.

## How To Get QuickBash Started
Note: Whenever anything is put in quotes copy the characters in the quotes, and not the quotes themselves.

* Open Your Terminal
* Then enter "```git clone https://github.com/apalkk/QuickBash.git```"
* Enter "```cd /Users/$(whoami)/QuickBash```"
* Then enter "```bash start.sh```". (Ignore the errors)
* Then close your terminal and open it again.
* **And That's It! You're All Done! Type in "```qset```" and hit enter to start the program.**

## A Brief Tutorial (If you want to setup your terminal)
* To run the script, enter "```qset```"
* The program will ask for your username (type "```whoami```" to get it if you don't know it yet)
* Then a bunch of options will show up in this format : ```net > show all network settings```
* This means that if you type in "```net```" you will be shown all the network settings
* Two commands are shown : "```load```" and "```acs```". Find what exactly these commands do in the command documentation below.

## Master Commands
~ *Master commands are special commands which can be accesed from anywhere. Unlike ordinary commands like ```net``` which can only be accesed by first running the QuickBash script using the master command ```qinfo```, master commands can be used without running any script, anywhere in the terminal. Every ordinary command requires a master command to be used before it.*

* ```qinfo``` > Find detailed information about everything related to your computer.
* ```qlang``` > Automatically sets up the build system of any language you want to use. 
* ```qset```  > Programmer essentials and erminal customization with all the bells and whistles.
* ```qcrypt``` > Encrypt and decrypt files with AES256 encryption with passkeys.
* ```qcom``` > A special command to quickly manipulate files. For example: 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;```qcom m``` - Opens the main file in your current dir. Useful if you're using a massive build system like cargo or cmake. If there are multiple main files it will open the first one mdfind reveals.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;```qcom d``` - Downloads any youtube video in the webm video format as long as you have youtube-dlp installed.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;```qcom da``` - Downloads any youtube video in the mp3 audio format as long as you have youtube-dlp installed.
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;```qcom cmake projectname``` - C


## Command Documentation
* Load -> It downloads several cli programs essential to all kinds of devs like:
    *  Git = https://en.wikipedia.org/wiki/Git ( You're not a real programmer until you've used git)
    *  Homebrew = https://en.wikipedia.org/wiki/Homebrew_(package_manager) (Package Manager)
    *  ffmpeg = https://en.wikipedia.org/wiki/FFmpeg ( You don't find ffmpeg, ffmpeg finds you )
    *  ImageMagick = https://en.wikipedia.org/wiki/ImageMagick
    *  ohmyzsh = https://ohmyz.sh (Endless customization > https://github.com/ohmyzsh/ohmyzsh/wiki/Themes ,https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)
    *  tree = https://linuxhint.com/bash-tree-command
    *  nvim = https://neovim.io ( Upgraded vim )
    *  nmap = https://en.wikipedia.org/wiki/Nmap
    *  iterm2 = https://en.wikipedia.org/wiki/ITerm2 ( A second terminal with more customization )
