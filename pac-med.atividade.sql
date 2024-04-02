### Grupo de comandos DDL ###
CREATE DATABASE nome_basededados

CREATE DATABASE animais_empresa;

## criação de tabelas do banco de dados ##

## table empresas ##
DROP TABLE empresa;
CREATE TABLE empresa
(
 id_empresa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 descritivo VARCHAR (40) NOT NULL,
 telefone CHAR(11) NOT NULL
);

## caso não queira dropar a tabela ##
ALTER TABLE empresa ADD telefone CHAR(11) NOT NULL


CREATE TABLE departamentos
(
id_departamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descritivo VARCHAR (40) NOT NULL 
);

CREATE TABLE projetos 
(
id_projeto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descritivo VARCHAR(100) NOT NULL,
bonus DECIMAL(4,2) NOT NULL
);

CREATE TABLE funcionarios
(
id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(80) NOT NULL,
sexo ENUM("F","M") NOT NULL, 
logradouro VARCHAR(80) NOT NULL,
bairro VARCHAR(80) NOT NULL,
cidade VARCHAR(80) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE,
salario DECIMAL(8,2) NOT NULL,
id_empresa INT NOT NULL,
FOREIGN KEY (id_empresa) REFERENCES empresas (id_empresa),
id_departamento INT NOT NULL,
FOREIGN KEY (id_departamento) REFERENCES departamentos (id_departamento)

);

CREATE TABLE medicos_pacientes
(
 id_med_pac INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 datan DATE NOT NULL,
 horario TIME NOT NULL,
 id_medico INT NOT NULL,
 id_paciente INT NOT NULL,
 FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
 FOREIGN KEY (id_paciente) REFERENCES pacientes (id_paciente)
);

CREATE TABLE pacientes_exames
(
 id_pac_exam INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 datan DATE NOT NULL,
 horario TIME NOT NULL,
 id_paciente INT NOT NULL,
 id_exame INT NOT NULL,
 FOREIGN KEY (id_paciente) REFERENCES pacientes (id_paciente),
 FOREIGN KEY (id_exame) REFERENCES exames (id_exame)
); 

