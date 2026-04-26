CREATE VIEW delivery_times AS
SELECT [order_id],
      DATEDIFF(day, [order_purchase_timestamp],[order_delivered_customer_date]) AS actual_delivery_time,
      DATEDIFF(day, [order_purchase_timestamp],[order_estimated_delivery_date]) AS planned_delivery_time
FROM [Project].[dbo].[olist_orders_dataset]
  WHERE [order_status]='delivered';