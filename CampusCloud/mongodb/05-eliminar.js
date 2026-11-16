
/*
 * CAMPUSCLOUD - UNIDAD II
 * Archivo: 05-eliminar.js
 * Objetivo: Eliminar un documento especifico.
 */

const database = db.getSiblingDB("campuscloud_nosql");
const coleccion = database.detalles_servicios;

print("\n=== ANTES DE ELIMINAR ===");

printjson(
    coleccion.findOne({ servicio_id: "SER006" })
);

const resultado = coleccion.deleteOne({
    servicio_id: "SER006"
});

print("\nDocumentos eliminados: " + resultado.deletedCount);

print("\n=== DESPUES DE ELIMINAR ===");

printjson(
    coleccion.findOne({ servicio_id: "SER006" })
);

print("\nTotal de documentos restantes: " +
    coleccion.countDocuments({})
);
