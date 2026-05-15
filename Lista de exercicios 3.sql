CREATE DATABASE EmpresaDB;

USE EmpresaDB;

CREATE TABLE Departamento(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(100) NOT NULL,
	DataCriacao DATE  
);

CREATE TABLE Funcionarios (

	Id INT PRIMARY KEY IDENTITY (1,1),
	Nome VARCHAR (100) NOT NULL,
	Email VARCHAR (200) UNIQUE,
	Salario DECIMAL (8,2),
	DataAdmissao DATE,
	IdDepartamento INT FOREIGN KEY REFERENCES Departamento (Id)
);

CREATE TABLE Projetos(

	Id INT PRIMARY KEY IDENTITY (1,1),
	Nome VARCHAR (100) NOT NULL,
	Orcamento DECIMAl (10,2),
	DataInicio DATE,
	DataFim DATE

);

CREATE TABLE FuncionariosProjetos(
	IdFuncionariosProjetos INT PRIMARY KEY IDENTITY (1,1),
	IdFuncionarios INT FOREIGN KEY REFERENCES Funcionarios (Id),
	IdProjeto INT FOREIGN KEY REFERENCES Projetos (Id)
	
);