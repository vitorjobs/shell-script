#!/usr/bin/env bash
#
# extrai_titulos.sh - Extrai titulos de repositório do GitHub
#
# Site:       https://4fasters.com.br
# Autor:      Vítor Guedes
# Manutenção: Vítor Guedes
#
# ------------------------------------------------------------------------ #
#  Este programa irá extrair títulos dos repositórios do GitHub, colocar em um arquivo de
#  texto e ler mostrando com cores na tela.
#
#  Exemplos:
#      $ extrai_repos_gitHub.sh
#      Neste exemplo o programa vai extrair os nomes dos repositórios e mostrar na tela.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 03/10/2018, Vítor Guedes:
#       - Montamos a expressões regular com fator em comum
#   v1.1 10/10/2018, Lucas:
#       - Criado primeiro código com cores
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
#Link - https://github.com/vitorjobs?tab=repositories

#Padrão 

# <h3 class=".wb-break-all">
  #<a href="/vitorjobs/" > (nome do repositório ta aqui) itemprop=name codeRepository"> </a>

  id="user-repositories-list"

lynx -source https://github.com/vitorjobs?tab=repositories | grep .wb-break-all | sed 's/<div.*line">//;s/<\/span.*//' > titulos.txt

#- Buscar a palavra chave /vitorjobs/ no conteúdo dentro do link cria e insere o conteúdo da busca dentro do arquivo repos.txt
lynx -source https://github.com/vitorjobs?tab=repositories | grep "/vitorjobs/" > repos.txt
lynx -source https://github.com/vitorjobs?tab=repositories | grep description > repos.txt
lynx -source https://github.com/vitorjobs?tab=repositories | grep itemprop="owns"

lynx -source https://web.telegram.org/k/ | grep i18n



# - Expressão 
's/<div.*line">//;s/<\/span.*//'

#<span> </span>

ARQUIVO_DE_TITULOS="titulos.txt"

VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y # Lynx instalado?
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
lynx -source http://lxer.com/ | grep blurb | sed 's/<div.*line">//;s/<\/span.*//' > titulos.txt

while read -r titulo_lxer
do
  echo -e "${VERMELHO}Titulo: ${VERDE}$titulo_lxer"
done < "$ARQUIVO_DE_TITULOS"
# ------------------------------------------------------------------------ #
