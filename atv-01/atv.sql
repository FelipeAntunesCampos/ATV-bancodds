CREATE DATABASE beautytechdb;

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    estoque INT DEFAULT 0
);

INSERT INTO produtos (
    nome, marca, preco, categoria, estoque )
    values
    ('Sérum Facial com Niacinamida 10% + Zinco 1%', 'The Ordinary', 45.50, 'Skincare', 150),
    ('Perfume MYSLF Yves Saint Laurent Eau de Parfum Masculino', 'Yves Saint Laurent', 688.28, 'perfume', 25),
    ('Stick Pele Multifuncional', 'Boca Rosa', 89.90, 'Maquiagem', 15),
    ('Máscara para Sobrancelhas', 'Boca Rosa', 59.90, 'Sobrancelhas', 10),
    ('Shampoo Clear Anticaspa Limpeza Diaria Oferta 400ml', 'clear', 36.40, 'cabelo', '10'),
    ('Batom Matte Ruby Woo', 'MAC', 129.00, 'Maquiagem', 95),
    ('Corretivo Radiant Creamy Concealer', 'NARS', 189.00, 'Maquiagem', 110),
    ('Paleta de Sombras New Nude', 'Huda Beauty', 399.00, 'Maquiagem', 45),
    ('Iluminador Amrezy', 'Anastasia Beverly Hills', 250.00, 'Maquiagem', 30),
    ('Delineador Tattoo Liner', 'Kat Von D', 115.00, 'Maquiagem', 70),
    ('Hidratante Facial CeraVe', 'CeraVe', 79.90, 'Skincare', 200),
    ('Protetor Solar Anthelios Airlicium', 'La Roche-Posay', 85.00, 'Skincare', 180),
    ('Sérum Mineral 89', 'Vichy', 159.90, 'Skincare', 130),
    ('Tônico Facial Glow Tonic', 'Pixi', 140.00, 'Skincare', 60),
    ('Máscara Facial de Argila', 'Sephora Collection', 25.00, 'Skincare', 250),
    ('Condicionador Hidratação Profunda', 'Pantene', 29.90, 'Cabelos', 350),
    ('Óleo Capilar Oil Reflections', 'Wella', 110.00, 'Cabelos', 90),
    ('Creme de Pentear SOS Cachos', 'Salon Line', 22.50, 'Cabelos', 400),
    ('Máscara de Hidratação Absolut Repair', 'L''Oréal Professionnel', 155.00, 'Cabelos', 75),
    ('Spray Fixador Extra Forte', 'Tresemmé', 28.00, 'Cabelos', 220),
    ('Perfume Coco Mademoiselle', 'Chanel', 850.00, 'Perfumes', 40),
    ('Perfume Sauvage', 'Dior', 790.00, 'Perfumes', 55),
    ('Body Splash Love Spell', 'Victoria''s Secret', 75.00, 'Perfumes', 190),
    ('Esmalte Cremoso Rebu', 'Risqué', 8.90, 'Unhas', 500),
    ('Creme para Mãos Soft', 'Nivea', 15.00, 'Skincare', 300);

SELECT * FROM produtos;


UPDATE produtos SET preco = preco * 0.80;

SELECT * FROM produtos;

UPDATE produtos SET estoque = estoque + 50;

SELECT * FROM produtos;

UPDATE produtos SET preco = preco * 1.15 WHERE marca = 'Boca Rosa';

SELECT * FROM produtos;

UPDATE produtos SET preco = preco * 0.90 WHERE estoque > 100;

SELECT * FROM produtos;

UPDATE produtos SET preco = preco * 0.70 WHERE categoria = 'Perfumes';

SELECT * FROM produtos;

UPDATE produtos SET estoque = estoque + 25 WHERE preco > 150;

SELECT * FROM produtos;

DELETE FROM produtos WHERE estoque <= 10;

DELETE FROM produtos WHERE preco < 20;

DELETE FROM produtos WHERE marca = 'Boca Rosa';

DELETE FROM produtos WHERE estoque > 1 and estoque < 5;