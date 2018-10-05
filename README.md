# Ortólogos D.mojavensis-Humano

Primero vamos a utilizar una lista de genes que se expresaron diferencialmente. Esta lista se obtuvo previamente en una comparación entre moscas expuestas a dos diferentes dietas  

En este caso el archivo con la lista es Diffexp_Diets_DMoj2.csv  y son genes de D. mojavensis expuestas a dieta HPLS y LPHS  
Primero, vamos a comparar esta lista con la lista de ortólogos de D. melanogaster disponible en el FlyBase

El archivo con la lista bajado del FlyBase es dmel_ort_dros_sp.tsv
Primero voy a pedirle que haga un archivo solo con el FBgene_ID, GeneSymbol, Ortholog_FBgene_ID y Ortholog_GeneSymbol

`cut -f1,2,6,7 file > editado_dmel_ort_dros_sp.csv`

Sustituir "file" for el archivo donde esta la lista, en este caso: dmel_ort_dros_sp.tsv  

Ya que tengo el archivo con las 4 columnas (editado_dmel_ort_dros_sp.csv), voy a buscar la lista de genes diferencialmente expresados en este nuevo archivo   

`bash buscar_otologos.sh`  

poniendole el archivo donde esta la lista que voy a buscar ($1) y el archivo en donde voy a buscar ($2)  
Ejemplo: $1 es Diffexp_Diets_DMoj2.csv   
$2 es editado_dmel_ort_dros_sp.csv

Voy a hacer un archivo solo con la primera columna del archivo la cual contiene el geneID de D. melanogaster

`cut -f1 file > geneIDorthologs_Diffexp_Diets_DMoj2.csv-editado_dmel_ort_dros_sp.csv_ort.csv`

Ahora voy a buscar el gene id de D. melanogaster que resultaron tener ortologos en D. mojavensis, en la lista de ortólogos de Humanos disponible en el FlyBase

El archivo de genes de humanos es dmel_human_ort_disease.tsv

`bash buscar_otologos.sh`  

$1 es geneIDorthologs_Diffexp_Diets_DMoj2.csv-editado_dmel_ort_dros_sp.csv_ort.csv
$2 dmel_human_ort_disease.tsv

geneIDorthologs_Diffexp_Diets_DMoj2.csv-editado_dmel_ort_dros_sp.csv_ort.csv_dmel_human_ort_disease.tsv_ORT.csv es mi archivo final con la lista de los ortologos en humano de los genes que se expresaron diferencialmente en D. mojavensis expuestas a dos diferentes dietas
