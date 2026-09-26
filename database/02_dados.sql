-- =====================================================
-- Monitoramento Energético ESG
-- Dados de exemplo
-- =====================================================

-- Cadastro das empresas
INSERT INTO empresas (nome, setor, cidade, estado)
VALUES ('Banco Horizonte', 'Financeiro', 'Sao Paulo', 'SP');

INSERT INTO empresas (nome, setor, cidade, estado)
VALUES ('Industria Verde', 'Industrial', 'Campinas', 'SP');


-- Cadastro dos equipamentos
INSERT INTO equipamentos (id_empresa, nome, categoria, potencia_kw)
VALUES (1, 'Servidor Data Center', 'TI', 8.50);

INSERT INTO equipamentos (id_empresa, nome, categoria, potencia_kw)
VALUES (1, 'Ar Condicionado Central', 'Climatizacao', 12.00);

INSERT INTO equipamentos (id_empresa, nome, categoria, potencia_kw)
VALUES (2, 'Maquina Industrial A', 'Producao', 25.00);


-- Registros de consumo
INSERT INTO consumos (id_equipamento, data_registro, consumo_kwh)
VALUES (1, DATE '2026-09-20', 135.70);

INSERT INTO consumos (id_equipamento, data_registro, consumo_kwh)
VALUES (1, DATE '2026-09-21', 142.30);

INSERT INTO consumos (id_equipamento, data_registro, consumo_kwh)
VALUES (2, DATE '2026-09-20', 210.50);

INSERT INTO consumos (id_equipamento, data_registro, consumo_kwh)
VALUES (3, DATE '2026-09-20', 380.20);

COMMIT;
