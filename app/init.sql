
CREATE DATABASE escola;
USE escola;

CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200),
    idade INT
);

CREATE TABLE curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200)
);

CREATE TABLE aluno_curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_curso) REFERENCES curso(id),
);

INSERT INTO alunos (nome, idade) VALUES
    ('Marcos', 20),
    ('Ana', 19),
    ('MayTe', 4);

INSERT INTO curso (nome) VALUES
    ('ADS - Analise e Desenvolvimento de Sistemas'),
    ('Inglês');

INSERT INTO aluno_curso (id_aluno, id_curso) VALUES 
    (1,1),
    (2,2),
    (1,2);

-- FOREIGN KEY (id_aluno) REFERENCES alunos(id),
-- FOREIGN KEY (id_curso) REFERENCES curso(id)
-- Auto increment 
