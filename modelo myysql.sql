
CREATE TABLE Gestor (
    cod_gestor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    identificacao VARCHAR(50)
);


CREATE TABLE Professor (
    cod_professor INT PRIMARY KEY,
    cod_gestor INT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    identificacao VARCHAR(50),

    FOREIGN KEY (cod_gestor) REFERENCES Gestor(cod_gestor)
);


CREATE TABLE Curso (
    cod_curso INT PRIMARY KEY,
    cod_professor INT,
    conteudo VARCHAR(200) NOT NULL,

    FOREIGN KEY (cod_professor) REFERENCES Professor(cod_professor)
);


CREATE TABLE Aluno (
    cod_aluno INT PRIMARY KEY,
    cod_curso INT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    identificacao VARCHAR(50),

    FOREIGN KEY (cod_curso) REFERENCES Curso(cod_curso)
);


CREATE TABLE Responsavel (
    cod_responsavel INT PRIMARY KEY,
    cod_aluno INT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    aluno_responsavel VARCHAR(100),

    FOREIGN KEY (cod_aluno) REFERENCES Aluno(cod_aluno)
);


CREATE TABLE Jogo (
    cod_jogo INT PRIMARY KEY,
    cod_curso INT,
    titulo VARCHAR(100) NOT NULL,
    conteudo VARCHAR(200) NOT NULL,
    nota_aluno DECIMAL(5,2),

    FOREIGN KEY (cod_curso) REFERENCES Curso(cod_curso)
);
