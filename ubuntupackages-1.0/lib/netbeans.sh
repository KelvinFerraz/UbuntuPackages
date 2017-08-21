Netbeans()
{
	echo ""
	echo "[$FUNCNAME]"
	echo ""

	# Discovery if package is installed
	PKG_NETBEANS=$(dpkg --get-selections | grep netbeans)
	
	# Install Netbeans
	if [ -n "$PKG_NETBEANS" ]; then
	
		echo "[$OK_NETBEANS]"
		echo ""
				
	else		
		echo ""
		
		echo "[$INSTALL_NETBEANS]"
		sleep 2;
		apt-get install wine -y
		
		echo ""		
		echo "[$NETBEANS_SUCESS]"
	
	fi

}
