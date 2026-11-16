
/*
 * CAMPUSCLOUD - UNIDAD II
 * Practica 1: MongoDB
 * Archivo: 01-crear-coleccion.js
 * Objetivo: Crear la coleccion de detalles de servicios.
 */

const database = db.getSiblingDB("campuscloud_nosql");

const nombreColeccion = "detalles_servicios";

if (!database.getCollectionNames().includes(nombreColeccion)) {
    database.createCollection(nombreColeccion);
    print("Coleccion creada correctamente.");
} else {
    print("La coleccion ya existe.");
}

print("Base de datos: " + database.getName());
print("Coleccion: " + nombreColeccion);
