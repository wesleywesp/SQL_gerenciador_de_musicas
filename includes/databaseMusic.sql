-- Criação da base de dados
CREATE DATABASE musica;

-- Usar a base de dados criada
USE musica;

-- Tabela de artistas
CREATE TABLE artistas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(100),
    tipo_artista ENUM('Solo', 'Banda') NOT NULL
);

-- Tabela de álbuns
CREATE TABLE albuns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    ano_lancamento INT,
    id_artista INT,
    FOREIGN KEY (id_artista) REFERENCES artistas(id)
);

-- Tabela de músicas
CREATE TABLE musicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    duracao TIME,
    id_album INT,
    letra TEXT,
    FOREIGN KEY (id_album) REFERENCES albuns(id)
);

-- Tabela de produtores
CREATE TABLE produtores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);
