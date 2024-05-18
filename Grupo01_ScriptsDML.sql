USE pi_3;

-- Inserir dados na tabela Tipos_Usuario
INSERT INTO `Tipos_Usuario` (`Nome`, `Descricao`) VALUES ('Admin', 'Administrador do sistema');
INSERT INTO `Tipos_Usuario` (`Nome`, `Descricao`) VALUES ('Professor', 'Professor da instituição');
INSERT INTO `Tipos_Usuario` (`Nome`, `Descricao`) VALUES ('Aluno', 'Aluno matriculado');
INSERT INTO `Tipos_Usuario` (`Nome`, `Descricao`) VALUES ('Funcionario', 'Funcionário da instituição');
INSERT INTO `Tipos_Usuario` (`Nome`, `Descricao`) VALUES ('Responsavel', 'Responsável pelo aluno');

-- Inserir dados na tabela Enderecos
INSERT INTO `Enderecos` (`Logradouro`, `Numero`, `Complemento`, `CEP`, `Cidade`, `Estado`) VALUES ('Rua A', 100, 'Apto 101', '12345-678', 'Cidade X', 'XX');
INSERT INTO `Enderecos` (`Logradouro`, `Numero`, `Complemento`, `CEP`, `Cidade`, `Estado`) VALUES ('Rua B', 200, 'Casa 1', '23456-789', 'Cidade Y', 'YY');
INSERT INTO `Enderecos` (`Logradouro`, `Numero`, `Complemento`, `CEP`, `Cidade`, `Estado`) VALUES ('Avenida C', 300, NULL, '34567-890', 'Cidade Z', 'ZZ');
INSERT INTO `Enderecos` (`Logradouro`, `Numero`, `Complemento`, `CEP`, `Cidade`, `Estado`) VALUES ('Travessa D', 400, 'Bloco B', '45678-901', 'Cidade W', 'WW');
INSERT INTO `Enderecos` (`Logradouro`, `Numero`, `Complemento`, `CEP`, `Cidade`, `Estado`) VALUES ('Praça E', 500, 'Edifício X', '56789-012', 'Cidade V', 'VV');

-- Inserir dados na tabela Usuarios
INSERT INTO `Usuarios` (`Login`, `Senha`, `ID_Tipo_Usuario`) VALUES ('admin', 'admin123', 1);
INSERT INTO `Usuarios` (`Login`, `Senha`, `ID_Tipo_Usuario`) VALUES ('prof1', 'prof123', 2);
INSERT INTO `Usuarios` (`Login`, `Senha`, `ID_Tipo_Usuario`) VALUES ('aluno1', 'aluno123', 3);
INSERT INTO `Usuarios` (`Login`, `Senha`, `ID_Tipo_Usuario`) VALUES ('func1', 'func123', 4);
INSERT INTO `Usuarios` (`Login`, `Senha`, `ID_Tipo_Usuario`) VALUES ('resp1', 'resp123', 5);

