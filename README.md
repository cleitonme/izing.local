[![Grupo do WhatsApp](https://img.shields.io/badge/WhatsApp-Grupo%20IZING-brightgreen.svg)](https://chat.whatsapp.com/IIReEheixAx27ZbneHpskP)

## Instalador para uso em Modo Local

Para computadores windows você pode virtualizar uma maquina windows com o https://www.virtualbox.org/

https://www.datalib.com.br/post/instala%C3%A7%C3%A3o-do-ubuntu-20-04-desktop-no-virtual-box

Testado ubuntu server 20.04 e 22.04


Editar arquivo config e colocar senhas de sua preferencia e ip do maquina ubuntu local


A opção atualizar vai pegar ultima versao do repositorio usado para instalar


## MEU REPOSITORIO TEM ALGUMAS MUDANÇAS AO ORIGINAL VERIQUE O README

https://github.com/cleitonme/izing.open.io

## ACESSO ##
Front:
```bash
http://seuipinterno:4000
```

Back:
```bash
http://seuipinterno:3000
```

Usuario:
```bash
admin@izing.io
```

Senha:
```bash
123456
```

## RODAR OS COMANDOS ABAIXO ##

para evitar erros recomendados atualizar sistema e apos atualizar reniciar para evitar erros

Primeiro crie senha para o sudo
```bash
sudo passwd root
```

Depois logar como sudo
```bash
sudo su
```

Atualizar sistema
```bash
apt -y update && apt -y upgrade
```

Reiniciar
```bash
reboot
```

 
Depois reniciar seguir com a instalacao
```bash
sudo su
```

```bash
cd /root
```
```bash
git clone https://github.com/wnjinfo/izing.install.local.git izinginstalador
```
Editar dados com seus dados, com vim para salvar aperta ESC, depois wq! e de enter.
```bash
vim ./izinginstalador/config
```
```bash
sudo chmod +x ./izinginstalador/izing
```
```bash
cd ./izinginstalador
```
```bash
sudo ./izing
```

## Problemas conexão whatsapp? ##

Tente atualizar o Conector WWebJS whatsapp.js


## Alterar Frontend

Para mudar nome do aplicativo:

/home/deploy/izing.io/frontend/quasar.conf

/home/deploy/izing.io/frontend/src/index.template.html

Para alterar logos e icones:

pasta /home/deploy/izing.io/frontend/public

Para alterar cores:

/home/deploy/izing.io/frontend/src/css/app.sass

/home/deploy/izing.io/frontend/src/css/quasar.variables.sass

Sempre alterar usando usuario deploy você pode conectar servidor com aplicativo Bitvise SSH Client. Depois das alterações compilar novamente o Frontend

```bash
su deploy
```
```bash
cd /home/deploy/izing.io/frontend/
```
```bash
npm run build
```

Testar as alterações em aba anonima

## Erros

"Internal server error: SequelizeConnectionError: could not open file \"global/pg_filenode.map\": Permission denied"

```bash
docker container restart postgresql
```
```bash
docker exec -u root postgresql bash -c "chown -R postgres:postgres /var/lib/postgresql/data"
```
```bash
docker container restart postgresql
```

## Problemas enviar audios e noticações

Isso porque você não possui certificado quando roda localmente consideram a conexão como insegura e bloqueiam o microfone.

Você consegue resolver isto, acessando o link dentro do navegador Chrome; chrome://flags/#unsafely-treat-insecure-origin-as-secure e inserindo o ip com porta do seu frontend e backend.

## Acesso Portainer gerar senha
"Your Portainer instance timed out for security purposes. To re-enable your Portainer instance, you will need to restart Portainer."

```bash
docker container restart portainer
```

Depois acesse novamente url http://seuip:9000/

## Recomendação de VPS boa e barata

-  [Powerful cloud VPS & Web hosting.](https://control.peramix.com/?affid=58)

- Cupom 25% desconto "WHAZING"

```bash
WHAZING
```

## Consultoria particular

Para quem gostaria de uma consultoria ou que eu faça instalação pode chamar no whatsapp 48 999416725 (será cobrado por isso)

-  [Versão pro do IZING](https://github.com/cleitonme/izing.pro.install)
-  [Versão API Bayles](https://github.com/cleitonme/Whazing-SaaS.instalador)
