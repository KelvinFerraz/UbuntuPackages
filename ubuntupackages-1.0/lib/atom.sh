Atom()
{
	
	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	# Check is package have installed
	PKG_ATOM=$(dpkg --get-selections | grep atom)
	
	
	# Install IDE Atom
	if [ -n "$PKG_ATOM" ]; then
	
	    echo "$INSTALLED_ATOM"
				
	else
		
		# Add Repository of Atom
		add-apt-repository ppa:webupd8team/atom -y
		
		# Update Repository
		echo "$REPO_UPD"
		echo ""
		apt-get update
		
		# Install Atom
		echo "$INSTALL_ATOM"
		echo ""
		apt-get install atom -y
		
		
		# Remove files
		echo "$CLR_FILES"
		echo ""
		apt-get autoremove -y		


		if [ -n "$PKG_ATOM" ];then
		
			echo "$OK_ATOM"
			sleep 2;
		
		else
		
			echo "$ERROR_ATOM"
		
		fi
		
	
	fi

}
