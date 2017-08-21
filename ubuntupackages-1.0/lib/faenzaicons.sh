Faenza-Icons()
{

	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	
	PKG_FAENZA=$(dpkg --get-selections | grep faenza-icon-theme)

	# Install Faenza Theme
	if [ -n "$PKG_FAENZA" ]; then
	
		echo "[$OK_FAENZA]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		echo "[$INSTALL_FAENZA]"
		sleep 2;
		apt-get install faenza-icon-theme -y
		
		echo ""
		
		echo "[$FAENZA_SUCESS]"
	
	fi


}
