#!/bin/bash

software_update() {
  
  whatsappweb_update
}

izing_atualizar() {
  git_update
  backend_node_dependencies
  backend_node_build
  backend_db_migrate
  backend_db_seed
  restart_pm2
  frontend_node_dependencies
  frontend_node_build
}


inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 O que você precisa fazer?${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar\n"
  printf "   [2] Atualizar Conector WWebJS whatsapp.js\n"
  printf "   [3] Atualizar Izing\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    2) 
      software_update
      exit
      ;;
	 
	3) izing_atualizar
      exit
      ;;
	  
    *) exit ;;
  esac
}

