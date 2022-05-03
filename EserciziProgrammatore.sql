Esercizio 1

select Programmatore.codice
from autore join programmatore on autore.codice = programmatore.codice
    join programmatore on programma.id = autore.id
where programmatore.anno >= 2000 and programma.linguaggio = "Java"