k3b()
{
	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	PKG_K3B=$(dpkg --get-selections | grep k3b)

	# Install K3B
	if [ -n "$PKG_K3B" ]; then
	
		echo "[$OK_K3B]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		
		echo "[$INSTALL_K3B]"
		sleep 2;
		apt-get install k3b -y
		
		echo ""
		
		echo "[$K3B_SUCESS]"
	
	fi
}
