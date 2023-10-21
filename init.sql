\c train
-- Criação do schema "cities"
CREATE SCHEMA cities;

-- Mude para o schema "cities"
SET search_path TO cities;

-- Criação das tabelas no schema "cities"
CREATE TABLE region (
    id serial PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE type_health (
    id serial PRIMARY KEY,
    type_name varchar(255)
);

CREATE TABLE health (
    id serial PRIMARY KEY,
    name varchar(255),
    id_type_health integer,
    capacity integer,
    FOREIGN KEY (id_type_health) REFERENCES type_health(id)
);

CREATE TABLE type_store (
    id serial PRIMARY KEY,
    type_name varchar(255)
);

CREATE TABLE stores (
    id serial PRIMARY KEY,
    name varchar(255),
    id_type_store integer,
    capacity integer,
    FOREIGN KEY (id_type_store) REFERENCES type_store(id)
);

CREATE TABLE state (
    id serial PRIMARY KEY,
    name varchar(255),
    id_region integer,
    FOREIGN KEY (id_region) REFERENCES region(id)
);

CREATE TABLE cities (
    id serial PRIMARY KEY,
    name varchar(255),
    id_state integer,
    id_health integer,
    id_stores integer,
    FOREIGN KEY (id_state) REFERENCES state(id),
    FOREIGN KEY (id_health) REFERENCES health(id),
    FOREIGN KEY (id_stores) REFERENCES stores(id)
);

-- Inserção de valores aleatórios nas tabelas

-- Inserir dados fictícios na tabela "region"
INSERT INTO region (name) VALUES ('Região 1');
INSERT INTO region (name) VALUES ('Região 2');
INSERT INTO region (name) VALUES ('Região 3');

-- Inserir dados fictícios na tabela "type_health"
INSERT INTO type_health (type_name) VALUES ('Tipo de Saúde 1');
INSERT INTO type_health (type_name) VALUES ('Tipo de Saúde 2');
INSERT INTO type_health (type_name) VALUES ('Tipo de Saúde 3');

-- Inserir dados fictícios na tabela "health"
INSERT INTO health (name, id_type_health, capacity) VALUES ('Hospital A', 1, 100);
INSERT INTO health (name, id_type_health, capacity) VALUES ('Hospital B', 2, 150);
INSERT INTO health (name, id_type_health, capacity) VALUES ('Clínica C', 1, 50);

-- Inserir dados fictícios na tabela "type_store"
INSERT INTO type_store (type_name) VALUES ('Tipo de Loja 1');
INSERT INTO type_store (type_name) VALUES ('Tipo de Loja 2');
INSERT INTO type_store (type_name) VALUES ('Tipo de Loja 3');

-- Inserir dados fictícios na tabela "stores"
INSERT INTO stores (name, id_type_store, capacity) VALUES ('Loja 1', 1, 200);
INSERT INTO stores (name, id_type_store, capacity) VALUES ('Loja 2', 2, 300);
INSERT INTO stores (name, id_type_store, capacity) VALUES ('Mercado 3', 1, 500);

-- Inserir dados fictícios na tabela "state"
INSERT INTO state (name, id_region) VALUES ('Estado 1', 1);
INSERT INTO state (name, id_region) VALUES ('Estado 2', 2);
INSERT INTO state (name, id_region) VALUES ('Estado 3', 3);

-- Inserir dados fictícios na tabela "cities"
INSERT INTO cities (name, id_state, id_health, id_stores) VALUES ('Cidade A', 1, 1, 1);
INSERT INTO cities (name, id_state, id_health, id_stores) VALUES ('Cidade B', 2, 2, 2);
INSERT INTO cities (name, id_state, id_health, id_stores) VALUES ('Cidade C', 3, 3, 3);

-- Inserir dados fictícios na tabela "cities"
INSERT INTO cities (name, id_state, id_health, id_stores) VALUES ('Cidade D', 1, 1, 1);
INSERT INTO cities (name, id_state, id_health, id_stores) VALUES ('Cidade E', 1, 2, 2);
INSERT INTO cities (name, id_state, id_health, id_stores) VALUES ('Cidade F', 2, 3, 3);
INSERT INTO cities (name, id_state, id_health, id_stores) VALUES ('Cidade G', 2, 1, 2);
INSERT INTO cities (name, id_state, id_health, id_stores) VALUES ('Cidade H', 3, 2, 1);
INSERT INTO cities (name, id_state, id_health, id_stores) VALUES ('Cidade I', 3, 3, 3);

-- Inserir dados fictícios na tabela "state"
INSERT INTO state (name, id_region) VALUES ('Estado 4', 1);
INSERT INTO state (name, id_region) VALUES ('Estado 5', 2);
INSERT INTO state (name, id_region) VALUES ('Estado 6', 3);

-- Inserir dados fictícios na tabela "region"
INSERT INTO region (name) VALUES ('Região 4');
INSERT INTO region (name) VALUES ('Região 5');
INSERT INTO region (name) VALUES ('Região 6');

