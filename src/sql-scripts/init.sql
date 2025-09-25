-- Archivo de inicialización para la base de datos BBDD1
-- Este archivo se ejecutará automáticamente cuando se cree el contenedor de MySQL

USE bbdd1_db;

-- Crear una tabla de ejemplo para probar la conexión
CREATE TABLE IF NOT EXISTS estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar algunos datos de ejemplo
INSERT INTO estudiantes (nombre, apellido, email) VALUES
('Juan', 'Pérez', 'juan.perez@email.com'),
('María', 'González', 'maria.gonzalez@email.com'),
('Carlos', 'Rodríguez', 'carlos.rodriguez@email.com');

-- Mostrar información sobre las tablas creadas
SHOW TABLES;