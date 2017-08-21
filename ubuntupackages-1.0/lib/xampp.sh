Xampp(){
	
	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	# GetUrls
	WGET_XAMPP32="https://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/5.6.20/xampp-linux-5.6.20-0-installer.run"
	WGET_XAMPP64="https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/5.6.31/xampp-linux-x64-5.6.31-0-installer.run"
	
	# Check is directory
	DIR_XAMPP=/opt/lampp/xampp
	
	
	if [ -e "$DIR_XAMPP" ];then
	
		echo "$OK_XAMPP"
		sleep 2;
			
	else	
		
		#Download Xampp 64bit
		if [ $ARQ_SYS = '64-bit' ]; then
		
			echo "[$DOWNLOAD_XAMPP]" 
			sleep 2;
			wget "$WGET_XAMPP64"
			
			echo ""
						
			echo "[$NOTICE_XAMPP]"
			sleep 3;
			
			
			echo "[$INSTALL_XAMPP]"
			sleep 2;
			./xampp-linux-x64-5.6.31-0-installer.run
			
			echo ""			
			echo "[$XAMPP_SUCESS]"

		else
		
			echo "[$DOWNLOAD_XAMPP]" 
			sleep 2;
			wget "$WGET_XAMPP32"
			
			echo ""
						
			echo "[$NOTICE_XAMPP]"
			sleep 3;
			
			
			echo "[$INSTALL_XAMPP]"
			sleep 2;
			./xampp-linux-5.6.20-0-installer.run
			
			echo ""			
			echo "[$XAMPP_SUCESS]"
			
		
		fi
	
	fi
	
	
	
	

	
}
