Brackets(){
	
		echo ""
		echo "[$FUNCNAME]"
		echo ""
		
	# Check package
	PKG_BRACKETS=$(dpkg --get-selections | grep brackets)
		
	
	# Install IDE Brackets
	if [ -n "$PKG_BRACKETS" ]; then
	
		echo "$INSTALLED_BRACKETS"
		sleep 2;			
	else
		
		# Add Repository of Brackets
		add-apt-repository ppa:webupd8team/brackets -y
		
		# Update Repository
		echo "$REPO_UPD"
		echo ""
		apt-get update
		
		# Install Brackets
		echo "$INSTALL_BRACKETS"
		echo ""
		apt-get install brackets -y
		
		
		# Remove files
		echo "$CLR_FILES"
		echo ""
		apt-get autoremove -y		


		if [ -n "$PKG_BRACKETS" ];then
		
			echo "$OK_BRACKETS"
			sleep 2;
		
		else
		
			echo "$ERROR_ANDROID"
			sleep 2;
			
		fi
	
		
	
	fi



}
