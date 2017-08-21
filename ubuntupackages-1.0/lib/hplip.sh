HPlip()
{
	
	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	
	PKG_HPLIP=$(dpkg --get-selections | grep hplip-gui)

	# Install HPlip
	if [ -n "$PKG_HPLIP" ]; then
	
		echo "[$OK_HPLIP]"
		sleep 2;
		echo ""
		
	else
		
		echo "[$INSTALL_HLPIP]"
		sleep 2;
		apt-get install hplip-gui hplip -y
		
		echo ""
		
		echo "[$HPLIP_SUCESS]"
	
	fi



}
