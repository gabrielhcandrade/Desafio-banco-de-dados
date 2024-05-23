-- N�mero 1: Buscar nome e ano dos filmes

SELECT 
	Nome,
	Ano
FROM Filmes

-- N�mero 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT
	Nome,
	ANO,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- N�mero 3: Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Nome = 'De volta para o futuro'

-- N�mero 4: Buscar os filmes lan�ados em 1997

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Ano = 1997

-- N�mero 5: Buscar os filmes lan�ados ap�s os anos 2000

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Ano >= 2000

-- N�mero 6: Buscar os filmes com a dura��o maior que 100 e menor que 150, ordenando pela dura��o em ordem crescente

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- N�mero 7: Buscar a quantidade de filmes lan�ados no ano, agrupando por ano, ordenando pela dura��o em ordem decrescente

SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes 
WHERE Ano <> ' '
GROUP BY Ano
ORDER BY Quantidade DESC

-- N�mero 8:  Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome

SELECT * FROM Atores
WHERE Genero = 'M'

-- N�mero 9: Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- N�mero 10:  Buscar o nome do filme e o g�nero

SELECT 
	Nome,
	Genero
FROM
	Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- N�mero 11: Buscar o nome do filme pelo g�nero 'Mist�rio'

SELECT 
	Nome,
	Genero
FROM
	Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mist�rio'

-- N�mero 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT 
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM 
	Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor


