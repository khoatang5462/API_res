--================user=============

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

INSERT INTO users (full_name, email, password) VALUES
('Nguyễn Văn A', 'vana@example.com', 'password1'),
('Trần Thị B', 'thib@example.com', 'password2'),
('Lê Văn C', 'vanc@example.com', 'password3'),
('Phạm Thị D', 'thid@example.com', 'password4'),
('Hoàng Văn E', 'vane@example.com', 'password5'),
('Võ Thị F', 'thif@example.com', 'password6'),
('Đặng Văn G', 'vang@example.com', 'password7'),
('Bùi Thị H', 'thih@example.com', 'password8'),
('Đỗ Văn I', 'vani@example.com', 'password9'),
('Hồ Thị K', 'thik@example.com', 'password10'),
('Phan Văn L', 'vanl@example.com', 'password11'),
('Mai Thị M', 'thim@example.com', 'password12'),
('Trịnh Văn N', 'vann@example.com', 'password13'),
('Cao Thị O', 'thio@example.com', 'password14'),
('Ngô Văn P', 'vanp@example.com', 'password15'),
('Vương Thị Q', 'thiq@example.com', 'password16'),
('Chu Văn R', 'vanr@example.com', 'password17'),
('Lưu Thị S', 'this@example.com', 'password18'),
('Tôn Văn T', 'vant@example.com', 'password19'),
('Diệp Thị U', 'thiu@example.com', 'password20');

SELECT *FROM users

--==============restaurant==========
CREATE TABLE restaurant (
    res_id INT PRIMARY KEY AUTO_INCREMENT,
    res_name VARCHAR(255),
    image VARCHAR(255),
    description VARCHAR(255)
);

INSERT INTO restaurant (res_name, image, description) VALUES
('Nhà hàng A', 'nha_hang_a.jpg', 'Nhà hàng chuyên món Việt truyền thống.'),
('Quán B', 'quan_b.jpg', 'Quán ăn vặt nổi tiếng với món bánh tráng trộn.'),
('Tiệm C', 'tiem_c.jpg', 'Tiệm cà phê ấm cúng với không gian đẹp.'),
('Nhà hàng D', 'nha_hang_d.jpg', 'Nhà hàng phục vụ món Âu sang trọng.'),
('Quán E', 'quan_e.jpg', 'Quán nhậu bình dân với giá cả phải chăng.'),
('Tiệm F', 'tiem_f.jpg', 'Tiệm bánh ngọt với nhiều loại bánh hấp dẫn.'),
('Nhà hàng G', 'nha_hang_g.jpg', 'Nhà hàng buffet hải sản tươi ngon.'),
('Quán H', 'quan_h.jpg', 'Quán mì quảng đậm đà hương vị Quảng Nam.'),
('Tiệm I', 'tiem_i.jpg', 'Tiệm trà sữa với nhiều loại topping độc đáo.'),
('Nhà hàng K', 'nha_hang_k.jpg', 'Nhà hàng chay thanh tịnh.'),
('Quán L', 'quan_l.jpg', 'Quán ốc ngon bổ rẻ.'),
('Tiệm M', 'tiem_m.jpg', 'Tiệm kem với nhiều hương vị đặc biệt.'),
('Nhà hàng N', 'nha_hang_n.jpg', 'Nhà hàng Hàn Quốc với món thịt nướng hấp dẫn.'),
('Quán O', 'quan_o.jpg', 'Quán bún chả Hà Nội chính gốc.'),
('Tiệm P', 'tiem_p.jpg', 'Tiệm bánh mì với nhiều loại nhân phong phú.'),
('Nhà hàng Q', 'nha_hang_q.jpg', 'Nhà hàng Nhật Bản với món sushi và sashimi tươi ngon.'),
('Quán R', 'quan_r.jpg', 'Quán lẩu với nhiều loại nước lẩu đặc biệt.'),
('Tiệm S', 'tiem_s.jpg', 'Tiệm sinh tố với nhiều loại trái cây tươi mát.'),
('Nhà hàng T', 'nha_hang_t.jpg', 'Nhà hàng Ý với món pasta và pizza ngon tuyệt.'),
('Quán U', 'quan_u.jpg', 'Quán hủ tiếu với hương vị đặc trưng.');

SELECT * FROM restaurant

--=====================like_res==============
CREATE TABLE like_res (
    user_id INT,
    res_id INT,
    date_like DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);
