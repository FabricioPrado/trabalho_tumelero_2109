#!/bin/bash
#
#
clear
echo 'Conta palavras do texto 1.0'
echo 'Script por Eduardo Medeiros & Fabricio Prado'
echo ''
echo -n 'Digite o caminho do texto a ser exibido: '
read texto

# Exibe texto com 'cat';
# Lista somente palavras separadas por espaço ou outros caracteres não textuais utilizando o 'egrep' com pattern '\w+' (palavras com 1 ou mais caracteres);
# Filtra palavras com menos de 3 caracteres com o 'grep ...';
# Ignora o case nas palavras usando o 'sort -f';
# Conta o número de palavras repetidas, ignorando o case com 'uniq -c -i';
# Lista as palavras por quantidade de forma decrescente usando o 'sort -n-r'.
echo ''
echo 'Exibindo a lista de quantidade de palavras repetidas, da com maior incidência para a menor:'
cat $texto | egrep -o '\w+' | grep ... | sort -f | uniq -c -i | sort -n -r
