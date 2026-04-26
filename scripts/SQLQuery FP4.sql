SELECT seller_id, AVG(review_score) AS avg_score
  FROM [Project].[dbo].[seller_review]
GROUP BY seller_id
