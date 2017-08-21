TeamViewer12()
{
	echo ""
	echo "[$FUNCNAME]"
	echo ""	
	

	PKG_TEAMVIEWER=$(dpkg --get-selections | grep teamviewer:i386)
	WGET_STEAM="https://download.teamviewer.com/download/teamviewer_i386.deb"

	# Install TeamViewer 12
	if [ -n "$PKG_TEAMVIEWER" ]; then
	
		echo "[$OK_TEAMVIEWER]"
		sleep 2;
		echo ""
		
	else
		
		echo ""
		echo "[$DOWNLOAD_TEAMVIEWER]"
				
		wget $WGET_STEAM
				
		echo ""
		echo "[$INSTALL_TEAMVIEWER]"
		
		dpkg -i teamviewer_i386.deb
		apt-get install -f -y		
		
		echo ""
		echo "[$TEAMVIEWER_SUCESS]"
	
	fi
	
}
