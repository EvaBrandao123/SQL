use sellsoft;

INSERT INTO cargos(descricao) values ("Analista de Sistema");
INSERT INTO cargos(descricao) values ("Web designer");
INSERT INTO cargos(descricao) values ("Programador");

INSERT INTO funcionarios(nome, cargos_id) values ("Paulina Manzambi", 3);
INSERT INTO funcionarios(nome, cargos_id) values ("Vitoria Guma", 2);

INSERT INTO funcionarios(nome, cargos_id) values ("Patricia Vania", 1);


INSERT INTO projetos(nome, data_inicio, data_fim) values ("JornalApp", "2020-01-01", "2023-01-01");

INSERT INTO projetos_has_funcionarios(projetos_id, funcionarios_id) values (2, 4);

INSERT INTO vendas(preco, projetos_id) values ("220000", 2);

-------------------------------------------------

select projetos.nome as Projetos, funcionarios.nome as Funcionarios, cargos.descricao as Cargos from projetos_has_funcionarios, projetos, funcionarios, cargos where
projetos_has_funcionarios.projetos_id = projetos.id and projetos_has_funcionarios.funcionarios_id = funcionarios.id 
and funcionarios.cargos_id = cargos.id;

-------------------------------------------------

select projetos.nome, vendas.preco, vendas.cliente from projetos_has_funcionarios, projetos, vendas where
projetos_has_funcionarios.projetos_id = projetos.id and vendas.projetos_id = projetos.id group by cliente;

-------------------------------------------------

SELECT 
    Vezes_Vendidas, projetos.nome AS Projeto
FROM
    (SELECT 
        max_projeto_data.projeto_id AS projeto_id,
            MAX(total) AS Vezes_Vendidas
    FROM
        (SELECT 
        vendas.projetos_id AS projeto_id,
            COUNT(projetos_id) AS total
    FROM
        vendas
    GROUP BY projetos_id) AS max_projeto_data) AS data,
    projetos
WHERE
    projeto_id = projetos.id;

-------------------------------------------------


 (SELECT 
        vendas.projetos_id AS projeto_id,
            COUNT(projetos_id) AS total
    FROM
        vendas
    GROUP BY projetos_id order by total desc limit 1);
    
    
    

(SELECT 
    vendas.projetos_id AS projeto_id,
    COUNT(projetos_id) AS total
FROM
    vendas
GROUP BY projetos_id
ORDER BY total DESC
LIMIT 1);

select projetos.nome from projetos;

SELECT 
    projetos.nome as projeto, data.total as vezes_vendidas
FROM
    projetos,
    (SELECT 
        vendas.projetos_id AS projeto_id,
            COUNT(projetos_id) AS total
    FROM
        vendas
    GROUP BY projetos_id
    ORDER BY total DESC
    LIMIT 1) AS data
WHERE
    data.projeto_id = projetos.id;
    