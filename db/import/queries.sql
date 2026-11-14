SELECT table_name, table_rows FROM information_schema. tables WHERE table_schema='confetka';



SELECT u.id, u.full_name,

name AS role

FROM `users(1)` u

JOIN roles r ON r.id = u.role_id

WHERE .login = '94d5ous@gmail.com' AND u-password = 'uzWC67';





SELECT p.id, p.Артикул, р.`Наименование товара` , р.`Единица измерения`, р.Цена, р.`Действующая скидка`, р.`Кол-во на складе`, р.`Описание товара`, р.Фото,

c.name AS category, m.name AS manafacturer, s.name AS supplier

FROM `products(1)(1)` p

JOIN categories c ON c. id = p.category_id

JOIN manufacturers m ON m.id = p-manafacturer_id

JOIN suppliers s ON s.id = p.supplier_id;


SELECT p.id, p.артикул, p.`Наименование товара`, p.Цена, p.`кол-во на складе`, s.name AS supplier
FROM `products(1)(1)` p
JOIN suppliers s ON s.id = p.supplier_id
WHERE p.`Наименование товара` LIKE '%Туфли%' AND p.supplier_id = 1
ORDER BY p.`кол-во на складе` DESC;




SELECT id, name FROM categories;
SELECT id, name FROM manufacturers;
SELECT id, name FROM suppliers;

-- Добавление товара
INSERT INTO `products(1)(1)` (Артикул, `наименование товара`, `Единица измерения`, Цена, `Действующая скидка`, `кол-во на складе`, `описание товара`, фото, category_id, manafacturer_id, supplier_id)
VALUES ('A123', 'Кроссовки', 'шт.', 5000, 0, 10, 'Удобные', 'photo.jpg', 1, 2, 1);


SELECT * FROM`products(1)(1)` WHERE id = 1;


UPDATE `products(1)(1)`
SET Артикул='F572H7', `наименование товара`='Туфли',`Единица измерения`='шт.', Цена='2700.00', `Действующая скидка`='2', `кол-во на складе`='14', `описание товара`='Туфли Marco Tozzi женские летние, размер 39, цвет черный', фото='7.jpg', category_id='1', manafacturer_id='2', supplier_id='1'
WHERE id = '7';


SELECT COUNT(*) AS used_in_orders FROM prodorders WHERE product_id = 1;

DELETE FROM `products(1)(1)` WHERE id = 1;