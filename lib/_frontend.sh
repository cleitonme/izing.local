#!/bin/bash
# 
# functions for setting up app frontend

#######################################
# installed node packages
# Arguments:
#   None
#######################################
frontend_node_dependencies() {
  print_banner
  printf "${WHITE} 💻 Instalando dependências do frontend...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  sudo su - deploy <<EOF
  cd /home/deploy/izing.io/frontend
  npm install --force
  npm i @quasar/cli
EOF

  sleep 2
}

#######################################
# compiles frontend code
# Arguments:
#   None
#######################################
frontend_node_build() {
  print_banner
  printf "${WHITE} 💻 Compilando o código do frontend...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  sudo su - deploy <<EOF
  cd /home/deploy/izing.io/frontend
  export NODE_OPTIONS=--openssl-legacy-provider
  npx update-browserslist-db@latest
  npx quasar build -P -m pwa
EOF

  sleep 2
}


#######################################
# sets frontend environment variables
# Arguments:
#   None
#######################################
frontend_set_env() {
  print_banner
  printf "${WHITE} 💻 Configurando variáveis de ambiente (frontend)...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  # ensure idempotency


sudo su - deploy << EOF
  cat <<[-]EOF > /home/deploy/izing.io/frontend/.env
VUE_URL_API=http://${ipservidorubuntu}:3000
VUE_FACEBOOK_APP_ID='23156312477653241'
[-]EOF
EOF

  sleep 2
}

#######################################
# gera arquivo server.js
# 
#   
#######################################
frontend_serverjs() {
  print_banner
  printf "${WHITE} 💻 gerar arquivo server.js (frontend)...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

sudo su - deploy << EOF
  cat <<[-]EOF > /home/deploy/izing.io/frontend/server.js
// simple express server to run frontend production build;
const express = require('express')
const path = require('path')
const app = express()
app.use(express.static(path.join(__dirname, 'dist/pwa')))
app.get('/*', function (req, res) {
  res.sendFile(path.join(__dirname, 'dist/pwa', 'index.html'))
})
app.listen(4000)
[-]EOF
EOF

  sleep 2
}

#######################################
# starts frontend using pm2 in 
# production mode.
# Arguments:
#   None
#######################################
frontend_start_pm2() {
  print_banner
  printf "${WHITE} 💻 Iniciando pm2 (backend)...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  sudo su - deploy <<EOF
  cd /home/deploy/izing.io/frontend
  pm2 start server.js --name izing-frontend
  pm2 save
EOF

  sleep 2
}
