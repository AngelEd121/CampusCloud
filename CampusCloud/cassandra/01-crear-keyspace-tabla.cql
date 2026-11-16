
-- CAMPUSCLOUD - UNIDAD II
-- PRACTICA 3: CASSANDRA
-- Creacion del keyspace y tabla de eventos

CREATE KEYSPACE IF NOT EXISTS campuscloud
WITH replication = {
    'class': 'SimpleStrategy',
    'replication_factor': 1
}
AND durable_writes = true;

USE campuscloud;

CREATE TABLE IF NOT EXISTS eventos_estudiante (
    estudiante_id text,
    fecha_evento timestamp,
    evento_id uuid,
    tipo_evento text,
    servicio_id text,
    descripcion text,
    dispositivo text,
    PRIMARY KEY (
        (estudiante_id),
        fecha_evento,
        evento_id
    )
) WITH CLUSTERING ORDER BY (
    fecha_evento DESC,
    evento_id ASC
);

DESCRIBE TABLE eventos_estudiante;
