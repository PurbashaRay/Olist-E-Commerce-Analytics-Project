SELECT seller_id, 
    COUNT(order_id) as number_orders, 
    SUM (order_item_id) as quantity_items, 
    COUNT (product_id) as number_items,
    SUM(price) as total_price,
    SUM(freight_value) as total_freight_value
FROM [Project].[dbo].[olist_order_items_dataset]
GROUP BY seller_id;
ORDER BY number_orders DESC