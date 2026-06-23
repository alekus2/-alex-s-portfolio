CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cargo VARCHAR(50)
);

CREATE TABLE registros_ponto (
    id SERIAL PRIMARY KEY,
    funcionario_id INT,
    entrada TIMESTAMP,
    saida TIMESTAMP,
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id)
);