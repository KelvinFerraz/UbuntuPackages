Clipgrab(){
	
	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	PKG_CLIPGRAB=$(dpkg --get-selections | grep clipgrab)

	if [ -n "$PKG_CLIPGRAB" ]; then
	
		
		echo "$OK_CLIPGRAB"
		sleep 2;
		echo ""	
		return 1
	
	else
		
		#Add repository 
		add-apt-repository ppa:clipgrab-team/ppa -y
		
		# Update Repository
		echo "[$REPO_UPD]"
		echo ""
		apt-get update
		
	
		echo ""
		echo "[$INSTALL_CLIPGRAB]"
		sleep 2;
		apt-get install clipgrab -y
		
		echo ""		
		echo "[$CLIPGRAB_SUCESS]"
		sleep 3;
		echo ""	
	
	fi


}
