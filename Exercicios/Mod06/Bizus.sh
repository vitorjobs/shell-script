# ^ = Começo de uma linha
# h $ = Final da linha
# Lista de Digitos (Representadas entre conchetes) = Ex.: ^[bc] (Todas as linhas que começem com  B ou C)
# Lista de Digitos com negação (Representadas entre conchetes) = Ex.: ^[^bc] (Todas as linhas que não começem com  B ou C)

# Tudo que começa com  determinada letra/palvra
cat /etc/passwd | grep "^[guedes]" 
ou 
grep "^a" /etc/passwd


# Tudo que termina com  determinada letra/palvra
cat /etc/passwd | grep "^[guedes]" 
ou 
grep "a^" /etc/passwd
grep "a$" /etc/passwd
grep "guedes$" /etc/passwd


# Tudo que começa com  determinada letra/palvra ea segunda lebra seja ou e ou d
grep "^g[ed]" /etc/passwd


# Qualquer coisa (.) e o segundo digito seja (a)
grep "^.[a]" /etc/passwd

# EXPRESSÕES REGULARES EXTENDIDAS usando o "egrap"

# Filtrar todo que começa com qualquer coisa e que tenha de 50 digitos para mais e termine com qualquer coisa
egrep "^.{50,60}$" /etc/passwd

# Filtrar ou um usário ou outro

egrep "guedes|root" /etc/passwd


