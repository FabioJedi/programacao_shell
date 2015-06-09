#!bin/bash


#Fábio Freire Araujo
#Centro Universitário La Salle, RJ
#2015



#O telhado da casa (triangulo isosceles).
for i in $(seq $1 -1 1)
do
        for j in $(seq $i )
        do
                echo -n "   "
        done

#A cada um espaco impresso no 1* for, acrescenta-se mais ** no 2* for.

        for j in $(seq $(($1 - $i )))
        do
                echo -n "******"
        done
        echo -n "*"
	echo
done


#Parede Superior.

num=3
for i in $(seq $(($1 / 2 )))
do
	echo -n "      "

	for j in $(seq $num)
	do
		for k in $(seq $(($1 - 2)))
		do
			echo -n "**"
		done
	done
	echo "*"
done


#As paredes de cada lado da porta.

for i in $(seq $1)
do
	echo -n "      "

#Primeira parede.
	for j in $(seq $(($1 - 2)))
	do
		echo -n "**"
	done

#Espaco da porta.
	for j in $(seq $(($1 - 2)))
	do
		echo -n "  "
	done

#Segunda parade.
	for j in $(seq $(($1 - 2)))
	do
		echo -n "**"
	done

	echo "*"
done
