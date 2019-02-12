--- Inserção ---
-- Cria um usuario com os parametros @email e @senha e define o tipo como paciente 
-- Em seguida, cria um paciente e coloca esse monte de dados nele
CREATE PROCEDURE InserirPaciente @EMAIL VARCHAR(200) , @SENHA VARCHAR(200) , @NOME VARCHAR(200) , @CPF CHAR(11), @RG CHAR(9), @TELEFONE CHAR(11) @DATA_NASCIMENTO DATE
AS 
BEGIN 
INSERT INTO Usuario(EMAIL,SENHA,ID_TIPO_USUARIO) VALUES(@EMAIL,@SENHA,3);
-- SCOPE_IDENTITY : Recebe o ID do ultimo registro inserido em qualquer banco de dados (nesse caso, como o ultimo registro é do unsuario inserido, ele cria um paciente e já anexa ele ao usuario)
INSERT INTO Paciente(ID_USUARIO,NOME,CPF,RG,TELEFONE,DATA_NASCIMENTO) VALUES (SCOPE_IDENTITY(),@NOME,@CPF,@RG,@TELEFONE,@DATA_NASCIMENTO);
END

-- Cria um usuario com os parametros @email e @senha e define o tipo como medico
CREATE PROCEDURE InserirMedico @EMAIL VARCHAR(200) , @SENHA VARCHAR(200) , @NOME VARCHAR(200) , @CRM CHAR(7), @ID_CLINICA INT , @ID_ESPECIALIDADE INT
AS 
BEGIN 
INSERT INTO Usuario(EMAIL,SENHA,TIPO_USUARIO) VALUE(@EMAIL,@SENHA,2);
INSERT INTO Medico(ID_USUARIO,NOME,CRM,ID_CLINICA,ID_ESPECIALDADE) VALUE(SCOPE_IDENTITY(),@NOME,@CRM,@ID_CLINICA,@ID_ESPECIALIDADE);
END

-- Cria um usuario com os parametros @email e @senha e define o tipo como administrador
CREATE PROCEDURE CriarAdmin @EMAIL VARCHAR(200) , @SENHA VARCHAR(200)
AS 
BEGIN 
INSERT INTO Usuario(EMAIL,SENHA,TIPO_USUARIO) VALUE(@EMAIL,@SENHA,1);
END