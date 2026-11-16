
/*
 * CAMPUSCLOUD - UNIDAD II
 * Archivo: 06-agregacion.js
 * Objetivo: Contar servicios por categoria.
 */

const database = db.getSiblingDB("campuscloud_nosql");
const coleccion = database.detalles_servicios;

print("\n=== AGREGACION POR CATEGORIA ===");

const resultados = coleccion.aggregate([
    {
        $group: {
            _id: "$categoria",
            total_servicios: { $sum: 1 }
        }
    },
    {
        $sort: {
            _id: 1
        }
    }
]).toArray();

printjson(resultados);

print("\n=== TOTAL GENERAL ===");

print("Documentos: " + coleccion.countDocuments({}));
