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
# NOVO_USUARIO="$2"
LISTA_USUARIO=$(cat /etc/passwd | grep "$2")
# CRIA_USUARIO=$(useradd "$2")
MSG_USUARIO_EXISTE="Usuário "$2" EXISTE no SISTEMA"
MSG_USUARIO_NAO_EXISTE="Usuário "$2" NÃO EXISTE no SISTEMA"
MSG_USUARIO_CRIADO="Usuário Criado: "
BUSCA_USUARIO_CRIADO=$(cat /etc/passwd | grep "$2")


MENSAGEM_USO="
  Rotina = $(basename $0) 
  
    [OPÇÕES]

      -h - Menu de ajuda
      -c - Lista Usuário
      -s - Ordernar a saída
"
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
case "$1" in
  -h) echo "$MENSAGEM_USO" && exit 0       ;;
  -v) if [ "$LISTA_USUARIO" = "$2" ]
        then
          echo "$MSG_USUARIO_EXISTE" 
        else 
          echo "$MSG_USUARIO_NAO_EXISTE"
      fi                                   ;;
#  -s) echo "$USUARIOS" | sort && exit 0 ;;
   *) echo   "Sem parametros"  && exit 0   ;;
esac