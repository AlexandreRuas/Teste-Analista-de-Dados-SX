CREATE TABLE dim_motivo_abandono (
    CO_MOTIVO int NOT NULL,
    DESC_MOTIVO VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_MOTIVO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_motivo_abandono (CO_MOTIVO, DESC_MOTIVO)
VALUES
    (0, ''),
    (1, 'Anulado/Anulado pela TRI');