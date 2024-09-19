<?php
$comando1 = "None!";
$comando2 = "SELECT nome,custo FROM products";
$comando3 = "SELECT nome,quantidade FROM products";
$comando4 = "SELECT nome FROM categories";
$comando5 = "SELECT p.nome as Produto, c.nome as Categoria FROM categories as c,products as p WHERE p.categoria_id = c.id;";
$comando6 = "SELECT nome as Nome_Produto,quantidade as Quantidade_Produtos FROM products ";
$comando7 = "SELECT nome,custo, round((40 / 100 * custo) + custo) as Perc FROM products";
$comando8 = "SELECT c.nome, round(sum(p.custo),2) as Soma_Custo FROM categories as c, products as p WHERE p.categoria_id = c.id GROUP BY c.nome;";
$comando9 = "SELECT p.nome as Produto,c.nome as Categorias, p.custo,(40 / 100 * p.custo) + p.custo as Preco,p.quantidade, (((40 / 100 * p.custo) + p.custo) * p.quantidade) as Preco_Total FROM products as p, categories as c WHERE p.categoria_id = c.id;";
$comando10 = "SELECT * FROM products ORDER BY nome"; 
$comando11 = "SELECT * FROM products ORDER BY custo DESC";
$comando12 = "SELECT "; //JOIN
$comando13 = "SELECT "; //JOIN
$comando14 = "CREATE TABLE subcategoria(id int PRIMARY KEY AUTO_INCREMENT NOT NULL, nome varchar(100) NOT NULL);";
$comando15 = "INSERT INTO `subcategoria`(`nome`) VALUES ('Camisas'),('Meias'),('Chaveiro'),('Mascote');";
$comando16 = "SELECT "; //incomplete
?>