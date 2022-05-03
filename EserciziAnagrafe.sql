Esercizio 1

select Persona.Nome, Città.Regione
from Persona left join Città on Persona.CittàNascita = Città.nome
where Persona.Età >=18

Esercizio 2

select PF.CittàNascita as CittàNascita, Genia.Figlio, Genia.Genitore, PG.CittàNascita as CittàNascitaG
from Genia join Persona PG on Genia.Genitore=PG.Nome
    join Persona PF on Genia.Figlio=PF.Nome
where PG.CittàNascita = PF.CittàNascita

Esercizio 3

select distinct Persona.CittàNascita
from Persona join Genia on Persona.Nome = Genia.Genitore
Where Persona.Età >=50

Esercizio 4

select distinct F.Genitore
from Genia F join Genia G on G.Genitore = F.Figlio

Esercizio 5

select count(*) as NumeroMaschiNelLazio
from Persona join Città on Persona.CittàNascita =Città.Nome
where sesso= "M" and Regione = "Lazio"

Esercizio 6

select Persona.CittàNascita, count(distinct Persona.Nome)
from Persona join Genia on Persona.Nome = Genia.Genitore
where Persona.sesso="F"
group by Persona.CittàNascita