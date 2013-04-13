3f
==

3F - Forensic File Finder

Tool forense per la ricerca di file con un determinato nome o con una determinata estensione all'interno di cartelle o dischi.
E' possibile effettuare ricerche anche all'interno di immagini forensi estratte da dispositivi di archiviazione di massa.

ESECUZIONE

./3f.sh

FUNZIONAMENTO

Verrà richiesta qual'è la cartella in cui cercare, successivamente il nome da cercare o l'estensione, e infine la cartella in cui copiare i file trovati.

ATTENZIONE

Se 3f trova dei file che corrispondono al nome o all'estensione richiesta copierà i file nella cartella scelta mantenendo inalterati i metadati dei file (es. nome, data di creazione, data di modifica, ecc..).

UTILIZZO CON IMMAGINI FORENSI

Se avete un'immagine forense, per esempio a seguito di acquisizione bit a bit di una memoria di massa, prima di utilizzare 3f è necessario montare l'immagine in sola lettura

cd /media/

mkdir nomecartella

mount -r -t auto /dev/hdX /media/lacartellacreata

Es.

cd /media/

mkdir immagine1

mount -r -t auto /dev/hdb /media/immagine1


Successivamente è possibile eseguire 3f e quando verrà richiesta la cartella da analizzare scegliete la cartella in cui avete montato l'immagine (nel nostro esempio /media/immagine1/).

