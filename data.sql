INSERT INTO customers VALUES
(1,  'Lerato',   'Dlamini',  'lerato.d@email.com',   'Johannesburg', '2023-01-10'),
(2,  'Thandi',   'Mokoena',  'thandi.m@email.com',   'Pretoria',     '2023-02-14'),
(3,  'Nomsa',    'Sithole',  'nomsa.s@email.com',    'Durban',       '2023-03-05'),
(4,  'Ayanda',   'Nkosi',    'ayanda.n@email.com',   'Cape Town',    '2023-04-20'),
(5,  'Zanele',   'Khumalo',  'zanele.k@email.com',   'Soweto',       '2023-05-08'),
(6,  'Precious', 'Ndlovu',   'precious.n@email.com', 'Johannesburg', '2023-06-15'),
(7,  'Bongiwe',  'Zulu',     'bongiwe.z@email.com',  'Pretoria',     '2023-07-22'),
(8,  'Ntombi',   'Mthembu',  'ntombi.m@email.com',   'Durban',       '2023-08-30'),
(9,  'Kefilwe',  'Motsepe',  'kefilwe.m@email.com',  'Johannesburg', '2023-09-12'),
(10, 'Siphiwe',  'Mahlangu', 'siphiwe.m@email.com',  'Pretoria',     '2023-10-01');

INSERT INTO products VALUES
(1, 'Luxury Nursing Hamper',     'Hampers',    1200.00),
(2, 'Wellness Gift Set',         'Hampers',     950.00),
(3, 'Baby & Mom Essentials Box', 'Hampers',     850.00),
(4, 'Pamper Me Basket',          'Hampers',     750.00),
(5, 'Scented Candle Set',        'Accessories', 320.00),
(6, 'Organic Skincare Bundle',   'Skincare',    480.00),
(7, 'Personalised Keepsake Box', 'Accessories', 550.00),
(8, 'Postpartum Recovery Kit',   'Wellness',    690.00);

INSERT INTO orders VALUES
(1,1,'2023-11-05'),(2,2,'2023-11-12'),(3,3,'2023-12-01'),
(4,4,'2023-12-10'),(5,5,'2023-12-15'),(6,6,'2023-12-20'),
(7,7,'2024-01-08'),(8,8,'2024-01-15'),(9,9,'2024-02-03'),
(10,10,'2024-02-18'),(11,1,'2024-03-05'),(12,2,'2024-03-22');

INSERT INTO order_items VALUES
(1,1,1,1,1200.00),(2,1,5,2,320.00),(3,2,2,1,950.00),
(4,3,3,1,850.00),(5,3,6,1,480.00),(6,4,4,1,750.00),
(7,5,1,1,1200.00),(8,5,7,1,550.00),(9,6,8,1,690.00),
(10,7,2,1,950.00),(11,8,3,1,850.00),(12,8,5,1,320.00),
(13,9,1,1,1200.00),(14,10,4,2,750.00),(15,11,2,1,950.00),
(16,12,8,1,690.00);
