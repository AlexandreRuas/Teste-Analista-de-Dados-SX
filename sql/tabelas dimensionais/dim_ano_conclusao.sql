CREATE TABLE dim_ano_conclusao (
    CO_ANO_CONCLUSAO int NOT NULL,
    DESC_ANO_CONCLUSAO VARCHAR(50) NOT NULL,
    PRIMARY KEY (CO_ANO_CONCLUSAO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_ano_conclusao (CO_ANO_CONCLUSAO, DESC_ANO_CONCLUSAO)
VALUES
    (0, 'Não informado'),
    (1, '2019'),
    (2, '2018'),
    (3, '2017'),
    (4, '2016'),
    (5, '2015'),
    (6, '2014'),
    (7, '2013'),
    (8, '2012'),
    (9, '2011'),
    (10, '2010'),
    (11, '2009'),
    (12, '2008'),
    (13, '2007'),
    (14, 'Antes de 2007');