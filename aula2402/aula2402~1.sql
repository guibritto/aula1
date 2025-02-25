SET SERVEROUTPUT ON;

DECLARE
    sexo VARCHAR(2) := '&DIGITE';
BEGIN
    IF UPPER(sexo) = 'M' THEN
        dbms_output.put_line('Genero informado é Masculino');
    ELSIF UPPER(sexo) = 'F' THEN
        dbms_output.put_line('Genero informado é Feminino');
    ELSE
        dbms_output.put_line('Genero informado é outro');
    END IF;
END;