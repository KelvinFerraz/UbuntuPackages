Google-Chrome(){
	
	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	# GetUrl
	WGET_XAMPP="https://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/5.6.20/xampp-linux-5.6.20-0-installer.run"
	
	# Check is package have installed
	PKG_CHROME=$( dpkg --get-selections | grep google-chrome-stable)
	PKG_CHROMIUM=$( dpkg --get-selections | grep chromium-browser)
	
	
	if [ -n "$PKG_CHROME" ];then
	
		echo "$OK_CHROME"
		sleep 2;
			
	else	
			#Download Google Chrome 64bit
		if [ $ARQ_SYS = '64-bit' ]; then
		
			echo "[$DOWN_CHROME]" 
			sleep 2;
			wget "$GOOGLE_CHROME"
			
			echo ""
			
			echo "[$INSTALL_CHROME]"
			sleep 2;
			dpkg -i google-chrome-stable_current_amd64.deb -y | apt-get -f install -y
			
			echo ""
			
			echo "[$CLR_FILES]" ; sleep 3
			rm -rf *.deb | tee >> /var/log/ubuntupackages.log

			echo ""
			
			echo "[$CHROME_SUCESS]"

		else
		
			if [ -n "$PKG_CHROMIUM" ];then
		
				echo "$OK_CHROMIUM"
				sleep 2;
		
			else
				
				echo "[$REPO_UPD]"
				sleep 2;
				apt-get update
				
				echo ""
				
				echo "[$INSTALL_CHROMIUM]"
				sleep 2;
				apt-get install chromium-browser -y
					
				echo "[$CLR_FILES]"
				sleep 3;
				apt-get autoremove -y
				
				echo ""
				
				echo "[$CHROMIUM_SUCESS]"
			
			fi
		
		fi
	
	fi
	
	
	
	

	
}
