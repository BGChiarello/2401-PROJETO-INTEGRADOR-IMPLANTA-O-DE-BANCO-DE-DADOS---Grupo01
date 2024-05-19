USE pi_3;

CREATE TABLE `Enderecos` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Logradouro` varchar(45)  NOT NULL,
  `Numero`smallint  NOT NULL,
  `Complemento`varchar(45),
  `CEP`varchar(9) NOT NULL,
  `Cidade`varchar(45) NOT NULL,
  `Estado`varchar(2) NOT NULL
);

CREATE TABLE `Professores` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `CPF`varchar(11) NOT NULL,
  `Contato` varchar(45),
  `ID_Endereco` bigint,
  `ID_Usuario` bigint
);

CREATE TABLE `Alunos` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Data_Nascimento` date,
  `CPF`varchar(11) NOT NULL,
  `Contato` varchar(45),
  `ID_Endereco` bigint,
  `ID_Usuario` bigint NOT NULL
);

CREATE TABLE `Funcionarios` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `CPF`varchar(11) NOT NULL,
  `Contato` varchar(45),
  `ID_Endereco` bigint,
  `ID_Usuario` bigint
);

CREATE TABLE `Usuarios` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Login` varchar(45) NOT NULL,
  `Senha` varchar(45) NOT NULL,
  `ID_Tipo_Usuario` bigint NOT NULL
);

CREATE TABLE `Tipos_Usuario` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Nome`varchar(45) NOT NULL,
  `Descricao` varchar(45)
);

CREATE TABLE `Disciplinas` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `ID_Professor` bigint
);

CREATE TABLE `Periodos` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Descricao` varchar(45) NOT NULL
);

CREATE TABLE `Matriculas_Disciplina` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `ID_Disciplina` bigint,
  `ID_Aluno` bigint,
  `ID_Periodo` bigint
);

CREATE TABLE `Presencas` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Data` datetime NOT NULL,
  `Presente` bigint  NOT NULL,
  `ID_Matricula_Disciplina` bigint
);

CREATE TABLE `Notas` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Data` date NOT NULL,
  `Valor` float NOT NULL,
  `ID_Matricula_Disciplina` bigint
);

CREATE TABLE `Disciplinas_Boletim` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Faltas` smallint,
  `Media` float NOT NULL,
  `ID_Matricula_Disciplina` bigint NOT NULL
);

CREATE TABLE `Reunioes` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Data` datetime NOT NULL,
  `Nome_Responsavel` varchar(45),
  `ID_Aluno` bigint,
  `ID_Professor` bigint
);

CREATE TABLE `Comunicados` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Assunto` varchar(45) NOT NULL,
  `Mensagem` varchar(255) NOT NULL,
  `Data` datetime NOT NULL
);

CREATE TABLE `Comunicados_Usuarios` (
  `ID` bigint PRIMARY KEY AUTO_INCREMENT,
  `Usuario_Remetente` bigint NOT NULL,
  `Usuario_Destinatario` bigint NOT NULL,
  `ID_Comunicado` bigint NOT NULL
);

ALTER TABLE `Professores` ADD FOREIGN KEY (`ID_Endereco`) REFERENCES `Enderecos` (`ID`);

ALTER TABLE `Professores` ADD FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuarios` (`ID`);

ALTER TABLE `Alunos` ADD FOREIGN KEY (`ID_Endereco`) REFERENCES `Enderecos` (`ID`);

ALTER TABLE `Alunos` ADD FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuarios` (`ID`);

ALTER TABLE `Funcionarios` ADD FOREIGN KEY (`ID_Endereco`) REFERENCES `Enderecos` (`ID`);

ALTER TABLE `Funcionarios` ADD FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuarios` (`ID`);

ALTER TABLE `Usuarios` ADD FOREIGN KEY (`ID_Tipo_Usuario`) REFERENCES `Tipos_Usuario` (`ID`);

ALTER TABLE `Disciplinas` ADD FOREIGN KEY (`ID_Professor`) REFERENCES `Professores` (`ID`);

ALTER TABLE `Matriculas_Disciplina` ADD FOREIGN KEY (`ID_Disciplina`) REFERENCES `Disciplinas` (`ID`);

ALTER TABLE `Matriculas_Disciplina` ADD FOREIGN KEY (`ID_Aluno`) REFERENCES `Alunos` (`ID`);

ALTER TABLE `Matriculas_Disciplina` ADD FOREIGN KEY (`ID_Periodo`) REFERENCES `Periodos` (`ID`);

ALTER TABLE `Presencas` ADD FOREIGN KEY (`ID_Matricula_Disciplina`) REFERENCES `Matriculas_Disciplina` (`ID`);

ALTER TABLE `Notas` ADD FOREIGN KEY (`ID_Matricula_Disciplina`) REFERENCES `Matriculas_Disciplina` (`ID`);

ALTER TABLE `Disciplinas_Boletim` ADD FOREIGN KEY (`ID_Matricula_Disciplina`) REFERENCES `Matriculas_Disciplina` (`ID`);

ALTER TABLE `Reunioes` ADD FOREIGN KEY (`ID_Aluno`) REFERENCES `Alunos` (`ID`);

ALTER TABLE `Reunioes` ADD FOREIGN KEY (`ID_Professor`) REFERENCES `Professores` (`ID`);

ALTER TABLE `Comunicados_Usuarios` ADD FOREIGN KEY (`Usuario_Remetente`) REFERENCES `Usuarios` (`ID`);

ALTER TABLE `Comunicados_Usuarios` ADD FOREIGN KEY (`Usuario_Destinatario`) REFERENCES `Usuarios` (`ID`);

ALTER TABLE `Comunicados_Usuarios` ADD FOREIGN KEY (`ID_Comunicado`) REFERENCES `Comunicados` (`ID`);


