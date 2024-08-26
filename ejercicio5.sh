animals=("perro" "oso" "cerdo" "gato" "caballo" "oveja")

animals_length=${#animals[@]}

for (( i = 0; i <= animals_length; i++ ))
do
  echo ${animals[i]}
done