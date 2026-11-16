
/*
 * CAMPUSCLOUD - UNIDAD II
 * Archivo: 03-consultas-filtros.js
 * Objetivo: Consultar documentos mediante filtros.
 */

const database = db.getSiblingDB("campuscloud_nosql");
const coleccion = database.detalles_servicios;

// CONSULTA 1: Servicios academicos
print("\n=== CONSULTA 1: SERVICIOS ACADEMICOS ===");

printjson(
    coleccion.find({
        categoria: "Academico"
    }).toArray()
);

// CONSULTA 2: Servicios tecnologicos activos
print("\n=== CONSULTA 2: TECNOLOGICOS ACTIVOS ===");

printjson(
    coleccion.find({
        categoria: "Tecnologico",
        activo: true
    }).toArray()
);

// CONSULTA 3: Servicios que ofrecen software
print("\n=== CONSULTA 3: SERVICIOS CON SOFTWARE ===");

printjson(
    coleccion.find({
        caracteristicas: "Software"
    }).toArray()
);
