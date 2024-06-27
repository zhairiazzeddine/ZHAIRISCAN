#!/bin/bash
# Copy@right ZHAIRI AZZEDDINE see License.txt
#############################################################################################
# zhairiscan Install script.
# Install tool in linux os.
# ZHAIRI AZZEDDINE 2024
#############################################################################################
# PATHs:
# Install directory => default: /usr/share/zhairiscan/
# Bash completion => /etc/bash_completion.d/zhairiscan
# Sym link => /usr/bin/zhairiscan
# Readme => /usr/share/doc/zhairiscan/README.md
# Desktop entry => /usr/share/applications/zhairiscan.desktop
# Icons => /usr/share/icons/hicolor/
# License => /usr/share/doc/zhairiscan/License.txt
#############################################################################################
##
echo "[ ]=======================================================================[ ]";
echo "[ ]                      ZHAIRI AZZEDDINE                                 [ ]";
echo "[ ]                  zhairiscan Tool Install Script                       [ ]";
echo "[ ]=======================================================================[ ]";
echo "[ ] MIT License                                                           [ ]";
echo "[ ] Copyright (c) 2024 ZHAIRI AZZEDDINE                                   [ ]";
echo "[ ]                                                                       [ ]";
echo "[ ] Permission is hereby granted, free of charge, to any person obtaining [ ]";
echo "[ ] a copy of this software and associated documentation   (zhairiscan),  [ ]";
echo "[ ] to dealin the Software without restriction, including without         [ ]";
echo "[ ] limitation the rights to use, copy, modify, merge, publish,           [ ]";
echo "[ ] distribute, sublicense, and/or sellcopies of the Software, end to     [ ]";
echo "[ ] permit persons to whom the Software is furnished to do so, subject    [ ]";
echo "[ ] to the following conditions:                                          [ ]";
echo "[ ]                                                                       [ ]";
echo "[ ] The above copyright notice and this permission notice shall be        [ ]";
echo "[ ] included in all copies or substantial portions of the Software.       [ ]";
echo "[ ]                                                                       [ ]";
echo "[ ] THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS [ ]";
echo "[ ] OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF            [ ]";
echo "[ ] MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT [ ]";
echo "[ ] IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY  [ ]";
echo "[ ] CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,  [ ]";
echo "[ ] TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE     [ ]";
echo "[ ] SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                [ ]";
echo "[ ]=======================================================================[ ]";

echo "";

### Check system compatibility
if [ -d "/usr/bin/" ];
then
echo "[!] By installing this software you agree to our terms! [Y/n]: ";
read baba
if [ "$baba" == "y" ] || [ "$baba" == "Y" ] || [ -z "$baba" ]; 
then
  echo " "
else
  echo "[!] Installation aborted!";
  exit
fi

### Checking previous instalation
echo "[i] Checking directories..."
if [ -e "/usr/bin/zhairiscan" ];
then
echo "[!] A previous installation was found Do you want to replace it? [Y/n]: "
read mama
if [ "$mama" == "y" ] || [ "$mama" == "Y" ] || [ -z "$mama" ];  
then
 rm "/usr/bin/zhairiscan"
else
 echo "[!] Installation aborted!";
 exit
fi
fi

### Setting instalation path
current=$(dirname "$0")
echo "[!] Where do you want to install zhairiscan?";
echo "    Set path or press enter to use default [/usr/share/]: "
read refdir
if [ -z "$refdir" ];
then
  if [ ! -d "/usr/share/zhairiscan/" ];
  then
    mkdir "/usr/share/zhairiscan/";  
  fi
  chmod +x "/usr/share/zhairiscan/";
  refdir="/usr/share/zhairiscan/";
fi

if [ ! -d $refdir ];
then
  until [ -d $refdir ];
  do
   echo "[!] $refdir does not exist!";
   echo "[!] Set path or press enter to use default [/usr/share/]: "
   read refdir
  done
fi
      
## Begin instalation
echo "[!] Installing.. Plaise wait...";

