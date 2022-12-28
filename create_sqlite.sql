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