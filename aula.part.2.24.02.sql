CREATE TABLE aluno(
ra CHAR(9),
nome VARCHAR(50),
CONSTRAINT aluno_PK PRIMARY KEY(ra));

INSERT INTO ALUNO (ra,nome) values ('111122223','Guilherme Britta');
INSERT INTO ALUNO (ra,nome) values ('222233334','Gabi Gol');
INSERT INTO ALUNO (ra,nome) values ('444455556','Thiago Silva');


DECLARE 
    v_ra CHAR(9) := '333444555';
    v_nome VARCHAR2(50);
BEGIN
    SELECT nome INTO v_nome FROM aluno WHERE ra = v_ra;
    dbms_output.put_line('O nome d aluno é: '||v_nome);
END;

DECLARE
    V_RA CHAR(9) := '444455556';
    V_NOME VARCHAR(50) := 'Daniela Dorneles';
BEGIN
    UPDATE ALUNO SET NOME = V_NOME WHERE RA = V_RA;
END;

DECLARE
    V_RA CHAR(9) := '444555666';
BEGIN
DELETE FROM ALUNO WHERE RA = V_RA;
END;