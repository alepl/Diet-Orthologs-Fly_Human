#esta linea es para cambiar el formato de excel de mac a linux
perl -p -i -e 's/\r/\n/' $1 
#ciclo para buscar lineas de un archivo en otro archivo
#$1 son las lineas que quiero buscar en otro archivo y $2 es el archivo EN donde voy a buscar 
head -n5 editado_dmel_ort_dros_sp.csv | tail -n1 >>prueba7.csv | for columna in $(cat $1)
do
echo $columna 
grep $columna $2 >> $1-$2-ortologos


done
