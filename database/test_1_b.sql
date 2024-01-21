--Tran Thi Minh Tang
--De3

--cau b.3
select u.user_id, u.user_name, o.order_id, MAX(od.Amount)
from users u
join orders o on o.user_id = u.user_id
join (
    SELECT o.order_id, SUM(p.product_price) Amount
    from orders o
    join order_details od on od.order_id = o.order_id
    join products p on p.product_id = od.product_id
    group by o.order_id
) od on od.order_id = o.order_id
group by u.user_id, u.user_name
order by u.user_id
