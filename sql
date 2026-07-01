CREATE TABLE Autor 
( 
 id_autor INT PRIMARY KEY,  
 nome FLOAT,  
); 

CREATE TABLE Livro autor 
( 
 id_livro INT PRIMARY KEY,  
 id_autor INT PRIMARY KEY,  
); 

CREATE TABLE Editora 
( 
 id_editora INT PRIMARY KEY,  
 nome FLOAT,  
); 

CREATE TABLE Livro 
( 
 id_livro INT PRIMARY KEY,  
 isbn INT,  
 titulo FLOAT,  
 ano_publicado INT,  
 edição INT,  
 id_editora INT,  
 id_categoria INT,  
); 

CREATE TABLE Categoria 
( 
 id_categoria INT PRIMARY KEY,  
 nome FLOAT,  
); 

CREATE TABLE Exemplar 
( 
 id_exemplar INT PRIMARY KEY,  
 status FLOAT,  
 id_livro INT,  
); 

CREATE TABLE Empréstimo 
( 
 id_emprestimo INT PRIMARY KEY,  
 data_emprestimo INT,  
 data_prevista INT,  
 data_devolução INT,  
 id_usuario INT,  
 id_exemplar INT,  
); 

CREATE TABLE Multa 
( 
 id_multa INT PRIMARY KEY,  
 valor INT,  
 pago FLOAT,  
 id_emprestimo INT,  
); 

CREATE TABLE Usuário 
( 
 id_usuario INT PRIMARY KEY,  
 nome FLOAT,  
 cpf INT,  
 email FLOAT,  
 telefone INT,  
 tipo_usuario INT,  
 idCurso INT,  
); 

CREATE TABLE Curso 
( 
 id_curso INT PRIMARY KEY,  
 nome FLOAT,  
); 

CREATE TABLE Tipo de usuário 
( 
 tipo_usuario INT PRIMARY KEY,  
 descrição FLOAT,  
); 

ALTER TABLE Livro autor ADD FOREIGN KEY(id_livro) REFERENCES Livro (id_livro)
ALTER TABLE Livro autor ADD FOREIGN KEY(id_autor) REFERENCES Autor (id_autor)
ALTER TABLE Livro ADD FOREIGN KEY(id_editora) REFERENCES Editora (id_editora)
ALTER TABLE Livro ADD FOREIGN KEY(id_categoria) REFERENCES Categoria (id_categoria)
ALTER TABLE Exemplar ADD FOREIGN KEY(id_livro) REFERENCES Livro (id_livro)
ALTER TABLE Empréstimo ADD FOREIGN KEY(id_usuario) REFERENCES Usuário (id_usuario)
ALTER TABLE Empréstimo ADD FOREIGN KEY(id_exemplar) REFERENCES Exemplar (id_exemplar)
ALTER TABLE Multa ADD FOREIGN KEY(id_emprestimo) REFERENCES Empréstimo (id_emprestimo)
ALTER TABLE Usuário ADD FOREIGN KEY(tipo_usuario) REFERENCES Tipo de usuário (tipo_usuario)
ALTER TABLE Usuário ADD FOREIGN KEY(idCurso) REFERENCES Curso (idCurso)
