SET SERVEROUTPU ON;
 
--Exemplo
DECLARE
    variavel01 NUMBER;
    nome       VARCHAR2(30) := 'Vergs';
BEGIN
    variavel01 := 10;
    dbms_output.put_line('O valor digital �: ' || variavel01);
    dbms_output.put_line('O nome digital �: ' || nome);
END;
 
--Exercicio 1
DECLARE
    salarioMinimo NUMBER;
BEGIN
    salarioMinimo := 1500;
    dbms_output.put_line('O valor do novo sal�rio m�nimo com reajuste de 25% �: ' || salarioMinimo * 1.25);
END;
 
DECLARE
    salariominimos NUMBER := 1500;
    aumento       NUMBER;
BEGIN
    aumento := salariominimos + ( salariominimos * 1.25);
    dbms_output.put_line('O valor do novo sal�rio m�nimo com reajuste de 25% �: ' || aumento);
END;
 
--Exercicio2
DECLARE
    valorDolar NUMBER := 45;
    valorReais NUMBER;
BEGIN
    valorReais := valorDolar * 5.71;
    dbms_output.put_line('U$' || valorDolar || ' em reais s�o: R$' || valorReais);
END;
 
--Exercicio3
DECLARE 
    capital NUMBER := 30000;
    juros NUMBER := 1.03;
    montante NUMBER;
    parcela NUMBER;
BEGIN
    parcela := (capital / 10) * juros;
    montante := parcela * 10;
    dbms_output.put_line('O carro dividido em 10 parcelas de ' || parcela || ' ficar� com o valor de ' || montante);
END;