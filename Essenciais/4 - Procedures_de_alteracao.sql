-- Atualiza os valores de um Paciente
CREATE PROCEDURE AtualizarPaciente @ID INT , @EMAIL VARCHAR(200) , @SENHA VARCHAR(200) , @NOME VARCHAR(200) , @CPF CHAR(11), @RG CHAR(9), @TELEFONE CHAR(11), @DATA_NASCIMENTO DATE
AS 
BEGIN 
UPDATE Usuario SET EMAIL = @EMAIL, SENHA = @SENHA WHERE ID = @ID;
UPDATE Paciente SET NOME = @NOME, CPF = @CPF,RG = @RG,TELEFONE = @TELEFONE , DATA_NASCIMENTO = @DATA_NASCIMENTO WHERE ID = @ID;
END
GO

-- Atualiza os valores de um Medico
CREATE PROCEDURE AtualizarMedico @ID INT , @EMAIL VARCHAR(200) , @SENHA VARCHAR(200) , @NOME VARCHAR(200) , @CRM CHAR(7), @ID_CLINICA INT , @ID_ESPECIALIDADE INT
AS 
BEGIN 
UPDATE Usuario SET EMAIL = @EMAIL, SENHA = @SENHA WHERE ID = @ID;
UPDATE Medico SET NOME = @NOME, CRM = @CRM,ID_CLINICA = @ID_CLINICA , ID_ESPECIALIDADE = @ID_ESPECIALIDADE WHERE ID = @ID;
END
GO

-- Atualiza os valores de um administrador
CREATE PROCEDURE AtualizarAdmin @ID INT , @EMAIL VARCHAR(200) , @SENHA VARCHAR(200)
AS 
BEGIN 
UPDATE Usuario SET EMAIL = @EMAIL, SENHA = @SENHA WHERE ID = @ID;
END