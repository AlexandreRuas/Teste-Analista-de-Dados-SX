CREATE TABLE dim_estado_civil (
    CO_ESTADO_CIVIL int NOT NULL,
    DESC_ESTADO_CIVIL VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_ESTADO_CIVIL)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_estado_civil (CO_ESTADO_CIVIL, DESC_ESTADO_CIVIL)
VALUES
    (0, 'Não informado'),
    (1, 'Solteiro(a)'),
    (2, 'Casado(a)/Mora com companheiro(a)'),
    (3, 'Divorciado(a)/Desquitado(a)/Separado(a)'),
    (4, 'Viúvo(a)');
