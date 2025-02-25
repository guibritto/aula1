SET SERVEROUTPUT ON;


--Crie um bloco anõnimo que calcule a quantidade de pedidos por pais
DECLARE
    qtd_pedidos NUMBER;
BEGIN
    SELECT 
        COUNT(quantityordered) 
    INTO qtd_pedidos
    FROM aula2402part2 
    WHERE country = 'France';
    dbms_output.put_line('A quantidade de pedidos da/o' || country || 'é de: ' || qtd_pedidos);
END;
