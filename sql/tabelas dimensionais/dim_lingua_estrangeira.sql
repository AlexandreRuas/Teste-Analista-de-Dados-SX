CREATE TABLE dim_lingua_estrangeira (
    CO_IDIOMA int NOT NULL,
    DESC_IDIOMA VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_IDIOMA)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_lingua_estrangeira (CO_IDIOMA, DESC_IDIOMA)
VALUES
    (0, 'Inglês'),
    (1, 'Espanhol');