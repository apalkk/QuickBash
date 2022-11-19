# QuickBash
A bash command system which allows users to instantly setup the best coding experience on your Linux & Mac devices.

## How To Get QuickBash Started
Note: Whenever anything is put in quotes copy the characters in the quotes, and not the quotes themselves.\

* Open Your Terminal
* Then enter "```git clone https://github.com/apalkk/QuickBash.git```"
* Enter "```cd /Users/$(whoami)/QuickBash```"
* Then enter "```bash start.sh```"
* **And That's It! You're All Done! Type in "```qset```" and hit enter to start the program.**

## A Brief Tutorial
* To run the script, enter "```qset```"
* The program will ask for your username (type "```whoami```" to get it if you don't know it yet)
* Then a bunch of options will show up in this format : ```net > show all network settings```
* This means that if you type in "```net```" you will be shown all the network settings
* Two commands are shown : "```load```" and "```acs```". Find what exactly these commands do in the command documentation below.

## Master Commands
~ *Master commands are special commands which can be accesed from anywhere. Unlike ordinary commands like ```net``` which can only be accesed by first running the QuickBash script using the master command ```qinfo```, master commands can be used without running any script, anywhere in the terminal. Every ordinary command requires a master command to be used before it.*

* ```qinfo``` > Find detailed information about everything related to your computer.
* ```qlang``` > Automatically sets up the build system of any language you want to use. 
* ```qset```  > Setup the ultimate programming environment on your computer, complete with all the bells and whistles.

## Command Documentation
* Load -> It downloads several cli programs essential to all kinds of devs like:
    *  Git = https://en.wikipedia.org/wiki/Git ( You're not a real programmer until you've used git)
    *  Homebrew = https://en.wikipedia.org/wiki/Homebrew_(package_manager) (Package Manager)
    *  ffmpeg = https://en.wikipedia.org/wiki/FFmpeg ( You don't find ffmpeg, ffmpeg finds you )
    *  ImageMagick = https://en.wikipedia.org/wiki/ImageMagick
    *  ohmyzsh = https://ohmyz.sh (Endless customization > https://github.com/ohmyzsh/ohmyzsh/wiki/Themes ,https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)
    *  tree = https://linuxhint.com/bash-tree-command/ ( A very useful command which often comes in handy )
    *  nmap = https://en.wikipedia.org/wiki/Nmap
    *  iterm2 = https://en.wikipedia.org/wiki/ITerm2 ( A second terminal with even more customization )
