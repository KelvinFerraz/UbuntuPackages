qBittorrent()
{
	echo ""
	echo "[$FUNCNAME]"
	echo ""	
	

	PKG_QBITTORRENT=$(dpkg --get-selections | grep qbittorrent)

	# Install qBittorrent
	if [ -n "$PKG_QBITTORRENT" ]; then
	
		echo "[$OK_QBITTORRENT]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		echo "[$INSTALL_QBITTORRENT]"
		sleep 2;
		apt-get install qbittorrent -y
		
		echo ""
		echo "[$QBITTORRENT_SUCESS]"
	
	fi
	
}
