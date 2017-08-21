Nvidia340xx()
{

	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	
	PKG_NVIDIA340=$(dpkg --get-selections | grep nvidia-340)

	# Install Nvidia-375
	if [ -n "$PKG_NVIDIA340" ]; then
	
		echo "[$OK_NVIDIA340]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		echo "[$INSTALL_NVIDIA340]"
		sleep 2;
		apt-get install nvidia-340 -y
		
		echo ""
		
		echo "[$NVIDIA340_SUCESS]"
		
		echo""
	
		echo "$RESTART_SYSTEM"
	
	fi


}
