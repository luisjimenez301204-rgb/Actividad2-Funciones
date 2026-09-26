
-- PRESENTADO POR LUIS FERNANDO JIMENEZ JOAQUI

USE `empresa-retail-db`;

-- REPLACE: Reemplaza 'Red Social' por 'Social Media' en canal
DELIMITER //
CREATE PROCEDURE sp_ejemplo_replace()
BEGIN
    SELECT can_id_canal,
           can_nombre,
           REPLACE(can_tipo, 'Red Social', 'Social Media') AS tipo_reemplazado
    FROM canal;
END//
DELIMITER ;

CALL sp_ejemplo_replace();


-- REVERSE: Invierte el nombre del cliente
DELIMITER //
CREATE PROCEDURE sp_ejemplo_reverse()
BEGIN
    SELECT cli_id_cliente,
           cli_nombre,
           REVERSE(cli_nombre) AS nombre_invertido
    FROM cliente;
END//
DELIMITER ;

CALL sp_ejemplo_reverse();


-- RIGHT: Muestra los últimos 4 dígitos del teléfono del cliente
DELIMITER //
CREATE PROCEDURE sp_ejemplo_right()
BEGIN
    SELECT cli_id_cliente,
           cli_nombre,
           cli_telefono,
           RIGHT(cli_telefono, 4) AS ultimos_4_digitos
    FROM cliente;
END//
DELIMITER ;

CALL sp_ejemplo_right();


-- SPACE: Genera espacios entre nombre y apellido
DELIMITER //
CREATE PROCEDURE sp_ejemplo_space()
BEGIN
    SELECT CONCAT(cli_nombre, SPACE(3), cli_apellido) AS nombre_completo_espaciado
    FROM cliente;
END//
DELIMITER ;

CALL sp_ejemplo_space();


-- SUBSTR: Extrae los primeros 5 caracteres del nombre de campaña
DELIMITER //
CREATE PROCEDURE sp_ejemplo_substr()
BEGIN
    SELECT cam_id_campania,
           cam_nombre,
           SUBSTR(cam_nombre, 1, 5) AS primeros_5
    FROM campania;
END//
DELIMITER ;

CALL sp_ejemplo_substr();


-- SUBSTRING: Extrae desde la posición 3 en adelante del nombre del canal
DELIMITER //
CREATE PROCEDURE sp_ejemplo_substring()
BEGIN
    SELECT can_id_canal,
           can_nombre,
           SUBSTRING(can_nombre, 3) AS desde_pos_3
    FROM canal;
END//
DELIMITER ;

CALL sp_ejemplo_substring();


-- UPPER: Convierte el nombre del canal a mayúsculas

DELIMITER //
CREATE PROCEDURE sp_ejemplo_upper()
BEGIN
    SELECT can_id_canal,
           can_nombre,
           UPPER(can_nombre) AS nombre_mayusculas
    FROM canal;
END//
DELIMITER ;

CALL sp_ejemplo_upper();