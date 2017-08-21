Thunderbird()
{
	echo ""
	echo "[$FUNCNAME]"
	echo ""	
	

	PKG_THUNDERBIRD=$(dpkg --get-selections | grep thunderbird)


	# Install Thunderbird
	if [ -n "$PKG_THUNDERBIRD" ]; then
	
		echo "[$OK_THUNDERBIRD]"
		sleep 2;
		echo ""
		
	else

		echo ""
		echo "[$INSTALL_THUNDERBIRD]"
		apt-get install thunderbird -y
		
		echo ""
		echo "[$TEAMVIEWER_SUCESS]"
		sleep 2;
	
	fi
	
}
