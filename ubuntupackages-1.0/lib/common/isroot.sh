IsRoot(){

	
	if [ "$(id -u)" != "0" ]; then
		
		exec gksu --message "$ROOT_LOGIN" "$0" "$@"
		
		TestConnection
		Dependences
		Menu
		
		
	else
		
		TestConnection
		Dependences
		Menu
	fi
	
	
}
