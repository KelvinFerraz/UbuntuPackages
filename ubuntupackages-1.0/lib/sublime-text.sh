Sublime-Text(){
	
	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	# Check directory 
	DIR_SUBLIME=/opt/sublime_text/sublime_text

	# Install IDE Sublime-Text 3
	if [ -e "$DIR_SUBLIME" ]; then
		
			
			echo "$INSTALLED_SUBLIME"
			sleep 2;
	
	else
	
		# Add Repository of Sublime-Text
		add-apt-repository ppa:webupd8team/sublime-text-3 -y
	
		# Update Repository
		echo "$REPO_UPD"
		echo ""
		apt-get update
		
		# Install Sublime-Text
		echo "$INSTALL_SUBLIME"
		echo ""
		apt-get install sublime-text -y
		
		
		# Remove files
		echo "$CLR_FILES"
		echo ""
		apt-get autoremove -y		


		if [ -e "$DIR_SUBLIME" ];then
		
			echo "$OK_SUBLIME"
			sleep 2;
		
		else
		
			echo "$ERROR_SUBLIME"
		
		fi
		
	
	
	fi

}
