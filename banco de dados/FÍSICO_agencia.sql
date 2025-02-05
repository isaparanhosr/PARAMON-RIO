-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
id_cliente (pk) VARCHAR(10) PRIMARY KEY,
telefone VARCHAR(10),
nome_cliente VARCHAR(10),
email VARCHAR(10),
data_cadastro VARCHAR(10),
endereco VARCHAR(10),
cep VARCHAR(10)
)

CREATE TABLE Passeio (
id_passeio (pk) VARCHAR(10) PRIMARY KEY,
duracao VARCHAR(10),
nome_passeio VARCHAR(10),
preco VARCHAR(10),
descricao_passeio VARCHAR(10)
)

CREATE TABLE estádio (
id_estadio (pk) VARCHAR(10) PRIMARY KEY,
endereco_estadio VARCHAR(10),
nome_estadio VARCHAR(10)
)

CREATE TABLE reserva (
id_reserva (pk) VARCHAR(10) PRIMARY KEY,
data_reserva VARCHAR(10),
status_reserva (confirmado, pendente, cancelado) VARCHAR(10),
id_cliente (fk) VARCHAR(),
id_estadio (fk) VARCHAR(),
id_passeio (fk) VARCHAR(),
FOREIGN KEY(id_cliente (fk)) REFERENCES Cliente (id_cliente (pk)),
FOREIGN KEY(id_estadio (fk)) REFERENCES estádio (id_estadio (pk)),
FOREIGN KEY(id_passeio (fk)) REFERENCES Passeio (id_passeio (pk))
)

