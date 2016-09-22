#!/bin/bash
#
#
clear
echo 'Verificador da Versão do Sistema Operacional Remoto 1.0'
echo ' Script por Eduardo Medeiros & Fabricio Prado'
echo ''
echo -n 'Digite o IP do Computador Parceiro: '
read ipremoto
echo ''
echo "iniciando conexão com computador $ipremoto com usuario aluno"
ssh aluno@$ipremoto -p 10000 uname -a
echo ''
