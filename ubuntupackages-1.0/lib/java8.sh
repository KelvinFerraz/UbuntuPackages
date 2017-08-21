Java8(){

	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	
	PKG_JAVA8=$(dpkg --get-selections | grep oracle-java8-installer)

	# Install Java 8
	if [ -n "$PKG_JAVA8" ]; then
	
		echo "[$OK_JAVA8]"
		sleep 2;
		echo ""
		
	else
		
		# Add repository Java
		add-apt-repository ppa:webupd8team/java
		
		# Update Repository
		echo "[$REPO_UPD]"
		echo ""
		apt-get update
		
	
		echo ""
		echo "[$INSTALL_JAVA8]"
		sleep 2;
		apt-get install oracle-java8-installer -y
		
		echo ""		
		echo "[$JAVA8_SUCESS]"
	
	fi



}