if [ $current != $refdir ];
then
 sleep 1 && echo "[i] Moving files to $refdir ...                         [ 5%]";
 cp -r $current/* $refdir;
fi 

 sleep 1 && echo "[i] Creating symbolic link...                                      [12%]";
 echo "#!/bin/bash 
 perl $refdir/zhairiscan.pl" '${1+"$@"}' > zhairiscan;
 chmod +x zhairiscan;
 cp zhairiscan /usr/bin/;
 rm zhairiscan;
 sleep 1 && echo "[i] Creating Completion link...                                    [18%]";
 if [ -d "/etc/bash_completion.d" ] ;
 then
   chmod +x $refdir/inc/user/zhairiscan;
   cp $refdir/inc/user/zhairiscan /etc/bash_completion.d/;
 fi
 
 sleep 1 && echo "[i] Setting update files...                                        [30%]";
 echo `date +%Y%j` >> $refdir/inc/user/uplog.log;
 echo -en "\n" >> $refdir/inc/user/version.log;

 sleep 1 && echo "[i] Creating shirt links...                                        [38%]";
 if [ ! -d "/usr/share/applications" ]; 
 then
   mkdir "/usr/share/applications";  
 fi
 chmod +x "/usr/share/applications";

 cp $refdir/inc/user/desktop/zhairiscan.desktop /usr/share/applications/;
 if [ ! -e "/usr/share/applications/zhairiscan.desktop" ]; 
 then
   echo "Warning! Failed to add direct access to the applications menu!";  
 fi

 sleep 1 && echo "[i] Copying icons...                                               [47%]";
 if [ ! -d "/usr/share/icons" ]; 
 then
   mkdir "/usr/share/icons";  
 fi
 chmod +x "/usr/share/icons";
 
 if [ ! -d "/usr/share/icons/hicolor" ]; 
 then
   mkdir "/usr/share/icons/hicolor";  
 fi
 chmod +x "/usr/share/icons/hicolor";
 
 
 if [ ! -d "/usr/share/icons/hicolor/16x16" ]; 
 then
   mkdir "/usr/share/icons/hicolor/16x16";  
 fi
 chmod +x "/usr/share/icons/hicolor/16x16";
 if [ ! -d "/usr/share/icons/hicolor/16x16/apps" ]; 
 then
   mkdir "/usr/share/icons/hicolor/16x16/apps";  
 fi
 chmod +x "/usr/share/icons/hicolor/16x16/apps";
 cp $refdir/inc/user/desktop/16x16/zhairiscan-menu.png /usr/share/icons/hicolor/16x16/apps/;
 
 if [ ! -d "/usr/share/icons/hicolor/22x22" ]; 
 then
   mkdir "/usr/share/icons/hicolor/22x22";  
 fi
 chmod +x "/usr/share/icons/hicolor/22x22";
 if [ ! -d "/usr/share/icons/hicolor/22x22/apps" ]; 
 then
   mkdir "/usr/share/icons/hicolor/22x22/apps";  
 fi
 chmod +x "/usr/share/icons/hicolor/22x22/apps";
 cp $refdir/inc/user/desktop/22x22/zhairiscan-menu.png /usr/share/icons/hicolor/22x22/apps/;
 
 if [ ! -d "/usr/share/icons/hicolor/24x24" ]; 
 then
   mkdir "/usr/share/icons/hicolor/24x24";  
 fi
 chmod +x "/usr/share/icons/hicolor/24x24";
 if [ ! -d "/usr/share/icons/hicolor/24x24/apps" ]; 
 then
   mkdir "/usr/share/icons/hicolor/24x24/apps";  
 fi
 chmod +x "/usr/share/icons/hicolor/24x24/apps";
 cp $refdir/inc/user/desktop/24x24/zhairiscan-menu.png /usr/share/icons/hicolor/24x24/apps/;
 
 if [ ! -d "/usr/share/icons/hicolor/48x48" ]; 
 then
   mkdir "/usr/share/icons/hicolor/48x48";  
 fi
 chmod +x "/usr/share/icons/hicolor/48x48";
 if [ ! -d "/usr/share/icons/hicolor/48x48/apps" ]; 
 then
   mkdir "/usr/share/icons/hicolor/48x48/apps";  
 fi
 chmod +x "/usr/share/icons/hicolor/48x48/apps";
 cp $refdir/inc/user/desktop/48x48/zhairiscan-menu.png /usr/share/icons/hicolor/48x48/apps/;
 
 if [ ! -d "/usr/share/icons/hicolor/256x256/" ]; 
 then
   mkdir "/usr/share/icons/hicolor/256x256/";  
 fi
 chmod +x "/usr/share/icons/hicolor/256x256/";
 if [ ! -d "/usr/share/icons/hicolor/256x256//apps" ]; 
 then
   mkdir "/usr/share/icons/hicolor/256x256//apps";  
 fi
 chmod +x "/usr/share/icons/hicolor/256x256//apps";
 cp $refdir/inc/user/desktop/256x256//zhairiscan-menu.png /usr/share/icons/hicolor/256x256//apps/;
 
 ########################################################################################################################

 if [ ! -d "/usr/share/doc/zhairiscan" ]; then
   mkdir "/usr/share/doc/zhairiscan";
 fi
 ########################################################################################################################
 
 sleep 1 && echo "[i] Copying README.md to /usr/share/doc/zhairiscan...                  [75%]";
 chmod +x "/usr/share/doc/zhairiscan/";
 chmod +x $refdir/README.md;
 cp $refdir/README.md /usr/share/doc/zhairiscan/;
 sleep 1 && echo "[i] Copying License.txt to /usr/share/doc/zhairiscan...                [83%]";
 chmod +x $refdir/License.txt;
 cp $refdir/License.txt /usr/share/doc/zhairiscan/;
 sleep 1 && echo "[i] Removing install files...                                      [92%]";
 rm $refdir/inc/user/zhairiscan;
 rm $refdir/install.sh; 
 if [ -d "$refdir/zhairiscan_install" ];
 then
   rm -r $refdir/zhairiscan_install;
 fi
 rm $refdir/README.md;
 rm $refdir/License.txt;
 if [ -d "$refdir/inc/user/desktop" ]; 
 then
   rm -r $refdir/inc/user/desktop;
 fi
 if [ -e "$refdir/zhairiscan" ] || [ -e "$refdir/zhairiscan.pl" ];
 then     
     
 echo "";
 echo "+======================================================================+";
 echo "| 1 INTERACTIVE: You will use zhairiscan by simple interactive options.    |";
 echo "| 2 ADVANCED:    You will use advanced zhairiscan by command line.         |";
 echo "+======================================================================+";
 echo "|   NOTE: This setting can be changed in user configation!             |";
 echo "+======================================================================+";
 echo "";
 echo "[!] How do you like to boot the tool? [Default 2]: ";

 read modeChoice
 if [ "$modeChoice" == "1" ]; 
 then
  sed -i 's/zhairiscan;/zhairiscan --interactive;/g' /usr/share/applications/zhairiscan.desktop;
  echo "interactive on" >> $refdir/inc/user/userSetting;
 fi
 sleep 1 && echo "[i] Tool successfully installed! Starting...                      [100%]";
 sleep 3;
 zhairiscan --update;
else
 echo "[!] Installation failed!! ";
 exit
fi
else
 echo "[!] Tool cannot be installed on your system! Use it as portable!";
fi
