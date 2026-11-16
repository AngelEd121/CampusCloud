
/*
 * CAMPUSCLOUD - UNIDAD II
 * PRACTICA 2: NEO4J
 * Archivo: 02-consultas.cypher
 * Objetivo: Consultar relaciones y generar
 * recomendaciones de servicios.
 */

// ========================================
// CONSULTA 1
// SERVICIOS UTILIZADOS POR UN ESTUDIANTE
// ========================================

MATCH (e:Estudiante {id: "EST001"})
      -[:UTILIZA]->(s:Servicio)
RETURN
    e.nombre AS estudiante,
    s.nombre AS servicio,
    s.categoria AS categoria
ORDER BY servicio;

// ========================================
// CONSULTA 2
// ESTUDIANTES QUE COMPARTEN SERVICIOS
// ========================================

MATCH (e1:Estudiante)-[:UTILIZA]->
      (s:Servicio)<-[:UTILIZA]-(e2:Estudiante)
WHERE e1.id < e2.id
RETURN
    e1.nombre AS estudiante_1,
    e2.nombre AS estudiante_2,
    s.nombre AS servicio_compartido
ORDER BY servicio_compartido;

// ========================================
// CONSULTA 3
// RECOMENDACION DE SERVICIOS
// ========================================

MATCH (e:Estudiante {id: "EST001"})
      -[:UTILIZA]->(s:Servicio)
      <-[:UTILIZA]-(otro:Estudiante)
      -[:UTILIZA]->(recomendado:Servicio)
WHERE NOT EXISTS {
    MATCH (e)-[:UTILIZA]->(recomendado)
}
RETURN
    recomendado.nombre AS servicio_recomendado,
    count(DISTINCT otro) AS coincidencias
ORDER BY coincidencias DESC, servicio_recomendado;

// ========================================
// CONSULTA 4
// VISUALIZACION DEL GRAFO
// ========================================

MATCH (e:Estudiante)-[r:UTILIZA]->(s:Servicio)
RETURN e, r, s;
