## Instalador para uso em Modo Local

Para computadores windows você pode virtualizar uma maquina windows com o https://www.virtualbox.org/

https://www.datalib.com.br/post/instala%C3%A7%C3%A3o-do-ubuntu-20-04-desktop-no-virtual-box

Testado ubuntu 20 e 22


Editar arquivo config e colocar senhas de sua preferencia e ip do maquina ubuntu local


A opção atualizar vai pegar ultima versao do repositorio usado para instalar


## MEU REPOSITORIO TEM ALGUMAS MUDANÇAS AO ORIGINAL VERIQUE O README

https://github.com/cleitonme/izing.open.io


## RODAR OS COMANDOS ABAIXO ##

para evitar erros recomendados atualizar sistema e apos atualizar reniciar para evitar erros

```bash
apt -y update && apt -y upgrade
```
```bash
reboot
```

 
Depois reniciar seguir com a instalacao

```bash
cd /root
```
```bash
git clone https://github.com/cleitonme/izing.local.git izinginstalador
```
Editar dados com seus dados, com nano para salvar aperta Ctrl + x
```bash
nano ./izinginstalador/config
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
npx quasar build -P -m pwa
```

Testar as alterações em aba anonima


## Recomendação de VPS boa e barata

-  [Powerful cloud VPS & Web hosting.](https://control.peramix.com/?affid=58)

## Consultoria particular

Para quem gostaria de uma consultoria ou que eu faça instalação pode chamar no whatsapp 48 999416725 (será cobrado por isso)

-  [Versão pro do IZING](https://github.com/cleitonme/izing.pro.install)