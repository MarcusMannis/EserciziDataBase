use programmatori

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

Esercizio 4

select distinct autore.codice as autore, a1.codice as aiutante
from autore join programma on programma.id = autore.id
    join autore as a1 on a1.id = programma.id
where programma.linguaggio= "Python" and autore.codice != a1.codice

Esercizio 5

select programamtore.codice, programmatore.nome
from autore join programmatore on autore.codice = programamtore.codice
    join programma on programma.id = autore.id
where programma.linguaggio = "Java"