INSERT INTO like_res (user_id, res_id, date_like) VALUES
(1, 2, '2024-10-26 10:00:00'),
(3, 1, '2024-10-26 11:30:00'),
(5, 3, '2024-10-26 12:45:00'),
(2, 4, '2024-10-26 14:00:00'),
(4, 5, '2024-10-26 15:15:00'),
(6, 1, '2024-10-27 09:00:00'),
(8, 2, '2024-10-27 10:30:00'),
(10, 3, '2024-10-27 12:00:00'),
(7, 4, '2024-10-27 13:30:00'),
(11, 6, '2024-10-28 09:30:00'),
(13, 7, '2024-10-28 11:00:00'),
(15, 8, '2024-10-28 12:30:00'),
(12, 9, '2024-10-28 14:00:00'),
(14, 10, '2024-10-28 15:30:00'),
(16, 1, '2024-10-29 10:00:00'),
(18, 2, '2024-10-29 11:30:00'),
(20, 3, '2024-10-29 13:00:00'),
(17, 4, '2024-10-29 14:30:00'),
(19, 5, '2024-10-29 16:00:00');

SELECT *FROM like_res

--===============rate_res==============
CREATE TABLE rate_res (
    user_id INT,
    res_id INT,
    amount INT,
    date_rate DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);

INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES
(1, 2, 4, '2024-10-26 10:15:00'),
(3, 1, 5, '2024-10-26 11:45:00'),
(5, 3, 3, '2024-10-26 13:00:00'),
(2, 4, 4, '2024-10-26 14:15:00'),
(4, 5, 2, '2024-10-26 15:30:00'),
(6, 1, 5, '2024-10-27 09:15:00'),
(8, 2, 3, '2024-10-27 10:45:00'),
(10, 3, 4, '2024-10-27 12:15:00'),
(7, 4, 5, '2024-10-27 13:45:00'),
(11, 6, 4, '2024-10-28 09:45:00'),
(13, 7, 3, '2024-10-28 11:15:00'),
(15, 8, 5, '2024-10-28 12:45:00'),
(12, 9, 4, '2024-10-28 14:15:00'),
(14, 10, 2, '2024-10-28 15:45:00'),
(16, 1, 3, '2024-10-29 10:15:00'),
(18, 2, 4, '2024-10-29 11:45:00'),
(20, 3, 5, '2024-10-29 13:15:00'),
(17, 4, 3, '2024-10-29 14:45:00'),
(19, 5, 4, '2024-10-29 16:15:00');

SELECT *FROM rate_res

--===================type food===========
CREATE TABLE food_type (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(255)
);
INSERT INTO food_type (type_name) VALUES
('Khai vị'), ('Món chính'), ('Món tráng miệng'), ('Đồ uống'), ('Salad'),
('Súp'), ('Mì Ý'), ('Pizza'), ('Burger'), ('Sushi'),
('Món Thái'), ('Món Ấn'), ('Món Mexico'), ('Món Ý'), ('Món Trung Quốc'),
('Món Việt'), ('Món Hàn'), ('Món Nhật'), ('Món Pháp'), ('Món Hy Lạp');
SELECT *FROM food_type
--==================food====================
CREATE TABLE food (
    food_id INT PRIMARY KEY AUTO_INCREMENT,
    food_name VARCHAR(255),
    image VARCHAR(255),
    price FLOAT,
    description VARCHAR(255),
    type_id INT,
    FOREIGN KEY (type_id) REFERENCES food_type(type_id)
);

INSERT INTO food (food_name, image, price, description, type_id) VALUES
('Phở Bò', 'pho_bo.jpg', 35000, 'Phở bò truyền thống Việt Nam.', 16),
('Bún Chả', 'bun_cha.jpg', 30000, 'Bún chả Hà Nội.', 16),
('Gỏi Cuốn', 'goi_cuon.jpg', 25000, 'Gỏi cuốn tôm thịt.', 16),
('Cơm Gà Xối Mỡ', 'com_ga.jpg', 40000, 'Cơm gà xối mỡ giòn tan.', 16),
('Bánh Mì Pate', 'banh_mi.jpg', 20000, 'Bánh mì pate thịt nguội.', 16),
('Pizza Hải Sản', 'pizza_hai_san.jpg', 150000, 'Pizza hải sản tươi ngon.', 8),
('Pizza Gà Nướng', 'pizza_ga.jpg', 120000, 'Pizza gà nướng BBQ.', 8),
('Mì Ý Sốt Bò Bằm', 'mi_y_bo.jpg', 80000, 'Mì Ý sốt bò bằm đậm đà.', 7),
('Mì Ý Carbonara', 'mi_y_carbonara.jpg', 90000, 'Mì Ý sốt kem trứng.', 7),
('Burger Bò', 'burger_bo.jpg', 60000, 'Burger bò kẹp thịt xông khói.', 9),
('Burger Gà', 'burger_ga.jpg', 50000, 'Burger gà chiên giòn.', 9),
('Sushi Cá Hồi', 'sushi_ca_hoi.jpg', 100000, 'Sushi cá hồi tươi.', 10),
('Sushi Tôm', 'sushi_tom.jpg', 90000, 'Sushi tôm hấp.', 10),
('Gà Nướng Teriyaki', 'ga_teriyaki.jpg', 70000, 'Gà nướng sốt teriyaki.', 17),
('Bibimbap Trộn', 'bibimbap.jpg', 65000, 'Cơm trộn Hàn Quốc.', 17),
('Kimchi Jjigae', 'kimchi_jjigae.jpg', 75000, 'Canh kim chi cay nồng.', 17),
('Pad Thái Gà', 'pad_thai.jpg', 60000, 'Mì xào Thái Lan.', 11),
('Cà Ri Gà', 'ca_ri_ga.jpg', 85000, 'Cà ri gà Ấn Độ.', 12),
('Tacos Bò', 'tacos_bo.jpg', 55000, 'Bánh tacos nhân thịt bò.', 13),
('Burrito Gà', 'burrito_ga.jpg', 60000, 'Bánh burrito nhân gà.', 13);

