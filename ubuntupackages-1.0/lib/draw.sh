Draw(){

	echo ""
	echo "[$FUNCNAME]"
	echo ""
	
	PKG_INKSCAPE=$(dpkg --get-selections | grep inkscape)
	PKG_GIMP=$(dpkg --get-selections | grep gimp)


	# Install Inkscape
	if [ -n "$PKG_INKSCAPE" ]; then
	
		echo "[$OK_INKSCAPE]"
		sleep 2;
		echo ""
		
	else
	
		echo ""
		
		echo "[$INSTALL_INKSCAPE]"
		sleep 2;
		apt-get install inkscape -y
		
		echo ""
		
		echo "[$INKSCAPE_SUCESS]"
		echo ""
	
	fi


	#Install Gimp
	if [ -n "$PKG_GIMP" ]; then
	
		echo "[$OK_GIMP]"
		sleep 2;
		echo ""
		
	else

		echo ""
		
		echo "[$INSTALL_GIMP]"
		sleep 2;
		apt-get install gimp -y
		
		echo ""
		
		echo "[$GIMP_SUCESS]"
		echo""
	
	fi



}
