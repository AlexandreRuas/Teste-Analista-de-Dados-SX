CREATE TABLE dim_grupo_ocupacao (
    CO_OCUPACAO CHAR(1) NOT NULL,
    GRUPO_OCUPACAO VARCHAR(50) NOT NULL,
    DESC_OCUPACAO VARCHAR(1000) NOT NULL,
    PRIMARY KEY (CO_OCUPACAO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO dim_grupo_ocupacao (CO_OCUPACAO, GRUPO_OCUPACAO, DESC_OCUPACAO)
VALUES
    ('A', 'Grupo 1', 'Lavrador(a), agricultor(a) sem empregados, bóia fria, criador(a) de animais (gado, porcos, galinhas, ovelhas, cavalos etc.), apicultor(a), pescador(a), lenhador(a), seringueiro(a), extrativista.'),
    ('B', 'Grupo 2', 'Diarista, empregado(a) doméstico(a), cuidador(a) de idosos, babá, cozinheiro(a) (em casas particulares), motorista particular, jardineiro(a), faxineiro(a) de empresas e prédios, vigilante, porteiro(a), carteiro(a), office-boy, vendedor(a), caixa, atendente de loja, auxiliar administrativo(a), recepcionista, servente de pedreiro, repositor(a) de mercadoria.'),
    ('C', 'Grupo 3', 'Padeiro(a), cozinheiro(a) industrial ou em restaurantes, sapateiro(a), costureiro(a), joalheiro(a), torneiro(a) mecânico(a), operador(a) de máquinas, soldador(a), operário(a) de fábrica, trabalhador(a) da mineração, pedreiro(a), pintor(a), eletricista, encanador(a), motorista, caminhoneiro(a), taxista.'),
    ('D', 'Grupo 4', 'Professor(a) (de ensino fundamental ou médio, idioma, música, artes etc.), técnico(a) (de enfermagem, contabilidade, eletrônica, etc.), policial, militar de baixa patente (soldado, cabo, sargento), corretor(a) de imóveis, supervisor(a), gerente, mestre de obras, pastor(a), microempresário(a) (proprietário(a) de empresa com menos de 10 empregados), pequeno(a) comerciante, pequeno(a) proprietário(a) de terras, trabalhador(a) autônomo(a) ou por conta própria.'),
    ('E', 'Grupo 5', 'Médico(a), engenheiro(a), dentista, psicólogo(a), economista, advogado(a), juiz(a), promotor(a), defensor(a), delegado(a), tenente, capitão/capitã, coronel, professor(a) universitário, diretor(a) em empresas públicas ou privadas, político(a), proprietário(a) de empresas com mais de 10 empregados.'),
    ('F', 'Grupo 6', 'Não informado.');