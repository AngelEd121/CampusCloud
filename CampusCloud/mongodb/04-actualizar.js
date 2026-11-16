
/*
 * CAMPUSCLOUD - UNIDAD II
 * Archivo: 04-actualizar.js
 * Objetivo: Actualizar un documento.
 */

const database = db.getSiblingDB("campuscloud_nosql");
const coleccion = database.detalles_servicios;

print("\n=== ANTES DE ACTUALIZAR ===");

printjson(
    coleccion.findOne({ servicio_id: "SER003" })
);

const resultado = coleccion.updateOne(
    { servicio_id: "SER003" },
    {
        $set: {
            "configuracion.equipos": 40,
            descripcion: "Laboratorio de computo actualizado"
        }
    }
);

print("\nDocumentos encontrados: " + resultado.matchedCount);
print("Documentos modificados: " + resultado.modifiedCount);

print("\n=== DESPUES DE ACTUALIZAR ===");

printjson(
    coleccion.findOne({ servicio_id: "SER003" })
);
