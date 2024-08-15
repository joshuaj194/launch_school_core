counter=0
max=10

until [[ $counter -eq $max ]]
do 
  echo $counter
  ((counter++))
done
