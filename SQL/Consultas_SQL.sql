--P1. Qual é a receita total gerada por clientes do sexo masculino em comparação com clientes do sexo feminino?

SELECT gender, SUM(purchase_amount) AS Receita
FROM customer
GROUP BY gender;

--P2. Quais clientes usaram um desconto, mas ainda assim gastaram mais do que o valor médio da compra?

SELECT customer_id, purchase_amount
FROM customer
WHERE discount_applied = 'Yes' AND purchase_amount > (SELECT AVG(purchase_amount) FROM customer);


-- P3. Quais são os 5 produtos com a maior classificação média de avaliação?

SELECT item_purchased, ROUND(AVG(review_rating),2) as 'Média de Avaliação'
FROM customer
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC LIMIT 5;


--P4. Compare os valores médios de compra entre o frete padrão e o frete expresso (Standard e Express).

SELECT shipping_type, ROUND(AVG(purchase_amount),2)
FROM customer
WHERE shipping_type IN ('Standard','Express')
GROUP BY shipping_type;


--P5. Os clientes assinantes gastam mais? 
--Compare o gasto médio e a receita total entre assinantes e não assinantes.

SELECT subscription_status, COUNT(customer_id) as 'Total de Clientes' , 
ROUND(AVG(purchase_amount),2) 'Gasto Médio', SUM(purchase_amount) 'Receita Total'
FROM customer
GROUP BY subscription_status;

--P6. Quais são os 5 produtos com a maior porcentagem de compras com descontos aplicados?

SELECT item_purchased,
       ROUND(100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS Porcentagem_com_desconto
FROM customer
GROUP BY item_purchased
ORDER BY Porcentagem_com_desconto DESC
LIMIT 5;

--P7. Segmente os clientes em Novos, Recorrentes e Fiéis com base no 
--número total de compras anteriores e mostre a contagem de cada segmento.

WITH customer_type as (
SELECT customer_id, previous_purchases,
	CASE 
		WHEN previous_purchases = 1 THEN 'Novo'
		WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Recorrente'
		ELSE 'Fiél'
		END as customer_segment
FROM customer)
	
SELECT customer_segment,count(*) AS "Número de Clientes" 
FROM customer_type 
GROUP BY customer_segment;

--P8. Quais são os 3 produtos mais comprados em cada categoria?

WITH item_counts AS (
    SELECT category,
           item_purchased,
           COUNT(customer_id) AS total_orders,
           ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
    FROM customer
    GROUP BY category, item_purchased
)
SELECT item_rank,category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <=3;


--P9. Os clientes que compram com frequência (mais de 5 compras anteriores) também são assinantes?

SELECT subscription_status, COUNT(customer_id) as 'Clientes Recorrentes'
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status


--P10. Qual é a contribuição de cada faixa etária para a receita?


SELECT age_group, SUM(purchase_amount) as Total_Receita
FROM customer
GROUP BY age_group
ORDER BY Total_Receita DESC

