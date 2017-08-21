Android-Studio()
{
		
	clear
	echo ""
	echo "[$FUNCNAME]"
	echo ""

	# Check is directory
	DIR_ANDROID=/opt/android-studio/bin/studio.sh

	# if exist file...
	if [ -e "$DIR_ANDROID" ]; then
		
			
			echo "[$INSTALLED_ANDROID]"
			sleep 2;
	
	else
	
		# Add Repository
	    add-apt-repository ppa:maarten-fonville/android-studio -y
	
		# Update Repository
		echo "[$REPO_UPD]"
		echo ""
		apt-get update
		
		# Install Android Studio
		echo "[$INSTALL_ANDROID]"
		echo ""
		apt-get install android-studio -y

		echo ""
		echo "[$ANDROID_SUCESS]"

			
	
	fi

}
