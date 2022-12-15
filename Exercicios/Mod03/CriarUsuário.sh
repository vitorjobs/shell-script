#!/usr/bin/env bash
#
# CriarUsuario.sh - Criar usuário no sistema
#
# Site:       ###
# Autor:      Vítor Guedes
# Manutenção: Vítor Guedes
#
# ------------------------------------------------------------------------ #
#  Verificar se existe o usuário digitado,
#  Se Existir, retorna com a mensagem de usuário já existe, 
#  Se não existir, cria o usuário.
#
#  Exemplos:
#      $ chmod +x ./CriarUsuario.sh 
#      $ ./CriarUsuario.sh (nome do usuário)
#      Neste exemplo Irá criar o usuário com o nome passado no parâmetro
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 15/12/2022, Vítor Guedes:
#     - Válidar Existência 
#   v1.1 16/10/2022, Vítor Guedes:
#     -
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
NOVO_USUARIO="$1"
VERIFICA_USUARIO=$(cat /etc/passwd | grep "$1")
CRIA_USUARIO=$(useradd "$1")
MSG_USUARIO_JA_EXISTE="Usuário Já Existe"
MSG_USUARIO_CRIADO="Usuário Criado: "
BUSCA_USUARIO_CRIADO=$(cat /etc/passwd | grep "$1")

VERSAO="v1.1"
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
# VÁLIDA SE EXISTE O USUÁRIO DIGITADO NO ARQUIVO /etc/passwd
if [ "$VERIFICA_USUARIO" = "$1" ]
  then
   echo "$MSG_USUARIO_JA_EXISTE" && exit 0
# CRIA O USUÁRIO DIGITADO NO ARQUIVO /etc/passwd
  else [ $CRIA_USUARIO ] 
  echo "$BUSCA_USUARIO_CRIADO" && exit 0
fi
# if [ $CRIA_USUARIO ]
#   then     
#     echo "$BUSCA_USUARIO_CRIADO" && exit 0
#   fi
# ------------------------------------------------------------------------ #