
Esercizio 1

select distinct s.scalatore as A, n.continente as B
from scalata s join nazione n on s.nazione = n.nome

Esercizio 2

select distinct scalatore.CF, nazione.continente
from scalatore join scalata on scalatore.CF = scalata.scalatore
    join nazione on nazione.nome = scalata.nazione
where scalatore.annoNascita < 1980
order by scalatore.CF, nazione.continente

Esercizio 3

select nazione.nome, nazione.continente
from scalatore join scalata on scalatore.cf = scalata.scalatore
    join nazione on nazione.nome = scalata.nazione
where (scalata.anno - scalatore.annoNascita) <18

Esercizio 4

select scalata.nazione, count(*)
from scalatore join scalata on scalatore.cf = scalata.scalatore
where scalatore.nazioneNascita = scalata.nazione
group by scalata.nazione

Esercizio 6
use scalatori;
select scalatore.cf, scalatore.nazioneNascita, nazione.continente, scalata.nazione
from scalatore left join scalata on cf = scalatore 
    join nazione on nome =nazioneNascita
where continente != "America"

Esercizio 7

select scalata.anno, scalata.nazione, count(*) as numeroScsalate
from scalatore join scalata on scalatore.cf = scalata.scalatore
    join nazione on nazione.nome = scalata.nazione
group by scalata.anno, scalata.nazione having count(*)>1
order by scalata.anno

