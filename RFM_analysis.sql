WITH customer_rfm AS (
    -- Aggregate customer-level purchasing behavior
    
    SELECT C.customer_id,
           C.customer_email,
           COUNT(DISTINCT O.order_number) AS order_count,
           SUM(DISTINCT C.total_spent) AS total_spending,
           MIN(STR_TO_DATE(NULLIF(LEFT(O.paid_date, 10), ''),'%Y-%m-%d')) AS first_purchase,
           MAX(STR_TO_DATE(NULLIF(LEFT(O.paid_date, 10), ''),'%Y-%m-%d')) AS last_purchase,
           DATEDIFF('2026-09-01',STR_TO_DATE(LEFT(MAX(O.paid_date), 10),'%Y-%m-%d')) AS days
    FROM customer C
    LEFT JOIN orders O 
           ON C.customer_email = O.email
		   AND C.customer_email IS NOT NULL
		   AND C.customer_email <> ''
        GROUP BY C.customer_id,C.customer_email,C.total_spent
        ORDER BY total_spending DESC
),

rfm_score AS (
      SELECT *,
      
        -- R: Higher score for customers who purchased more recently
        NTILE(5) OVER (ORDER BY days DESC) AS R_score,
                     
        -- F: Higher score for customers with more orders
        CASE
            WHEN order_count = 1 THEN 1
            WHEN order_count = 2 THEN 2
            ELSE 0
        END AS F_score,
        
        -- M: Higher score for customers with higher total spending
        NTILE(5) OVER (ORDER BY total_spending ASC) AS M_score
        
    FROM customer_rfm
    WHERE order_count > 0
),

final_rfm AS (
-- Purchasing cutomer
SELECT *,
    R_score + F_score + M_score AS RFM_score
FROM rfm_score

UNION ALL

-- Non-Purchasing Customers
SELECT customer_id,
       customer_email,
       order_count,
       total_spending,
       first_purchase,
       last_purchase,
       days,
       0 AS R_score,
       0 AS F_score,
       0 AS M_score,
       0 AS RFM_score
FROM customer_rfm
WHERE order_count = 0
ORDER BY RFM_score DESC
)

SELECT
    *,
      CASE
	    WHEN RFM_score = 0
	    THEN 'Non-Purchaser'

        WHEN R_score >= 4 AND M_score >= 4
		THEN 'High Value'


        WHEN R_score >= 4 AND M_score <= 3
		THEN 'Potential High Value'

        WHEN R_score <= 2 AND M_score >= 4
		THEN 'High Value At Risk'

        WHEN R_score <= 2 AND M_score <= 3
		THEN 'Low Value / At Risk'
          ELSE 'Developing'
        END AS customer_category
FROM final_rfm;