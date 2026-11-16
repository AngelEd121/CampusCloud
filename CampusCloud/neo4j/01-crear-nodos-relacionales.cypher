
/*
 * CAMPUSCLOUD - UNIDAD II
 * PRACTICA 2: NEO4J
 * Archivo: 01-crear-nodos-relaciones.cypher
 * Objetivo: Crear nodos y relaciones entre
 * estudiantes y servicios de CampusCloud.
 */

// ========================================
// CREACION DE ESTUDIANTES
// ========================================

MERGE (e1:Estudiante {id: "EST001"})
ON CREATE SET
    e1.nombre = "Carlos Ramirez",
    e1.carrera = "Tecnologias de la Informacion",
    e1.cuatrimestre = 7;

MERGE (e2:Estudiante {id: "EST002"})
ON CREATE SET
    e2.nombre = "Maria Lopez",
    e2.carrera = "Administracion",
    e2.cuatrimestre = 5;

MERGE (e3:Estudiante {id: "EST003"})
ON CREATE SET
    e3.nombre = "Jose Martinez",
    e3.carrera = "Tecnologias de la Informacion",
    e3.cuatrimestre = 7;

MERGE (e4:Estudiante {id: "EST004"})
ON CREATE SET
    e4.nombre = "Ana Hernandez",
    e4.carrera = "Mecatronica",
    e4.cuatrimestre = 6;

MERGE (e5:Estudiante {id: "EST005"})
ON CREATE SET
    e5.nombre = "Luis Garcia",
    e5.carrera = "Tecnologias de la Informacion",
    e5.cuatrimestre = 4;

// ========================================
// CREACION DE SERVICIOS
// ========================================

MERGE (s1:Servicio {id: "SER001"})
ON CREATE SET
    s1.nombre = "Biblioteca Digital",
    s1.categoria = "Academico";

MERGE (s2:Servicio {id: "SER002"})
ON CREATE SET
    s2.nombre = "Asesorias Academicas",
    s2.categoria = "Academico";

MERGE (s3:Servicio {id: "SER003"})
ON CREATE SET
    s3.nombre = "Laboratorio de Computo",
    s3.categoria = "Tecnologico";

MERGE (s4:Servicio {id: "SER004"})
ON CREATE SET
    s4.nombre = "Soporte Tecnico",
    s4.categoria = "Tecnologico";

// ========================================
// CREACION DE RELACIONES
// ========================================

MATCH (e:Estudiante {id: "EST001"})
MATCH (s:Servicio {id: "SER001"})
MERGE (e)-[:UTILIZA]->(s);

MATCH (e:Estudiante {id: "EST001"})
MATCH (s:Servicio {id: "SER003"})
MERGE (e)-[:UTILIZA]->(s);

MATCH (e:Estudiante {id: "EST002"})
MATCH (s:Servicio {id: "SER001"})
MERGE (e)-[:UTILIZA]->(s);

MATCH (e:Estudiante {id: "EST002"})
MATCH (s:Servicio {id: "SER002"})
MERGE (e)-[:UTILIZA]->(s);

MATCH (e:Estudiante {id: "EST003"})
MATCH (s:Servicio {id: "SER001"})
MERGE (e)-[:UTILIZA]->(s);

MATCH (e:Estudiante {id: "EST003"})
MATCH (s:Servicio {id: "SER003"})
MERGE (e)-[:UTILIZA]->(s);

MATCH (e:Estudiante {id: "EST003"})
MATCH (s:Servicio {id: "SER004"})
MERGE (e)-[:UTILIZA]->(s);

MATCH (e:Estudiante {id: "EST004"})
MATCH (s:Servicio {id: "SER002"})
MERGE (e)-[:UTILIZA]->(s);

MATCH (e:Estudiante {id: "EST004"})
MATCH (s:Servicio {id: "SER003"})
MERGE (e)-[:UTILIZA]->(s);

MATCH (e:Estudiante {id: "EST005"})
MATCH (s:Servicio {id: "SER001"})
MERGE (e)-[:UTILIZA]->(s);

MATCH (e:Estudiante {id: "EST005"})
MATCH (s:Servicio {id: "SER004"})
MERGE (e)-[:UTILIZA]->(s);

// ========================================
// VERIFICACION
// ========================================

MATCH (e:Estudiante)
RETURN count(e) AS total_estudiantes;

MATCH (s:Servicio)
RETURN count(s) AS total_servicios;

MATCH (:Estudiante)-[r:UTILIZA]->(:Servicio)
RETURN count(r) AS total_relaciones;
