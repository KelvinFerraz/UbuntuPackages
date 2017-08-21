Wine()
{
	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	PKG_WINE=$(dpkg --get-selections | grep wine)

	# Install VirtualBox
	if [ -n "$PKG_WINE" ]; then
	
		echo "[$OK_WINE]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		
		echo "[$INSTALL_WINE]"
		sleep 2;
		apt-get install wine winetricks -y
		
		echo ""
		
		echo "[$WINE_SUCESS]"
	
	fi
}
