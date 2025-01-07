#OBJECTIVE_3: Analyze Customer Behavior
#Combine the menu_items and order_details tbale into a single table.
#2. What the least and most ordered items? What categories were they in?
#3. What were the top 5  orders that spent the most money?
#4. View the details of the highest spend order. What insights can you gather form the result?
#BONUS: View the details of the highest of the TOP 5  highest spent orders. What insight can you gather from the results?


#1. Combine the menu_items and order_details tbale into a single table.

SELECT *
FROM order_details ord
LEFT JOIN menu_items mi
		ON ord.item_id = mi.menu_item_id;
#2. What were the least and most ordered items? What categories were they in?

SELECT item_name, category, COUNT(order_details_id) AS num_purchased
FROM order_details ord
LEFT JOIN menu_items mi
		ON ord.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchased DESC
;
#Conclusion: Chicken tacos not most popular, need some improvement in flavor, ads, etc while hamburger the most purchased should maitain it on menu.

#3. What were the top 5  orders that spent the most money?
SELECT order_id, SUM(price) AS total_spend
FROM order_details ord
LEFT JOIN menu_items mi
		ON ord.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5
;

#4. View the details of the highest spend order. What insights can you gather form the result?

SELECT category, COUNT(item_id) AS num_items
FROM order_details ord
LEFT JOIN menu_items mi
		ON ord.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category
;

#BONUS: View the details of the highest of the TOP 5  highest spent orders. What insight can you gather from the results?
# order_id total_spend
#330	189.70
#440	192.15
#1957	190.10
#2075	191.05
#2675	185.10

SELECT order_id,category, COUNT(item_id) AS num_items
FROM order_details ord
LEFT JOIN menu_items mi
		ON ord.item_id = mi.menu_item_id
WHERE order_id IN (330,440, 1957, 2075, 2675)
GROUP BY order_id,category
;

#From the fiding, there seem to spend a lot on Italain foods, we should keep expensive Italians food on the menu becouse people seem on them a lot then should give us eran more revenue. 