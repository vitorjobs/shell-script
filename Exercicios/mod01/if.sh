 #---------------------------------------------------------------#
 echo "Aula: 07"
 echo "Condicional IF "

 VAR=""
 VAR2="a"


if [[ "$VAR" = "$VAR2" ]]; then
  echo "São Iguais"
fi


if [[ "$VAR" != "$VAR2" ]]
then
  echo "São Diferentes"
fi

if test "$VAR" != "$VAR2"
then
  echo "São Diferentes"
fi

if [ "$VAR" != "$VAR2" ]
then
  echo "São Diferentes"
fi

[ "$VAR" != "$VAR2" ] && echo "São Iguas"

[ "$VAR" != "$VAR2" ] || echo "São Diferentes"
