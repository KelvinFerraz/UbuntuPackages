Dependences(){

	# Variable receives packet (Dependencies needed to run the script)
	PKG_YAD=$( dpkg --get-selections | grep yad)

	clear
	# Update the system
	echo "[$REPO_UPD]"
	sleep 3;
	apt-get update
	echo ""
		
	# Installing updates found
	echo "[$INST_ATT]"
	sleep 3;
	apt-get upgrade -y
	echo ""

	clear

	echo "[$PKG_INSTALL]"
	# Dependences yad install or not
	if [ -n "$PKG_YAD" ]; then
	
		echo ""
		echo "$DEP_SUCESS"
		sleep 2
	
	else
	
		# Install yad (dependence)
		apt-get install yad -y
		
		if [ -n "$PKG_YAD" ]; then
		
			echo ""
			echo "[$DEP_SUCESS]"
			sleep 2;
			
		else
			
			echo ""
			echo "[$DEP_ERROR]"
			sleep 2;
		fi
	
	fi
}
