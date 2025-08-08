CREATE TABLE dim_status_redacao (
    CO_STATUS int NOT NULL,
    DESC_STATUS VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_STATUS)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_status_redacao (CO_STATUS, DESC_STATUS)
VALUES
    (1, 'Sem problemas'),
    (2, 'Anulada'),
    (3, 'Cópia Texto Motivador'),
    (4, 'Em Branco'),
    (6, 'Fuga ao tema'),
    (7, 'Não atendimento ao tipo textual'),
    (8, 'Texto insuficiente'),
    (9, 'Parte desconectada');