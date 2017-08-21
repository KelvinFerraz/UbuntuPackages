Skype()
{
	echo ""
	echo "[$FUNCNAME]"
	echo ""	
	

	PKG_SKYPE=$(dpkg --get-selections | grep skype)
	WGET_SKYPE="http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb"

	# Install Skype
	if [ -n "$PKG_SKYPE" ]; then
	
		echo "[$OK_SKYPE]"
		sleep 2;
		echo ""
		
	else
		
		echo ""
		echo "[$DOWNLOAD_SKYPE]"
				
		wget $WGET_SKYPE
				
		echo ""
		echo "[$INSTALL_SKYPE]"
		
		dpkg -i skype-ubuntu-precise_4.3.0.37-1_i386.deb
		apt-get install -f -y		
		
		echo ""
		echo "[$SKYPE_SUCESS]"
	
	fi
	
}