-- Inserir dados na tabela Professores
INSERT INTO `Professores` (`Nome`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Professor A', '12345678900', '12345-6789', 1, 2);
INSERT INTO `Professores` (`Nome`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Professor B', '23456789011', '23456-7890', 2, 2);
INSERT INTO `Professores` (`Nome`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Professor C', '34567890122', '34567-8901', 3, 2);
INSERT INTO `Professores` (`Nome`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Professor D', '45678901233', '45678-9012', 4, 2);
INSERT INTO `Professores` (`Nome`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Professor E', '56789012344', '56789-0123', 5, 2);

-- Inserir dados na tabela Alunos
INSERT INTO `Alunos` (`Nome`, `Data_Nascimento`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Aluno A', '2000-01-01', '67890123455', '67890-1234', 1, 3);
INSERT INTO `Alunos` (`Nome`, `Data_Nascimento`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Aluno B', '2001-02-02', '78901234566', '78901-2345', 2, 3);
INSERT INTO `Alunos` (`Nome`, `Data_Nascimento`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Aluno C', '2002-03-03', '89012345677', '89012-3456', 3, 3);
INSERT INTO `Alunos` (`Nome`, `Data_Nascimento`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Aluno D', '2003-04-04', '90123456788', '90123-4567', 4, 3);
INSERT INTO `Alunos` (`Nome`, `Data_Nascimento`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Aluno E', '2004-05-05', '01234567899', '01234-5678', 5, 3);

-- Inserir dados na tabela Funcionarios
INSERT INTO `Funcionarios` (`Nome`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Funcionario A', '23456789000', '23456-7890', 1, 4);
INSERT INTO `Funcionarios` (`Nome`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Funcionario B', '34567890111', '34567-8901', 2, 4);
INSERT INTO `Funcionarios` (`Nome`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Funcionario C', '45678901222', '45678-9012', 3, 4);
INSERT INTO `Funcionarios` (`Nome`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Funcionario D', '56789012333', '56789-0123', 4, 4);
INSERT INTO `Funcionarios` (`Nome`, `CPF`, `Contato`, `ID_Endereco`, `ID_Usuario`) VALUES ('Funcionario E', '67890123444', '67890-1234', 5, 4);

-- Inserir dados na tabela Periodos
INSERT INTO `Periodos` (`Descricao`) VALUES ('2021-1');
INSERT INTO `Periodos` (`Descricao`) VALUES ('2021-2');
INSERT INTO `Periodos` (`Descricao`) VALUES ('2022-1');
INSERT INTO `Periodos` (`Descricao`) VALUES ('2022-2');
INSERT INTO `Periodos` (`Descricao`) VALUES ('2023-1');

-- Inserir dados na tabela Disciplinas
INSERT INTO `Disciplinas` (`Nome`, `ID_Professor`) VALUES ('Matemática', 1);
INSERT INTO `Disciplinas` (`Nome`, `ID_Professor`) VALUES ('Português', 2);
INSERT INTO `Disciplinas` (`Nome`, `ID_Professor`) VALUES ('História', 3);
INSERT INTO `Disciplinas` (`Nome`, `ID_Professor`) VALUES ('Geografia', 4);
INSERT INTO `Disciplinas` (`Nome`, `ID_Professor`) VALUES ('Ciências', 5);

-- Inserir dados na tabela Matriculas_Disciplina
INSERT INTO `Matriculas_Disciplina` (`ID_Disciplina`, `ID_Aluno`, `ID_Periodo`) VALUES (1, 1, 1);
INSERT INTO `Matriculas_Disciplina` (`ID_Disciplina`, `ID_Aluno`, `ID_Periodo`) VALUES (2, 2, 2);
INSERT INTO `Matriculas_Disciplina` (`ID_Disciplina`, `ID_Aluno`, `ID_Periodo`) VALUES (3, 3, 3);
INSERT INTO `Matriculas_Disciplina` (`ID_Disciplina`, `ID_Aluno`, `ID_Periodo`) VALUES (4, 4, 4);
INSERT INTO `Matriculas_Disciplina` (`ID_Disciplina`, `ID_Aluno`, `ID_Periodo`) VALUES (5, 5, 5);

-- Inserir dados na tabela Presencas
INSERT INTO `Presencas` (`Data`, `Presente`, `ID_Matricula_Disciplina`) VALUES ('2024-01-01 08:00:00', TRUE, 1);
INSERT INTO `Presencas` (`Data`, `Presente`, `ID_Matricula_Disciplina`) VALUES ('2024-01-02 08:00:00', TRUE, 2);
INSERT INTO `Presencas` (`Data`, `Presente`, `ID_Matricula_Disciplina`) VALUES ('2024-01-03 08:00:00', TRUE, 3);
INSERT INTO `Presencas` (`Data`, `Presente`, `ID_Matricula_Disciplina`) VALUES ('2024-01-04 08:00:00', TRUE, 4);
INSERT INTO `Presencas` (`Data`, `Presente`, `ID_Matricula_Disciplina`) VALUES ('2024-01-05 08:00:00', TRUE, 5);

-- Inserir dados na tabela Notas
INSERT INTO `Notas` (`Data`, `Valor`, `ID_Matricula_Disciplina`) VALUES ('2024-01-10', 8.5, 1);
INSERT INTO `Notas` (`Data`, `Valor`, `ID_Matricula_Disciplina`) VALUES ('2024-01-10', 7.0, 2);
INSERT INTO `Notas` (`Data`, `Valor`, `ID_Matricula_Disciplina`) VALUES ('2024-01-10', 9.0, 3);
INSERT INTO `Notas` (`Data`, `Valor`, `ID_Matricula_Disciplina`) VALUES ('2024-01-10', 6.5, 4);
INSERT INTO `Notas` (`Data`, `Valor`, `ID_Matricula_Disciplina`) VALUES ('2024-01-10', 10.0, 5);

-- Inserir dados na tabela Disciplinas_Boletim
INSERT INTO `Disciplinas_Boletim` (`Faltas`, `Media`, `ID_Matricula_Disciplina`) VALUES (2, 8.5, 1);
INSERT INTO `Disciplinas_Boletim` (`Faltas`, `Media`, `ID_Matricula_Disciplina`) VALUES (3, 7.0, 2);
INSERT INTO `Disciplinas_Boletim` (`Faltas`, `Media`, `ID_Matricula_Disciplina`) VALUES (1, 9.0, 3);
INSERT INTO `Disciplinas_Boletim` (`Faltas`, `Media`, `ID_Matricula_Disciplina`) VALUES (4, 6.5, 4);
INSERT INTO `Disciplinas_Boletim` (`Faltas`, `Media`, `ID_Matricula_Disciplina`) VALUES (0, 10.0, 5);

-- Inserir dados na tabela Reunioes
INSERT INTO `Reunioes` (`Data`, `Nome_Responsavel`, `ID_Aluno`, `ID_Professor`) VALUES ('2024-02-01 10:00:00', 'Responsável A', 1, 1);
INSERT INTO `Reunioes` (`Data`, `Nome_Responsavel`, `ID_Aluno`, `ID_Professor`) VALUES ('2024-02-02 11:00:00', 'Responsável B', 2, 2);
INSERT INTO `Reunioes` (`Data`, `Nome_Responsavel`, `ID_Aluno`, `ID_Professor`) VALUES ('2024-02-03 12:00:00', 'Responsável C', 3, 3);
INSERT INTO `Reunioes` (`Data`, `Nome_Responsavel`, `ID_Aluno`, `ID_Professor`) VALUES ('2024-02-04 13:00:00', 'Responsável D', 4, 4);
INSERT INTO `Reunioes` (`Data`, `Nome_Responsavel`, `ID_Aluno`, `ID_Professor`) VALUES ('2024-02-05 14:00:00', 'Responsável E', 5, 5);

-- Inserir dados na tabela Comunicados
INSERT INTO `Comunicados` (`Assunto`, `Mensagem`, `Data`) VALUES ('Aviso 1', 'Mensagem do aviso 1', '2024-03-01 09:00:00');
INSERT INTO `Comunicados` (`Assunto`, `Mensagem`, `Data`) VALUES ('Aviso 2', 'Mensagem do aviso 2', '2024-03-02 10:00:00');
INSERT INTO `Comunicados` (`Assunto`, `Mensagem`, `Data`) VALUES ('Aviso 3', 'Mensagem do aviso 3', '2024-03-03 11:00:00');
INSERT INTO `Comunicados` (`Assunto`, `Mensagem`, `Data`) VALUES ('Aviso 4', 'Mensagem do aviso 4', '2024-03-04 12:00:00');
INSERT INTO `Comunicados` (`Assunto`, `Mensagem`, `Data`) VALUES ('Aviso 5', 'Mensagem do aviso 5', '2024-03-05 13:00:00');

-- Inserir dados na tabela Comunicados_Usuarios
INSERT INTO `Comunicados_Usuarios` (`Usuario_Remetente`, `Usuario_Destinatario`, `ID_Comunicado`) VALUES (1, 2, 1);
INSERT INTO `Comunicados_Usuarios` (`Usuario_Remetente`, `Usuario_Destinatario`, `ID_Comunicado`) VALUES (1, 3, 2);
INSERT INTO `Comunicados_Usuarios` (`Usuario_Remetente`, `Usuario_Destinatario`, `ID_Comunicado`) VALUES (1, 4, 3);
INSERT INTO `Comunicados_Usuarios` (`Usuario_Remetente`, `Usuario_Destinatario`, `ID_Comunicado`) VALUES (1, 5, 4);
INSERT INTO `Comunicados_Usuarios` (`Usuario_Remetente`, `Usuario_Destinatario`, `ID_Comunicado`) VALUES (1, 2, 5);
