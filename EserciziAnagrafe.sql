Esercizio 1

select Persona.Nome, Città.Regione
from Persona left join Città on Persona.CittàNascita = Città.nome
where Persona.Età >=18

Esercizio 3

select distinct Persona.CittàNascita, Persona.Nome
from Persona join Genia on Persona.Nome = Genia.Genitore
Where Persona.Età >=50