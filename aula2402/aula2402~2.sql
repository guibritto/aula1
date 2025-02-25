CREATE TABLE aluno(
ra CHAR(9),
nome VARCHAR2(50),
CONSTRAINT aluno_pk PRIMARY KEY(ra));

INSERT INTO aluno (ra,nome) VALUES ('111222333','Antonio Alves');
INSERT INTO aluno (ra,nome) VALUES ('222333444','Beatriz Bernardes');
INSERT INTO aluno (ra,nome) VALUES ('333444555','Cláudio Cardoso');

DECLARE 
    v_ra CHAR(9) := '333444555';
    v_nome VARCHAR2(50);
BEGIN
    SELECT nome INTO v_nome FROM aluno WHERE ra = v_ra;
    dbms_output.put_line('O nome d aluno é: '||v_nome);
END;

DECLARE
    v_ra CHAR(9) := '444555666';
    v_nome VARCHAR2(50) := 'Daniela Dorneles';
BEGIN
    INSERT INTO aluno (ra,nome) VALUES (v_ra,v_nome);
END;

DECLARE
    v_ra CHAR(9) := '111222333';
    v_nome VARCHAR2(50) := 'Antonio Azevedo';
BEGIN
    UPDATE aluno SET nome = v_nome WHERE ra = v_ra;
END;

DECLARE
    v_ra CHAR(9) := '444555666';
BEGIN
    DELETE FROM aluno WHERE ra = v_ra;
END;

