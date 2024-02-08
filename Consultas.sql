-- Script de seleçoes

-- Verificar todas as arvores tombadas de uma familia, dipostar em ordem alfabética do nome popular

SELECT  
    f.familia_nome AS Familia,
    e.especie_nome_popular AS Especie,
    a.arvore_id AS arvore_id,
    a.arvore_endereco AS Endereco,
    a.arvore_ponto_referencia AS Referencia
FROM  
    arvore a
JOIN  
    especie e ON a.arvore_especie_fk = e.especie_id
JOIN  
    familia f ON e.familia_fk = f.familia_id
WHERE  
    f.familia_nome = 'Bombacaceae'
ORDER BY
	e.especie_nome_popular ASC;

-- Selecionar todas as arvores de um mesmo bairro

SELECT
	a.arvore_id AS arvore_id,
    a.arvore_endereco AS Endereco,
    a.arvore_ponto_referencia AS Referencia
FROM
	arvore a
WHERE
	a.arvore_endereco LIKE '%Água Fria%';

-- Selecionar todos os serviços cosméticos cadastrado

SELECT * FROM Manutencao WHERE manutencao_tipo = 'Cosmética';


	