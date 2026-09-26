-- =====================================================
-- Monitoramento Energético ESG
-- Automação com PL/SQL
-- =====================================================

-- Procedure para registrar um novo consumo energético
CREATE OR REPLACE PROCEDURE registrar_consumo (
    p_id_equipamento IN NUMBER,
    p_consumo_kwh     IN NUMBER
)
AS
BEGIN

    INSERT INTO consumos (
        id_equipamento,
        data_registro,
        consumo_kwh
    )
    VALUES (
        p_id_equipamento,
        SYSDATE,
        p_consumo_kwh
    );

    COMMIT;

END;
/

-- Exemplo de utilização da procedure
BEGIN
    registrar_consumo(1, 150.50);
END;
/
