Menu(){
	
	# Used for destruction any valor save in the variable
    unset OPTION
  
    # Do not insert comments (#) before any line inside yad
      OPTION=$(													   \
       yad --list                                                  \
        --title "$MSG_TITLE"                                       \
        --width="$MSG_WIDTH" --height="$MSG_HEIGHT"        		   \
        --text "$MSG_TEXT"                                         \
        --checklist                                                \
        --print-column=2                                           \
        --column "$MSG_CHECK"                                      \
        --column "$MSG_CONF"                                   	   \
        --column "$MSG_DESC"                                       \
        --window-icon="/usr/share/pixmaps/ubuntupackages.svg"       \
        FALSE   Android-Studio    "$MSG_ANDROIDSTUDIO"             \
        FALSE	Atom			  "$MSG_ATOM"					   \
        FALSE	Brackets		  "$MSG_BRACKETS"    			   \
        FALSE   Clipgrab	      "$MSG_CLIPGRAB"    	           \
        FALSE   Compact	    	  "$MSG_COMPACT"    	           \
        FALSE   Netbeans 	   	  "$MSG_NETBEANS"                  \
        FALSE   Draw         	  "$MSG_DRAW"                      \
        FALSE   Faenza-Icons      "$MSG_FAENZA"                    \
        FALSE   Google-Chrome     "$MSG_GOOGLECHROME"              \
		FALSE	HPlip			  "$MSG_HPLIP"					   \
        FALSE   Java8             "$MSG_JAVA"                      \
        FALSE   K3b          	  "$MSG_K3B"                       \
		FALSE   Nvidia304xx       "$MSG_NVIDIA304xx"               \
        FALSE   Nvidia340xx       "$MSG_NVIDIA340xx"               \
        FALSE   Nvidia375xx       "$MSG_NVIDIA375xx"               \
        FALSE   MidiaPlayers      "$MSG_PLAYERS"                   \
        FALSE   qBittorrent   	  "$MSG_QBITORRENT"                \
        FALSE   Skype    		  "$MSG_SKYPE"              	   \
        FALSE   Steam             "$MSG_STEAM"                     \
        FALSE	Sublime-Text	  "$MSG_SUBLIMETEXT"  			   \
        FALSE   TeamViewer12      "$MSG_TEAMVIEWER"                \
        FALSE   Thunderbird       "$MSG_THUNDERBIRD"               \
        FALSE   Ubuntu-Restricted "$MSG_UBUNTURESTRICTED"          \
        FALSE   VirtualBox        "$MSG_VIRTUALBOX"                \
        FALSE   Wine     		  "$MSG_WINE"               	   \
        FALSE   Xampp             "$MSG_XAMPP"                     \
		2> /dev/null)		
}
