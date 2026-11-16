
-- CAMPUSCLOUD - UNIDAD II
-- ELIMINACION CONTROLADA DE EVENTOS

USE campuscloud;

-- CONSULTAR ANTES
SELECT *
FROM eventos_estudiante
WHERE estudiante_id = 'EST002';

-- ELIMINAR EVENTO
DELETE FROM eventos_estudiante
WHERE estudiante_id = 'EST002'
AND fecha_evento = '2026-11-12 15:00:00+0000'
AND evento_id = 22222222-2222-4222-8222-222222222224;

-- VERIFICAR ELIMINACION
SELECT *
FROM eventos_estudiante
WHERE estudiante_id = 'EST002';
