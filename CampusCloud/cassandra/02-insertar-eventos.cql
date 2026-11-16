
-- CAMPUSCLOUD - UNIDAD II
-- INSERCION DE 12 EVENTOS FICTICIOS

USE campuscloud;

-- EST001: CARLOS RAMIREZ

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST001', '2026-11-10 08:00:00+0000', 11111111-1111-4111-8111-111111111111,
'LOGIN', 'SISTEMA', 'Inicio de sesion en CampusCloud', 'Laptop');

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST001', '2026-11-10 09:15:00+0000', 11111111-1111-4111-8111-111111111112,
'CONSULTA', 'SER001', 'Consulta de libros digitales', 'Laptop');

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST001', '2026-11-11 10:30:00+0000', 11111111-1111-4111-8111-111111111113,
'ACCESO', 'SER003', 'Acceso al laboratorio de computo', 'PC');

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST001', '2026-11-12 12:00:00+0000', 11111111-1111-4111-8111-111111111114,
'LOGOUT', 'SISTEMA', 'Cierre de sesion', 'Laptop');

-- EST002: MARIA LOPEZ

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST002', '2026-11-10 07:45:00+0000', 22222222-2222-4222-8222-222222222221,
'LOGIN', 'SISTEMA', 'Inicio de sesion', 'Celular');

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST002', '2026-11-10 11:00:00+0000', 22222222-2222-4222-8222-222222222222,
'CONSULTA', 'SER001', 'Consulta de biblioteca digital', 'Celular');

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST002', '2026-11-11 13:20:00+0000', 22222222-2222-4222-8222-222222222223,
'SOLICITUD', 'SER002', 'Solicitud de asesoria academica', 'Laptop');

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST002', '2026-11-12 15:00:00+0000', 22222222-2222-4222-8222-222222222224,
'LOGOUT', 'SISTEMA', 'Cierre de sesion', 'Laptop');

-- EST003: JOSE MARTINEZ

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST003', '2026-11-10 08:30:00+0000', 33333333-3333-4333-8333-333333333331,
'LOGIN', 'SISTEMA', 'Inicio de sesion', 'PC');

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST003', '2026-11-11 09:00:00+0000', 33333333-3333-4333-8333-333333333332,
'ACCESO', 'SER003', 'Acceso al laboratorio', 'PC');

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST003', '2026-11-12 10:45:00+0000', 33333333-3333-4333-8333-333333333333,
'SOPORTE', 'SER004', 'Solicitud de soporte tecnico', 'Laptop');

INSERT INTO eventos_estudiante
(estudiante_id, fecha_evento, evento_id, tipo_evento, servicio_id, descripcion, dispositivo)
VALUES
('EST003', '2026-11-13 16:00:00+0000', 33333333-3333-4333-8333-333333333334,
'LOGOUT', 'SISTEMA', 'Cierre de sesion', 'Laptop');
