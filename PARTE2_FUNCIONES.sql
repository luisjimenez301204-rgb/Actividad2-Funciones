
-- PRESENTADO POR DANIEL ESTEBAN CUARAN 

USE `empresa-retail-db`;

-- CONCAT: Une nombre y apellido del cliente
DELIMITER //
CREATE PROCEDURE sp_ejemplo_concat()
BEGIN
    SELECT cli_id_cliente,
           CONCAT(cli_nombre, ' ', cli_apellido) AS nombre_completo
    FROM cliente;
END//
DELIMITER ;

CALL sp_ejemplo_concat();


-- FIELD: Ubica la posición del tipo de canal en una lista
DELIMITER //
CREATE PROCEDURE sp_ejemplo_field()
BEGIN
    SELECT can_id_canal,
           can_tipo,
           FIELD(can_tipo, 'Red Social', 'Buscador', 'Email') AS posicion
    FROM canal;
END//
DELIMITER ;

CALL sp_ejemplo_field();

-- 3. FORMAT: Formatea el presupuesto de campaña con separador de miles
DELIMITER //
CREATE PROCEDURE sp_ejemplo_format()
BEGIN
    SELECT cam_id_campania,
           cam_nombre,
           cam_presupuesto,
           FORMAT(cam_presupuesto, 0) AS presupuesto_formateado
    FROM campania;
END//
DELIMITER ;

CALL sp_ejemplo_format();

-- LCASE: Convierte el nombre del cliente a minúsculas
DELIMITER //
CREATE PROCEDURE sp_ejemplo_lcase()
BEGIN
    SELECT cli_id_cliente,
           cli_nombre,
           LCASE(cli_nombre) AS nombre_minusculas
    FROM cliente;
END//
DELIMITER ;

CALL sp_ejemplo_lcase();

-- LEFT: Muestra los primeros 3 caracteres del correo
DELIMITER //
CREATE PROCEDURE sp_ejemplo_left()
BEGIN
    SELECT cli_id_cliente,
           cli_correo,
           LEFT(cli_correo, 3) AS primeros_3
    FROM cliente;
END//
DELIMITER ;

CALL sp_ejemplo_left();

-- LENGTH: Devuelve la longitud del nombre de la campaña
DELIMITER //
CREATE PROCEDURE sp_ejemplo_length()
BEGIN
    SELECT cam_id_campania,
           cam_nombre,
           LENGTH(cam_nombre) AS longitud
    FROM campania;
END//
DELIMITER ;

CALL sp_ejemplo_length();

-- LOWER: Convierte el tipo de canal a minúsculas
DELIMITER //
CREATE PROCEDURE sp_ejemplo_lower()
BEGIN
    SELECT can_id_canal,
           can_tipo,
           LOWER(can_tipo) AS tipo_minusculas
    FROM canal;
END//
DELIMITER ;

CALL sp_ejemplo_lower();


-- REPEAT: Repite el nombre del canal 3 veces

DELIMITER //
CREATE PROCEDURE sp_ejemplo_repeat()
BEGIN
    SELECT can_id_canal,
           can_nombre,
           REPEAT(can_nombre, 3) AS nombre_repetido
    FROM canal;
END//
DELIMITER ;

CALL sp_ejemplo_repeat();