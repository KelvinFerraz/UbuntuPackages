Ubuntu-Restricted()
{
	echo ""
	echo "[$FUNCNAME]"
	echo ""	
	

	PKG_UBUNTURESTRICTED=$(dpkg --get-selections | grep ubuntu-restricted-extras)


	# Install Thunderbird
	if [ -n "$PKG_UBUNTURESTRICTED" ]; then
	
		echo "[$OK_UBUNTURESTRICTED]"
		sleep 2;
		echo ""
		
	else

		echo ""
		echo "[$INSTALL_UBUNTURESTRICTED]"
		apt-get install ubuntu-restricted-extras -y
		
		echo ""
		echo "[$UBUNTURESTRICTED_SUCESS]"
		sleep 2;
	
	fi
	
}
