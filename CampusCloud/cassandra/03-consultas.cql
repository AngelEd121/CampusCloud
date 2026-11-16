
-- CAMPUSCLOUD - UNIDAD II
-- CONSULTAS CQL

USE campuscloud;

-- CONSULTA 1: EVENTOS DE CARLOS
SELECT * FROM eventos_estudiante
WHERE estudiante_id = 'EST001';

-- CONSULTA 2: EVENTOS DE MARIA
SELECT * FROM eventos_estudiante
WHERE estudiante_id = 'EST002';

-- CONSULTA 3: EVENTOS DE JOSE
SELECT * FROM eventos_estudiante
WHERE estudiante_id = 'EST003';

-- CONSULTA 4: EVENTOS POR INTERVALO
SELECT
    estudiante_id,
    fecha_evento,
    tipo_evento,
    servicio_id,
    descripcion
FROM eventos_estudiante
WHERE estudiante_id = 'EST001'
AND fecha_evento >= '2026-11-10 00:00:00+0000'
AND fecha_evento < '2026-11-12 00:00:00+0000';

-- CONSULTA 5: EVENTO ESPECIFICO
SELECT *
FROM eventos_estudiante
WHERE estudiante_id = 'EST001'
AND fecha_evento = '2026-11-11 10:30:00+0000';
