
/*
 * CAMPUSCLOUD - UNIDAD II
 * PRACTICA 2: NEO4J
 * Archivo: 03-actualizacion.cypher
 * Objetivo: Modificar una propiedad de un
 * estudiante y verificar el cambio.
 */

// ========================================
// CONSULTAR ANTES DE ACTUALIZAR
// ========================================

MATCH (e:Estudiante {id: "EST001"})
RETURN
    e.nombre AS estudiante,
    e.cuatrimestre AS cuatrimestre_actual;

// ========================================
// ACTUALIZAR CUATRIMESTRE
// ========================================

MATCH (e:Estudiante {id: "EST001"})
SET e.cuatrimestre = 8
RETURN
    e.nombre AS estudiante,
    e.cuatrimestre AS nuevo_cuatrimestre;

// ========================================
// VERIFICAR ACTUALIZACION
// ========================================

MATCH (e:Estudiante {id: "EST001"})
RETURN
    e.id AS identificador,
    e.nombre AS estudiante,
    e.carrera AS carrera,
    e.cuatrimestre AS cuatrimestre;
