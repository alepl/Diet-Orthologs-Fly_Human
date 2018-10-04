# Ortólogos Dmel-Humano

Primero vamos a utilizar una lista de genes que se expresaron diferencialmente. Esta lista se obtuvo previamente en una comparación entre moscas expuestas a dos diferentes dietas  

En este caso el archivo con la lista es Diffexp_Diets_DMoj2.csv  y son genes de D. mojavensis expuestas a dieta HPLS y LPHS  
Primero, vamos a compararla con la lista de ortólogos de D. melanogaster disponible en el FlyBase

El archivo con la lista es dmel_orthologs_in_drosohphila_species_fb_2018_04.tsv  
Primero voy a pedirle que haga un archivo solo con el FBgene_ID, GeneSymbol, Ortholog_FBgene_ID y Ortholog_GeneSymbol

En este archivo va a ir la tabla solo con las columnas que yo quiero
`nano dmel_orthologs_in_drosohphila_species_fb_2018_04_editado.csv`

for columna in $(cat $1|cut -d' ' -f1)
do mkdir date-$line; done
$(cat $1|cut -d, -f1,2)
