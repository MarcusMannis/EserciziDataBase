Esercizio 1

select s.scalatore as A, n.continente as B
from scalata s join nazione n on s.nazione = n.nome

Esercizio 2

select scalatore.CF, nazione.continente
from scalatore join scalata on scalatore.CF = scalata.scalatore
    join nazione on nazione.nome = scalata.nazione
where scalatore.annoNascita < 1980
group by scalatore.CF, nazione.continente

Esercizio 3

select nazione.nome, nazione.continente
from scalatore join scalata on scalatore.cf = scalata.scalatore
    join nazione on nazione.nome = scalata.nazione
where (scalata.anno - scalatore.annoNascita) <18

Esercizio 4

select nazione.nome, count(nazione.nome)
from scalatore join scalata on scalatore.cf = scalata.scalatore
    join nazione on nazione.nome = scalata.nazione
where scalatore.nazioneNascita = scalata.nazione
group by nazione.nome