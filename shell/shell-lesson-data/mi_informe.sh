
### Create results file ###
touch resultado.txt


### Describe environment, replace existing text ###
printf "
Entorno: mi portátil Windows con WSL
" > resultado.txt


### User and date ###
printf "

=== Usuario y fecha ===
" >> resultado.txt

echo $(whoami) >> resultado.txt
echo $(date) >> resultado.txt


### CPU model ###
printf "

=== Procesador ===
" >> resultado.txt

echo $(lscpu | sed -n '8p') >> resultado.txt


### Molecule count ###
#molecules_um=$(find molecules -type f -name "*.pdb" | wc -l)
printf "

=== Total moleculas ===
" >> resultado.txt

echo "La cantidad de moleculas es: " $(find molecules -type f -name "*.pdb" | wc -l) >> resultado.txt


### Kepler Planets ###
#kepler_am=$(grep -c "Kepler" data/planets.txt)
printf "

=== Planetas Kepler ===
" >> resultado.txt

echo "La cantidad de planetas Kepler es: " $(grep -c "Kepler" data/planets.txt) >> resultado.txt


### Rabbit sightings ###
#rabbit_sight=$(grep -n "rabbit" data/animal-counts/animals.txt)
printf "

=== Avistamientos conejos ===
" >> resultado.txt

grep "rabbit" data/animal-counts/animals.txt >> resultado.txt
