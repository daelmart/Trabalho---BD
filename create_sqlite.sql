-- Retirar os dois comentários seguintes (SÓ PARA MySQL)
-- create database if not exists lab01;
-- use lab01;


-- Tabela cliente
 -- ainda faltam dados
drop table if exists cliente;
create table cliente(
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  apelido VARCHAR(20) NOT NULL,
  id_morada INT FOREIGN KEY,

);

-- Tabela profissional
drop table if exists profissional;
create table profissional(
  id_profissional INT PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  apelido VARCHAR(20) NOT NULL,
  id_morada INT FOREIGN KEY,

);

-- Tabela pedido

drop table if exists pedido;
create table profissional(
  id_pedido INT PRIMARY KEY,
  id_cliente VARCHAR(20) NOT NULL FOREIGN KEY,
  descricao VARCHAR(300) NOT NULL,

);

-- Tabela proposta
drop table if exists proposta;
create table proposta(
  id_proposta INT PRIMARY KEY,
  -- item de proposta?
);

-- Tabela fatura
drop table if exists fatura;
create table fatura(
  id_fatura INT PRIMARY KEY,
  id_proposta INT FOREIGN KEY,
  --etc--
);

-- Tabela material
drop table if exists material;
create table material(
  id_material INT PRIMARY KEY,
  --etc--
);

-- Tabela morada
drop table if exists morada;
create table morada(
  id_morada INT PRIMARY KEY,
  --etc--
);


-- -- Table person

-- drop table if exists person;
-- create table person(
--   id             INT PRIMARY KEY,
--   first_name     VARCHAR(20) NOT NULL,
--   last_name      VARCHAR(20) NOT NULL,
--   address        VARCHAR(100) DEFAULT NULL,
--   email          VARCHAR(50) NOT NULL, 
--   birth_date     DATE NOT NULL,
--   gender_code    CHAR(1) NOT NULL,
--   gender         VARCHAR(10) NOT NULL,
--   zip            INT NOT NULL,
--   country_code   CHAR(2) NOT NULL,
--   dep_code       CHAR(1) NOT NULL,
--   dep            VARCHAR(20) NOT NULL,
--   boss_id        INT DEFAULT NULL
-- );


-- -- Table Product

-- drop table if exists product;
-- create table product(
--   product_code   INT PRIMARY KEY,
--   category       VARCHAR(50) NOT NULL,
--   subcategory    VARCHAR(50) NOT NULL,
--   name           VARCHAR(60) NOT NULL,
--   resale_price   FLOAT NOT NULL,
--   price          FLOAT NOT NULL
-- );


-- -- Table invoice

-- drop table if exists invoice;
-- create table invoice(
--   invoice_num    INT PRIMARY KEY,
--   cust_id        INT NOT NULL,
--   invoice_date   DATE NOT NULL,
--   invoice_total  FLOAT NOT NULL,
--   FOREIGN KEY(cust_id) REFERENCES person(id)
-- );

-- -- Table invoice_item

-- drop table if exists invoice_item;
-- create table invoice_item(
--   invoice_num    INT,
--   item_num       INT NOT NULL,
--   product_code   INT NOT NULL,
--   qty            INT NOT NULL,
--   total          FLOAT NOT NULL,
--   PRIMARY KEY(invoice_num, item_num),
--   FOREIGN KEY (product_code) REFERENCES product(product_code),
--   FOREIGN KEY (invoice_num) REFERENCES invoice(invoice_num)
-- );
