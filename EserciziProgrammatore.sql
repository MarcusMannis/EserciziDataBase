Esercizio 1

select autore.codice
from autore join programmatore on autore.codice = programmatore.codice
    join programma on programma.id = autore.id
where programma.anno>=2000 and programma.linguaggio="java"

Esercizio 2

select programmatore.nome, programmatore.categoria
from autore join programmatore on autore.codice = programmatore.codice
    join programma  on programma.id = autore.id
where programma.linguaggio != "Python"
order by programmatore.nome

Esercizio 3

select distinct programmatore.codice, programma.anno
from autore join programmatore on autore.codice= programmatore.codice
    join programma on programma.id  = autore.id
where programmtore.categoria= 10 and programma.linguaggio != "Java"

