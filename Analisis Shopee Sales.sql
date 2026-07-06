SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN title IS NULL OR title = '' THEN 1 ELSE 0 END) AS missing_title,
    SUM(CASE WHEN item_category_detail IS NULL OR item_category_detail = '' THEN 1 ELSE 0 END) AS missing_category,
    SUM(CASE WHEN price_actual IS NULL OR price_actual = 0 THEN 1 ELSE 0 END) AS missing_price,
    SUM(CASE WHEN item_rating IS NULL THEN 1 ELSE 0 END) AS missing_rating,
    SUM(CASE WHEN total_sold IS NULL THEN 1 ELSE 0 END) AS missing_sold
FROM shopee_sales;

-- Distribusi harga dengan segmentasi kategori
SELECT 
    CASE 
        WHEN price_actual < 5000 THEN 'Very Low (<5K)'
        WHEN price_actual < 15000 THEN 'Low (5K-15K)'
        WHEN price_actual < 30000 THEN 'Medium (15K-30K)'
        WHEN price_actual < 50000 THEN 'High (30K-50K)'
        ELSE 'Premium (>50K)'
    END AS price_category,
    COUNT(*) AS total_products,
    ROUND(AVG(price_actual), 0) AS avg_price,
    ROUND(MIN(price_actual), 0) AS min_price,
    ROUND(MAX(price_actual), 0) AS max_price,
    ROUND(AVG(total_sold), 0) AS avg_sold
FROM shopee_sales
GROUP BY price_category
ORDER BY avg_price;

SELECT 
    CASE 
        WHEN item_rating >= 4.5 THEN 'Excellent (4.5-5)'
        WHEN item_rating >= 4.0 THEN 'Good (4.0-4.5)'
        WHEN item_rating >= 3.0 THEN 'Average (3.0-4.0)'
        ELSE 'Low (<3.0)'
    END AS rating_category,
    COUNT(*) AS total_products,
    ROUND(AVG(price_actual), 0) AS avg_price,
    ROUND(MIN(price_actual), 0) AS min_price,
    ROUND(MAX(price_actual), 0) AS max_price,
    ROUND(AVG(total_sold), 0) AS avg_sold
FROM shopee_sales
GROUP BY rating_category
ORDER BY avg_price DESC;

SELECT 
    title AS product_name,
    item_category_detail AS category,
    total_sold,
    ROUND(price_actual, 0) AS price,
    item_rating,
    seller_name,
    ROUND(total_sold * price_actual, 0) AS revenue
FROM shopee_sales
WHERE total_sold > 0
ORDER BY total_sold DESC
LIMIT 10;

SELECT 
    item_category_detail AS category,
    COUNT(*) AS total_products,
    SUM(total_sold) AS total_sold,
    ROUND(SUM(total_sold * price_actual), 0) AS total_revenue,
    ROUND(AVG(item_rating), 2) AS avg_rating,
    ROUND(AVG(price_actual), 0) AS avg_price
FROM shopee_sales
GROUP BY item_category_detail
ORDER BY total_revenue DESC
LIMIT 10;

SELECT 
    YEAR(w_date) AS year,
    MONTH(w_date) AS month,
    COUNT(*) AS total_products,
    SUM(total_sold) AS total_sold,
    ROUND(SUM(total_sold * price_actual), 0) AS total_revenue
FROM shopee_sales
WHERE w_date IS NOT NULL
GROUP BY YEAR(w_date), MONTH(w_date)
ORDER BY year DESC, month DESC;

SELECT 
    seller_name,
    COUNT(*) AS total_products,
    SUM(total_sold) AS total_sold,
    ROUND(SUM(total_sold * price_actual), 0) AS total_revenue,
    ROUND(AVG(item_rating), 2) AS avg_rating
FROM shopee_sales
WHERE seller_name IS NOT NULL AND seller_name != 'Unknown Seller'
GROUP BY seller_name
ORDER BY total_revenue DESC
LIMIT 10;

SELECT 
    title AS product_name,
    item_category_detail AS category,
    ROUND(price_actual, 0) AS price,
    total_sold,
    item_rating,
    ROUND(((price_ori - price_actual) / price_ori) * 100, 1) AS discount_pct
FROM shopee_sales
WHERE price_ori > 0 AND price_actual < price_ori
ORDER BY discount_pct DESC
LIMIT 10;

SELECT 
    title,
    item_category_detail,
    price_actual,
    total_sold,
    item_rating
FROM shopee_sales
WHERE item_rating >= 4.8 AND total_sold < 10
ORDER BY price_actual DESC
LIMIT 20;