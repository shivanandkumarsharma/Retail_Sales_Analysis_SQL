-- Remove duplicates based on order_id
DELETE t1 FROM retail_sales t1
INNER JOIN retail_sales t2
WHERE
    t1.order_id = t2.order_id AND
    t1.rowid > t2.rowid;

-- Replace NULL region with 'Unknown'
UPDATE retail_sales
SET region = 'Unknown'
WHERE region IS NULL;
