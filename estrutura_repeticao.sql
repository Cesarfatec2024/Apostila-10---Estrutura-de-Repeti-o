-- 1.1
-- Gerar inteiros no intervalo de -50 a 50
-- LOOP
DO $$
DECLARE
    valor_aleatorio INTEGER;
    i INTEGER := 1;
BEGIN
    LOOP
        EXIT WHEN i > 20;
        valor_aleatorio := (RANDOM() * 100)::INTEGER - 50;
        RAISE NOTICE 'Gerando inteiros com LOOP: %', valor_aleatorio;
        i := i + 1;
    END LOOP;
END $$;

-- WHILE
DO $$
DECLARE
    valor_aleatorio INTEGER;
    i INTEGER := 1;
BEGIN
    WHILE i <= 20 LOOP
        valor_aleatorio := (RANDOM() * 100)::INTEGER - 50;
        RAISE NOTICE 'Gerando inteiros com WHILE: %', valor_aleatorio;
        i := i + 1;
    END LOOP;
END $$;

-- FOR
DO $$
DECLARE
    valor_aleatorio INTEGER;
BEGIN
    FOR i IN 1..20 LOOP
        valor_aleatorio := (RANDOM() * 100)::INTEGER - 50;
        RAISE NOTICE 'Gerando inteiros com FOR: %', valor_aleatorio;
    END LOOP;
END $$;

-- FOREACH
DO $$
DECLARE
    lista_valores INTEGER[] := ARRAY(SELECT (RANDOM() * 100)::INTEGER - 50 FROM generate_series(1, 20));
    valor_aleatorio INTEGER;
BEGIN
    FOREACH valor_aleatorio IN ARRAY lista_valores LOOP
        RAISE NOTICE 'Gerando inteiros com FOREACH: %', valor_aleatorio;
    END LOOP;
END $$;


-- Gerar inteiros no intervalo de 20 a 50
-- LOOP
DO $$
DECLARE
    valor_aleatorio INTEGER;
    i INTEGER := 1;
BEGIN
    LOOP
        EXIT WHEN i > 20;
        valor_aleatorio := (RANDOM() * 31 + 20)::INTEGER;
        RAISE NOTICE 'Gerando inteiros com LOOP: %', valor_aleatorioe;
        i := i + 1;
    END LOOP;
END $$;

-- WHILE
DO $$
DECLARE
    valor_aleatorio INTEGER;
    i INTEGER := 1;
BEGIN
    WHILE i <= 20 LOOP
        valor_aleatorio := (RANDOM() * 31 + 20)::INTEGER;
        RAISE NOTICE 'Gerando inteiros com WHILE: %', valor_aleatorio;
        i := i + 1;
    END LOOP;
END $$;

-- FOR
DO $$
DECLARE
    valor_aleatorio INTEGER;
BEGIN
    FOR i IN 1..20 LOOP
        valor_aleatorio := (RANDOM() * 31 + 20)::INTEGER;
        RAISE NOTICE 'Gerando inteiros com FOR: %', valor_aleatorio;
    END LOOP;
END $$;

-- FOREACH
DO $$
DECLARE
    lista_valores INTEGER[] := ARRAY(SELECT (RANDOM() * 31 + 20)::INTEGER FROM generate_series(1, 20));
    valor_aleatorio INTEGER;
BEGIN
    FOREACH valor_aleatorio IN ARRAY lista_valores LOOP
        RAISE NOTICE 'Gerando inteiros com FOREACH: %', valor_aleatorio;
    END LOOP;
END $$;


-- Gerar inteiros no intervalo de 1 a 100
-- LOOP
DO $$
DECLARE
    valor_aleatorio INTEGER;
    i INTEGER := 1;
BEGIN
    LOOP
        EXIT WHEN i > 20;
        valor_aleatorio := FLOOR(RANDOM() * 100 + 1)::INTEGER;
        RAISE NOTICE 'Gerando inteiros com LOOP: %', valor_aleatorio;
        i := i + 1;
    END LOOP;
END $$;

-- WHILE
DO $$
DECLARE
    valor_aleatorio INTEGER;
    i INTEGER := 1;
BEGIN
    WHILE i <= 20 LOOP
        valor_aleatorio := FLOOR(RANDOM() * 100 + 1)::INTEGER;
        RAISE NOTICE 'Gerando inteiros com WHILE: %', valor_aleatorio;
        i := i + 1;
    END LOOP;
END $$;

-- F0R
DO $$
DECLARE
    valor_aleatorio INTEGER;
BEGIN
    FOR i IN 1..20 LOOP
        valor_aleatorio := FLOOR(RANDOM() * 100 + 1)::INTEGER;
        RAISE NOTICE 'Gerando inteiros com FOR: %', valor_aleatorio;
    END LOOP;
END $$;

-- FOREACH
DO $$
DECLARE
    lista_valores INTEGER[] := ARRAY(SELECT FLOOR(RANDOM() * 100 + 1)::INTEGER FROM generate_series(1, 20));
    valor_aleatorio INTEGER;
BEGIN
    FOREACH valor_aleatorio IN ARRAY lista_valores LOOP
        RAISE NOTICE 'Gerando inteiros com FOREACH: %', valor_aleatorio;
    END LOOP;
END $$;


-- 1.2
-- Matriz quadrada de ordem 3 utilizando a regra de Sarrus
DO $$
DECLARE
    matriz INTEGER[][] := ARRAY[
                            [0, 0, 0],
                            [0, 0, 0],
                            [0, 0, 0]
                          ];
    i INTEGER;
    j INTEGER;
    determinante INTEGER;
BEGIN
    FOR i IN 1..3 LOOP
        FOR j IN 1..3 LOOP
            matriz[i][j] := FLOOR(RANDOM() * 12 + 1);
        END LOOP;
    END LOOP;

    determinante := matriz[1][1] * matriz[2][2] * matriz[3][3] + 
                    matriz[1][2] * matriz[2][3] * matriz[3][1] + 
                    matriz[1][3] * matriz[2][1] * matriz[3][2] - 
                    matriz[1][3] * matriz[2][2] * matriz[3][1] - 
                    matriz[1][1] * matriz[2][3] * matriz[3][2] - 
                    matriz[1][2] * matriz[2][1] * matriz[3][3];

    RAISE NOTICE 'Matriz 3x3:';
    FOR i IN 1..3 LOOP
        RAISE NOTICE '% % %', matriz[i][1], matriz[i][2], matriz[i][3];
    END LOOP;

    RAISE NOTICE 'Determinante: %', determinante;
END $$;




