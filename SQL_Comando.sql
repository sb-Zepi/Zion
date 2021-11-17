SELECT TO_CHAR(NOTAS_FISCAIS.DATA_VENDA,'YYYY-MM') AS MESss_ANO, SUM(ITENS_NOTAS_FISCAIS.QUANTIDADE * ITENS_NOTAS_FISCAIS.PRECO) AS TOTAL_VENDA
FROM NOTAS_FISCAIS INNER JOIN ITENS_NOTAS_FISCAIS
ON NOTAS_FISCAIS.NUMERO = ITENS_NOTAS_FISCAIS.NUMERO
GROUP BY TO_CHAR(NOTAS_FISCAIS.DATA_VENDA,'YYYY-MM')
ORDER BY TO_CHAR(NOTAS_FISCAIS.DATA_VENDA,'YYYY-MM');


SELECT TABELA_DE_CLIENTES.ESTADO, NOTAS_FISCAIS.TIPO_VENDA, TO_CHAR(NOTAS_FISCAIS.DATA_VENDA,'YYYY-MM') AS MES_ANO, 
COUNT(NOTAS_FISCAIS.NUMERO) AS NUMERO_VENDAS  FROM NOTAS_FISCAIS
INNER JOIN TABELA_DE_CLIENTES ON NOTAS_FISCAIS.CPF = TABELA_DE_CLIENTES.CPF
GROUP BY TABELA_DE_CLIENTES.ESTADO, NOTAS_FISCAIS.TIPO_VENDA, TO_CHAR(NOTAS_FISCAIS.DATA_VENDA,'YYYY-MM')
ORDER BY TABELA_DE_CLIENTES.ESTADO, NOTAS_FISCAIS.TIPO_VENDA, TO_CHAR(NOTAS_FISCAIS.DATA_VENDA,'YYYY-MM');

INSERT INTO NOTAS_FISCAIS VALUES ('50534475787','00236',TO_DATE('2018-04-01','YYYY-MM-DD'),10000001,0.12,6311,'Atacado');
INSERT INTO ITENS_NOTAS_FISCAIS VALUES (10000001, '1013793', 63, 24.01);
INSERT INTO ITENS_NOTAS_FISCAIS VALUES (10000001, '1101035', 26, 9.0105);