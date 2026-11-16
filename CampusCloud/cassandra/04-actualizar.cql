
-- CAMPUSCLOUD - UNIDAD II
-- ACTUALIZACION DE EVENTOS

USE campuscloud;

-- CONSULTAR ANTES
SELECT *
FROM eventos_estudiante
WHERE estudiante_id = 'EST001'
AND fecha_evento = '2026-11-11 10:30:00+0000';

-- ACTUALIZAR EVENTO
UPDATE eventos_estudiante
SET
    descripcion = 'Acceso autorizado al laboratorio de computo',
    dispositivo = 'PC Laboratorio'
WHERE estudiante_id = 'EST001'
AND fecha_evento = '2026-11-11 10:30:00+0000'
AND evento_id = 11111111-1111-4111-8111-111111111113;

-- VERIFICAR ACTUALIZACION
SELECT
    estudiante_id,
    fecha_evento,
    descripcion,
    dispositivo
FROM eventos_estudiante
WHERE estudiante_id = 'EST001'
AND fecha_evento = '2026-11-11 10:30:00+0000';
