-- =====================================================
-- Monitoramento Energético ESG
-- Consultas e análise dos dados
-- =====================================================

-- 1. Listar todos os equipamentos com suas empresas
SELECT
    e.nome AS empresa,
    eq.nome AS equipamento,
    eq.categoria,
    eq.potencia_kw
FROM equipamentos eq
JOIN empresas e
    ON eq.id_empresa = e.id_empresa;


-- 2. Mostrar o histórico de consumo dos equipamentos
SELECT
    eq.nome AS equipamento,
    c.data_registro,
    c.consumo_kwh
FROM consumos c
JOIN equipamentos eq
    ON c.id_equipamento = eq.id_equipamento
ORDER BY c.data_registro;


-- 3. Calcular o consumo total de cada equipamento
SELECT
    eq.nome AS equipamento,
    SUM(c.consumo_kwh) AS consumo_total_kwh
FROM consumos c
JOIN equipamentos eq
    ON c.id_equipamento = eq.id_equipamento
GROUP BY eq.nome;


-- 4. Calcular o consumo médio de cada equipamento
SELECT
    eq.nome AS equipamento,
    AVG(c.consumo_kwh) AS consumo_medio_kwh
FROM consumos c
JOIN equipamentos eq
    ON c.id_equipamento = eq.id_equipamento
GROUP BY eq.nome;


-- 5. Calcular o consumo total de cada empresa
SELECT
    e.nome AS empresa,
    SUM(c.consumo_kwh) AS consumo_total_kwh
FROM empresas e
JOIN equipamentos eq
    ON e.id_empresa = eq.id_empresa
JOIN consumos c
    ON eq.id_equipamento = c.id_equipamento
GROUP BY e.nome
ORDER BY consumo_total_kwh DESC;
