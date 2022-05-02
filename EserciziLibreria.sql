Esercizio 1
select Autore
from Romanzo
where AnnoPubblicazione = 2009

Esercizio 2
select Titolo
from Romanzo
where AnnoPubblicazione > 1990

Esercizio 3 
select *
from Romanzo
where AnnoPubblicazione > 1900

Esercizio 4
select autore.Nome, autore.Cognome, Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore = Autore.ID

Esercizio 5
select autore.Cognome, autore.nome, Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore = Autore.ID
order by Autore.Cognome

Esercizio 6
select autore.nome, autore.cognome, romanzo.Titolo
from romanzo, autore
where romanzo.autore = autore.ID and autore.Nazionalità = "russo"
order by autore.cognome

Esercizio 7
select romanzo.Titolo
from romanzo, autore
where romanzo.autore = autore.id and (autore.DataNascita > 1809 and autore.DataNascita < 2000)
order by autore.cognome

Esercizio 8
select romanzo.titolo, romanzo.AnnoPubblicazione
from romanzo, autore
where romanzo.autore = autore.id and autore.DataMorte is null

Esercizio 9 
select *
from romanzo, autore
where romanzo.autore = autore.id and (autore.DataMorte is null or autore.LuogoMorte != "Torino")

Esercizio 10
select romanzo.titolo, romanzo.AnnoPubblicazione
from romanzo, autore
where romanzo.autore = autore.id and autore.LuogoNascita = "Roma"

Esercizio 11
select *
from romanzo
where romanzo.titolo like "Tokyo%"

Esercizio 12
select *
from romanzo
where romanzo.titolo like "%Sposi%"

Esercizio 13
select *
from romanzo
where romanzo.titolo like "%i_"

Esercizio 14
select *
from romanzo
where romanzo.titolo like "%blues"

Esercizio 15
select *
from romanzo
where romanzo.titolo like "%Zeno%"

Esercizio 16
select*
from romanzo
where romanzo.AnnoPubblicazione < 1900 and romanzo.titolo like "%Sposi%" 

Esercizio 17
select * 
from romanzo, autore
where romanzo.autore = autore.id and autore.nome = "Alessandro" and autore.cognome = "Manzoni"

Esercizio 18
select distinct *
from romanzo, autore
where romanzo.autore = autore.id and autore.cognome = "Don DeLillo"

Esercizio 19
select *
from romanzo, Personaggio, PersonaggioRomanzo
where personaggio.nome = "Harry" and ((personaggio.id = PersonaggioRomanzo.personaggio) and (romanzo.id = PersonaggioRomanzo.romanzo))

Esercizio 20
select *
from Romanzo R left join Autore A on R.Autore = A.ID
where A.ID is null