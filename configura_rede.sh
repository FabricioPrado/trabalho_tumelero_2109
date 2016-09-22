#!/bin/bash
#
#
clear
echo -e 'source /etc/network/interfaces.d/*\n\nauto lo\niface lo inet loopback' > /etc/network/interfaces
echo 'Configurador de rede por DHCP 1.0'
echo 'Script por Eduardo Medeiros & Fabricio Prado'
echo ''
echo 'Definindo nome do computador...'
echo 'FABRICIO_PRADO' > /etc/hostname
hostname FABRICIO_PRADO
echo ''
echo 'Listando as placas de rede ativas...'
ip link | grep BROADCAST | awk '{print $2}' | tr -d ':'
echo ''
echo -n 'Escreva o nome da interface: '
read intrede
echo -e "auto $intrede\niface $intrede inet dhcp" > /etc/network/interfaces.d/$intrede
echo ''
echo 'Listando arquivo de configuração da interface...'
echo ''
cat /etc/network/interfaces.d/$intrede
ifdown $intrede
ifup $intrede
ip addr 
