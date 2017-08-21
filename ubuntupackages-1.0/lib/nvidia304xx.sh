Nvidia304xx()
{

	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	
	PKG_NVIDIA304=$(dpkg --get-selections | grep nvidia-304)

	# Install Nvidia-304
	if [ -n "$PKG_NVIDIA304" ]; then
	
		echo "[$OK_NVIDIA304]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		echo "[$INSTALL_NVIDIA304]"
		sleep 2;
		apt-get install nvidia-304 -y
		
		echo ""
		
		echo "[$NVIDIA304_SUCESS]"
		
		echo""
	
		echo "$RESTART_SYSTEM"
	
	fi


}
