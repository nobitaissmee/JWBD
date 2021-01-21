select product_code, product_name, buy_price, quantity_in_stock from products
where buyprice > 56.76 and quantity_in_stock > 10;

SELECT product_code,product_name, buy_price
FROM products
INNER JOIN productlines
ON products.productline = productlines.productline
WHERE buy_price > 56.76 AND buy_price < 95.59;

select product_code, product_name, buy_price, quantity_in_stock, product_line 
from products 
where productLine = 'Classic Cars';