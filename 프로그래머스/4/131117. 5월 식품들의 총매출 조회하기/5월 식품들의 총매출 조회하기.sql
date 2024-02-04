# 식품의 정보를 담은 FOOD_PRODUCT
# 식품의 주문 정보를 담은 FOOD_ORDER
SELECT A.PRODUCT_ID, A.PRODUCT_NAME, SUM(A.PRICE * B.AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT AS A
INNER JOIN FOOD_ORDER AS B
ON A.PRODUCT_ID = B.PRODUCT_ID
WHERE PRODUCE_DATE LIKE '%2022-05%'
GROUP BY A.PRODUCT_NAME
ORDER BY TOTAL_SALES DESC, PRODUCT_ID ASC