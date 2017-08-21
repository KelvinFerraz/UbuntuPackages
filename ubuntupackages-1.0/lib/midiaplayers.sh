MidiaPlayers()
{
	
	echo ""
	echo "[$FUNCNAME]"
	echo ""	
	
	# Players video
	PKG_SMPLAYER=$(dpkg --get-selections | grep smplayer)
	PKG_VLC=$(dpkg --get-selections | grep vlc)

	# Music Players
	PKG_SPOTIFY=$(dpkg --get-selections | grep spotify-client)
	PKG_BANSHEE=$(dpkg --get-selections | grep banshee)
	


	# Install Smplayer
	if [ -n "$PKG_SMPLAYER" ]; then
	
		echo "[$OK_SMPLAYER]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		echo "[$INSTALL_SMPLAYER]"
		sleep 2;
		apt-get install smplayer -y
		
		echo ""
		
		echo "[$SMPLAYER_SUCESS]"
	
	fi
	
	
	# Install Vlc
	if [ -n "$PKG_VLC" ]; then
	
		echo "[$OK_VLC]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		echo "[$INSTALL_VLC]"
		sleep 2;
		apt-get install vlc -y
		
		echo ""
		
		echo "[$VLC_SUCESS]"
	
	fi
	
	# Install Spotify
	if [ -n "$PKG_SPOTIFY" ]; then
	
		echo "[$OK_SPOTIFY]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		echo "[$REPO_UPD]"
		echo ""
			
		# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
		apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410 -y

		# 2. Add the Spotify repository
		echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list

		# 3. Update list of available packages
		apt-get update

		
		echo ""
		echo "[$INSTALL_SPOTIFY]"
		sleep 2;
	
		# 4. Install Spotify
		apt-get install spotify-client -y
		apt-get install -f -y		
		
		echo ""		
		echo "[$SPOTIFY_SUCESS]"	
	
	
	fi
	
	# Install Banshee
	if [ -n "$PKG_BANSHEE" ]; then
	
		echo "[$OK_BANSHEE]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		echo "[$INSTALL_BANSHEE]"
		sleep 2;
		apt-get install banshee -y
		
		echo ""
		
		echo "[$BANSHEE_SUCESS]"
	
	fi


}