SELECT *FROM food

--================sub_food==============
CREATE TABLE sub_food (
    sub_id INT PRIMARY KEY AUTO_INCREMENT,
    sub_name VARCHAR(255),
    sub_price FLOAT,
    food_id INT,
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);

INSERT INTO sub_food (sub_name, sub_price, food_id) VALUES
('Thêm thịt bò', 15000, 1), ('Thêm trứng ốp la', 5000, 1),
('Thêm chả giò', 10000, 2), ('Thêm rau sống', 5000, 2),
('Thêm tôm', 15000, 3), ('Thêm thịt heo', 10000, 3),
('Thêm phô mai', 10000, 4), ('Thêm xúc xích', 8000, 4),
('Thêm pate', 5000, 5), ('Thêm chả lụa', 7000, 5),
('Thêm phô mai mozzarella', 20000, 6), ('Thêm hải sản', 25000, 6),
('Thêm nấm', 10000, 7), ('Thêm hành tây', 5000, 7),
('Thêm thịt xông khói', 15000, 8), ('Thêm sốt kem', 10000, 8),
('Thêm thịt bò', 20000, 9), ('Thêm trứng', 5000, 9),
('Thêm cá hồi xông khói', 25000, 10),('Thêm trứng cá hồi', 30000,10);

SELECT * FROM sub_food

--==============================order=========

CREATE TABLE orders (
    user_id INT,
    food_id INT,
    amount INT,
    code VARCHAR(255),
    arr_sub_id VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);

INSERT INTO orders (user_id, food_id, amount, code, arr_sub_id) VALUES
(1, 1, 1, 'OD001', '1,2'), -- User 1 orders Food 1
(2, 3, 2, 'OD002', '5'),
(3, 5, 1, 'OD003', '9,10'),
(4, 7, 3, 'OD004', '13'),
(5, 9, 1, 'OD005', '17'),
(1, 1, 1, 'OD006', '1,2'), -- User 1 orders Food 1 AGAIN
(7, 4, 1, 'OD007', '7,8'),
(8, 6, 3, 'OD008', '11'),
(10, 10, 2, 'OD010', '19,20'),
(1, 2, 1, 'OD011', '3,4'), -- User 1 orders Food 2
(12, 3, 2, 'OD012', '5'),
(13, 5, 1, 'OD013', '9,10'),
(14, 7, 3, 'OD014', '13'),
(15, 9, 1, 'OD015', '17'),
(1, 1, 1, 'OD016', '1,2'), -- User 1 orders Food 1 AGAIN (3rd time)
(17, 4, 1, 'OD017', '7,8'),
(18, 6, 3, 'OD018', '11'),
(19, 8, 1, 'OD019', '15'),
(20, 10, 2, 'OD020', '19,20');

SELECT * FROM orders


--==================
--1 tìm 5 nguoi like nha hang nhieu nhat
SELECT u.user_id, u.full_name, COUNT(lr.res_id) AS SoLuotLike
FROM users AS u
JOIN like_res AS lr ON u.user_id = lr.user_id
GROUP BY u.user_id, u.full_name
ORDER BY SoLuotLike DESC
LIMIT 5;

--===----------
--2 nha hang co luot like nhieu nhat

SELECT r.res_id, r.res_name, COUNT(lr.res_id) AS "So luot like"
FROM restaurant AS r
JOIN like_res AS lr ON r.res_id = lr.res_id
GROUP BY r.res_id, r.res_name
ORDER BY "So luot like" DESC
LIMIT 2;

--================
--3 nguoi dat hang nhieu nhat

SELECT u.user_id, u.full_name, COUNT(o.food_id) AS "so don hang"
FROM users AS u

JOIN orders as o on u.user_id = o.user_id
GROUP BY u.user_id
ORDER BY "so don hang" DESC
LIMIT 1

--====nguoi dung khong hoat dong
SELECT 
    u.user_id, 
    u.full_name 
FROM 
    users AS u
LEFT JOIN 
    like_res AS lr ON u.user_id = lr.user_id
LEFT JOIN 
    rate_res AS rr ON u.user_id = rr.user_id
LEFT JOIN 
    orders AS o ON u.user_id = o.user_id
WHERE 
    lr.user_id IS NULL 
    AND rr.user_id IS NULL 
    AND o.user_id IS NULL;
