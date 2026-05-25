-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE tb_estado (
cd_estado INTEGER PRIMARY KEY,
estado CHAR(30)
)

CREATE TABLE tb_vendedor (
vendedor VARCHAR(30),
matricula INTEGER PRIMARY KEY
)

CREATE TABLE tb_filial (
filial VARCHAR(30),
cd_filial INTEGER PRIMARY KEY
)

CREATE TABLE tb_produto (
produto VARCHAR(30),
valor DECIMAL(8.2),
cd_produto INTEGER PRIMARY KEY
)

CREATE TABLE tb_venda (
nr_venda INTEGER PRIMARY KEY,
dt_venda DATETIME,
vl_venda DECIMAL(8.2),
cd_produto INTEGER,
cd_cidade INTEGER,
cd_filial INTEGER,
matricula INTEGER,
FOREIGN KEY(cd_produto) REFERENCES tb_produto (cd_produto),
FOREIGN KEY(cd_filial) REFERENCES tb_filial (cd_filial),
FOREIGN KEY(matricula) REFERENCES tb_vendedor (matricula)
)

CREATE TABLE tb_cidade (
cidade VARCHAR(30),
cd_cidade INTEGER PRIMARY KEY,
cd_estado INTEGER,
FOREIGN KEY(cd_estado) REFERENCES tb_estado (cd_estado)
)

ALTER TABLE tb_venda ADD FOREIGN KEY(cd_cidade) REFERENCES tb_cidade (cd_cidade)
