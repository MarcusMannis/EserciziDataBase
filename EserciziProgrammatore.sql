Esercizio 1

select autore.codice
from autore join programmatore on autore.codice = programmatore.codice
    join programmatore on programma.id = autore.id
where programmatore.anno >= 2000 and programma.linguaggio = "Java"

Esercizio 2

select programmatore.nome, programmatore.categoria
from autore join programmatore on autore.codice = programmatore.codice
    join programma  on programma.id = autore.id
where programma.linguaggio != "Python"
order by programmatore.nome