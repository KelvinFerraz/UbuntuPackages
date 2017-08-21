VirtualBox()
{
	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	PKG_VIRTUALBOX=$(dpkg --get-selections | grep virtualbox)

	# Install VirtualBox
	if [ -n "$PKG_VIRTUALBOX" ]; then
	
		echo "[$OK_VIRTUALBOX]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		
		echo "[$INSTALL_VIRTUALBOX]"
		sleep 2;
		apt-get install virtualbox -y
		
		echo ""
		
		echo "[$VIRTUALBOX_SUCESS]"
	
	fi
}
