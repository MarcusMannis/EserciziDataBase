Esercizio 1

select Persona.Nome, Città.Regione
from Persona left join Città on Persona.CittàNascita = Città.nome
where Persona.Età >=18

Esercizio 2

select PG.Nome
from Genia join Persona PG on Genia.Genitore=PG.Nome
join Persona PF on Genia.Figlio=PF.Nome
where PG.Città = PF.Città

Esercizio 3

select distinct Persona.CittàNascita, Persona.Nome
from Persona join Genia on Persona.Nome = Genia.Genitore
Where Persona.Età >=50

Esercizio 4

select distinct F.Genitore
from Genia F join Genia G on G.Genitore = F.Figlio
