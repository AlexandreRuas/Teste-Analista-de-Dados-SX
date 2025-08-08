CREATE TABLE dim_cor_prova (
    CO_COR_PROVA int NOT NULL,
    DESC_COR_PROVA VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_COR_PROVA)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_cor_prova (CO_COR_PROVA, DESC_COR_PROVA)
VALUES
    (1, 'Amarela'),
    (2, 'Amarela (Digital)'),
    (3, 'Amarela (Reaplicação)'),
    (4, 'Azul'),
    (5, 'Azul (Digital)'), 
    (6, 'Azul (Reaplicação)'),  
    (7, 'Branca'),
    (8, 'Branca (Digital)'),
    (9, 'Branca (Reaplicação)'),
    (10, 'Cinza'),
    (11, 'Cinza (Digital)'),
    (12, 'Cinza (Reaplicação)'),
    (13, 'Laranja - Adaptada Ledor'),
    (14, 'Laranja'),
    (15, 'Laranja - Adaptada Ledor (Reaplicação)'),
    (16, 'Laranja - BRAILE'),
    (17, 'Rosa'),
    (18, 'Rosa - Ampliada'),
    (19, 'Rosa (Digital)'),
    (20, 'Rosa (Reaplicação)'),
    (21, 'Rosa - Superampliada'),
    (22, 'Verde'),
    (23, 'Verde - Videoprova - Libras');