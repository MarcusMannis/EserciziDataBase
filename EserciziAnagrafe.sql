Esercizio 1

select Persona.Nome, Città.Regione
from Persona left join Città on Persona.CittàNascita = Città.nome
where Persona.Età >=18
