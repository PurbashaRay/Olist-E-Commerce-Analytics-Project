SELECT a.[order_id], a.[seller_id], b.[review_score]
FROM [Project].[dbo].[olist_order_items_dataset]AS a
LEFT JOIN [Project].[dbo].[olist_order_reviews_dataset] AS b
ON a.order_id=b.order_id;
