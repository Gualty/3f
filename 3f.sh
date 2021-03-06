#!/bin/sh
	clear
    data=$(date "+%a %d/%m/%Y %H:%M")
    printf "****Benvenuto in 3F: Forensics File Finder**\n"
	printf "***Ricerca file per nome o estensione e li copia in una directory \n"
	printf "**mantenendo inalterati i metadati: data modfica, data accesso, ecc.\n"
	printf "*creato da Gualtiero Catrame    \n"
	printf "\n\nIn quale cartella o disco eseguire la ricerca?\n"
	read cart
	printf "\nInserisci il nome del file da cercare oppure \*.ext (es. \*.jpg) per tutti i file con una determinata estensione\n"
	read cosacercare
	printf "\nDove copiare i file trovati? (Sarà generato anche un file di log)\n"
	read cartella
    printf "\n"
filename=${cartella}/3Flog.txt
echo "$data\nFile trovati da 3F - Forensics File Finder:\n" > $filename

find ${cart} -iname "${cosacercare}" >> ${filename} 2>/dev/null


righe=$(wc -l $filename | awk '{print $1}')

riga=3

while [ $riga -lt $righe ]; do
    let riga+=1
    current=$(head -$riga $filename | tail -1)
    echo $current
    cp -p "$current" "$cartella"
done

let riga-=3
echo "I file trovati sono stati copiati in ${cartella}\nFile analizzati ${riga}"