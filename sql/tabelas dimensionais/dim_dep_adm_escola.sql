CREATE TABLE dim_dependencia_adm_escola (
    CO_DEP_ADM int NOT NULL,
    DESC_DEP_ADM VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_DEP_ADM)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_dependencia_adm_escola (CO_DEP_ADM, DESC_DEP_ADM)
VALUES
    (1, 'Federal'),
    (2, 'Estadual'),
    (3, 'Municipal'),
    (4, 'Privada');