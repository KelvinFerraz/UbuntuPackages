Steam()
{
	echo ""
	echo "[$FUNCNAME]"
	echo ""	
	

	PKG_STEAM=$(dpkg --get-selections | grep teamviewer:i386)
	WGET_STEAM="https://download.teamviewer.com/download/teamviewer_i386.deb"

	# Install Steam
	if [ -n "$PKG_STEAM" ]; then
	
		echo "[$OK_STEAM]"
		sleep 2;
		echo ""
		
	else
		
		echo ""
		echo "[$DOWNLOAD_STEAM]"
				
		wget $WGET_STEAM
				
		echo ""
		echo "[$INSTALL_STEAM]"
		
		dpkg -i steam_lastest.deb
		apt-get install -f -y		
		
		echo ""
		echo "[$STEAM_SUCESS]"
	
	fi
	
}
