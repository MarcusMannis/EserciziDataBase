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

select distinct A1.codice as A1, A2.codice as A2
from autore A1 join programma on A1.id = programma.id
    join autore A2 on A1.id = A2.id
where programma.linguaggio= "Python" and A1.codice != A2.codice
    and A1.codice > A2.codice

Esercizio 5

select programamtore.codice, programmatore.nome
from autore join programmatore on autore.codice = programamtore.codice
    join programma on programma.id = autore.id
where programma.linguaggio = "Java"

Esercizio 6

select programmatore.nome, programma.anno, count(programma.id)
from autore join programmatore on autore.codice = programmatore.codice
    join programma on autore.id = programma.id
group by programmatore.codice, programma.anno

Esercizio 7

select linguaggio, count(autore.codice)/count(distinct programma.id)
from autore join programma on autore.id=Programma.id
group by linguaggio


Esercizio 5 subquery

select programmatore.codice, programmatore.nome
from programmatore join autore on autore.Codice = programmatore.codice
    join programma on programma.ID = autore.ID
where autore.id
    in( select programma.id
            from programma
            where programma.linguaggio = "Java"
    )
group by programma.linguaggio



select Autore.codice, count(*) as apps
from Autore join Programmatore on Autore.codice = Programmatore.codice
group by Autore.codice
order by apps desc
limit 1

