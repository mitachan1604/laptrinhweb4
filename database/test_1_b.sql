--Tran Thi Minh Tang
--De3


--cau a.3
SELECT user_id, user_name, user_email
FROM users
WHERE (user_name LIKE '%a%' OR user_name LIKE 'm%') AND user_email LIKE '%@yahoo.com%'
ORDER BY user_name DESC;


--cau b.3
WITH RankedOrders AS (
    SELECT
        u.user_id,
        u.user_name,
        o.order_id,
        p.product_price,
        ROW_NUMBER() OVER (PARTITION BY u.user_id ORDER BY p.product_price DESC) AS row_num
    FROM
        users u
    JOIN
        orders o ON u.user_id = o.user_id
    JOIN
        order_details od ON o.order_id = od.order_id
    JOIN
        products p ON p.product_id = od.product_id
)
SELECT
    user_id,
    user_name,
    order_id,
    product_price AS max_order_price
FROM
    RankedOrders
WHERE
    row_num = 1;

