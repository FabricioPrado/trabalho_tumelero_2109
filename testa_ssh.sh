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
echo "Iniciando conexão com computador $ipremoto com usuario aluno..."
echo "Executando comando 'uname -a' no computador remoto..."
ssh aluno@$ipremoto -p 10000 uname -a
echo ''
