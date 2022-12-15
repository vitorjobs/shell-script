# Caminho relativo (Ajuda na portabilidade do script)
#!/usr/bin/env bash

# Obs: Execução com $
 # Para comandos: Utilizar $()
 # Para Operações: Utilizar $(())


# ----- AULA 04 -----#
##echo "Arquivo Executado"
##echo "Teste"

NOME="Vítor 
Guedes"
echo "$NOME"

# ----- Variáveis Globais-------#
NUMERO_1=24
NUMERO_1=25
TOTAL=$((NUMERO_1+ NUMERO2))
echo "$TOTAL"


#---Mostrar Conteúdo de um arquivo Geral#
SAIDA_CAT=$(cat /etc/passwd)
echo "$SAIDA_CAT"

#---Mostrar Conteúdo de um arquivo filtrando com "| grep"----#
SAIDA_CAT_GREP=$(cat /etc/passwd | grep root)
echo "$SAIDA_CAT_GREP"

#---------------------------------------------------------------#

echo *--- Variáveis RESERVADAS COM VALORES PADROES---*
echo "Parametro 1: $1" 
echo "Parametro 2: $2"

# Exemplo de execução: ./variaveis -a -b 
 # valor -a é abribuído ao Parametro 1 ($1)
 # valor -b é abribuído ao Parametro 2 ($2)


 echo "Todos os parametros: $*"
 # $* = Mostra todos os parametros passados

 echo "Soma da quantidade de todos os parâmetros: $#"
 # $# = Soma todos os parametros passados

 echo "Saída do ùltimo comando: $?"
 # $? = Mostra o resultado da saída do último comando

 echo "Saída do PID: $$"
 # $? = Mostra O PID do processo deste script

  echo "Saída NOME do script executado: $0"
 # $? = Mostra O PID do processo deste script
