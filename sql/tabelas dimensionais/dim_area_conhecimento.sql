CREATE TABLE dim_area_conhecimento (
    CO_AREA CHAR(2) NOT NULL,
    DESC_AREA VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_AREA)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_area_conhecimento (CO_AREA, DESC_AREA)
VALUES
    ('CH', 'Ciências Humanas'),
    ('CN', 'Ciências da Natureza'),
    ('LC', 'Linguagens e Códigos'),
    ('MT', 'Matemática');