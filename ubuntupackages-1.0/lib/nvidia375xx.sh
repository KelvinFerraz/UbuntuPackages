Nvidia375xx()
{

	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	
	PKG_NVIDIA375=$(dpkg --get-selections | grep nvidia-opencl-icd-375)

	# Install Nvidia-340
	if [ -n "$PKG_NNVIDIA375" ]; then
	
		echo "[$OK_NVIDIA375]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		echo "[$INSTALL_NVIDIA375]"
		sleep 2;
		apt-get install nvidia-340 -y
		
		echo ""
		
		echo "[$NVIDIA375_SUCESS]"
		
		echo""
	
		echo "$RESTART_SYSTEM"
	
	fi


}
