TestConnection(){
	clear
	echo "$TEST_CONNECT"
	sleep 1
	echo ""

	wget -q --tries=10 --timeout=20 --spider http://www.google.com.br

		if [[ $? -eq 0 ]]; then

			ConnectionOK
			sleep 2
			echo ""
		else
			ConnectionFail
			End
			
			exit
		fi


}
