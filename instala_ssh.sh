#!/bin/bash
#
#
clear
echo 'Instalador e configurador de Servidor SSH 1.0'
echo 'Script por Eduardo Medeiros & Fabricio Prado'
echo ''
echo 'Instalando Servidor SSH...'
apt update && apt install openssh-server -y
echo ''
echo 'Alterando porta de escuta do SSH para 10000...'
sed -i 's/Port .*/Port 10000/' /etc/ssh/sshd_config
echo ''
echo 'Reiniciando Servidor SSH...'
systemctl restart ssh
sleep 5
echo ''
echo 'Exibindo status do Serviço SSH...'
echo ''
systemctl status ssh
echo ''

