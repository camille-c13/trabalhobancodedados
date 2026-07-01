CREATE TABLE Autor (
    id_autor INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Editora (
    id_editora INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Curso (
    id_curso INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Tipo_Usuario (
    id_tipo_usuario INT PRIMARY KEY,
    descricao VARCHAR(50)
);

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    email VARCHAR(100),
    telefone VARCHAR(20),
    id_tipo_usuario INT,
    id_curso INT
);

CREATE TABLE Livro (
    id_livro INT PRIMARY KEY,
    isbn VARCHAR(20),
    titulo VARCHAR(150),
    ano_publicado INT,
    edicao INT,
    id_editora INT,
    id_categoria INT
);

CREATE TABLE Livro_Autor (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor)
);

CREATE TABLE Exemplar (
    id_exemplar INT PRIMARY KEY,
    status VARCHAR(30),
    id_livro INT
);

CREATE TABLE Emprestimo (
    id_emprestimo INT PRIMARY KEY,
    data_emprestimo DATE,
    data_prevista DATE,
    data_devolucao DATE,
    id_usuario INT,
    id_exemplar INT
);

CREATE TABLE Multa (
    id_multa INT PRIMARY KEY,
    valor DECIMAL(10,2),
    pago BOOLEAN,
    id_emprestimo INT
);


ALTER TABLE Usuario
ADD CONSTRAINT fk_usuario_tipo
FOREIGN KEY (id_tipo_usuario)
REFERENCES Tipo_Usuario(id_tipo_usuario);

ALTER TABLE Usuario
ADD CONSTRAINT fk_usuario_curso
FOREIGN KEY (id_curso)
REFERENCES Curso(id_curso);

ALTER TABLE Livro
ADD CONSTRAINT fk_livro_editora
FOREIGN KEY (id_editora)
REFERENCES Editora(id_editora);

ALTER TABLE Livro
ADD CONSTRAINT fk_livro_categoria
FOREIGN KEY (id_categoria)
REFERENCES Categoria(id_categoria);

ALTER TABLE Livro_Autor
ADD CONSTRAINT fk_livroautor_livro
FOREIGN KEY (id_livro)
REFERENCES Livro(id_livro);

ALTER TABLE Livro_Autor
ADD CONSTRAINT fk_livroautor_autor
FOREIGN KEY (id_autor)
REFERENCES Autor(id_autor);

ALTER TABLE Exemplar
ADD CONSTRAINT fk_exemplar_livro
FOREIGN KEY (id_livro)
REFERENCES Livro(id_livro);

ALTER TABLE Emprestimo
ADD CONSTRAINT fk_emprestimo_usuario
FOREIGN KEY (id_usuario)
REFERENCES Usuario(id_usuario);

ALTER TABLE Emprestimo
ADD CONSTRAINT fk_emprestimo_exemplar
FOREIGN KEY (id_exemplar)
REFERENCES Exemplar(id_exemplar);

ALTER TABLE Multa
ADD CONSTRAINT fk_multa_emprestimo
FOREIGN KEY (id_emprestimo)
REFERENCES Emprestimo(id_emprestimo);

INSERT INTO Tipo_Usuario VALUES
    (1,'Aluno'), 
    (2,'Professor');

INSERT INTO Curso VALUES 
    (1,'Direito'), 
    (2,'Ads');

INSERT INTO Usuario VALUES
    (1,'Camille Cunha Silva','78787960130','camille@gmail.com','61999999999',1,1)
    (2,'kamilly Cunhe Silva','78787540130','kamille@gmail.com','61999999998',2,2)

INSERT INTO Editora VALUES 
    (1,'darkside'); 
INSERT INTO Categoria VALUES 
    (1,'Ficção'); 
INSERT INTO Autor VALUES 
    (1,'Clarice Lispector'), 
    (2,'Machado de Assis');
INSERT INTO Livro VALUES 
    (1,'9784564789','Memórias póstumas',2020,7,1,1); 
INSERT INTO Livro_Autor VALUES 
    (1,1),
    (1,2); 
INSERT INTO Exemplar VALUES 
    (1,'Disponível',1); 
INSERT INTO Emprestimo VALUES 
    (1,'2025-11-01','2025-11-10',NULL); 
INSERT INTO Multa VALUES 
    (1,1,10.00,'N');

SHOW TABLES;
