-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS miscelanea_la_central;

-- Crear la tabla "Categorias"
CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255)

)
-- Insertar datos en "categorias"
INSERT INTO categorias (nombre, descripcion) VALUES
('Lácteos', 'Leche, queso, yogurt, mantequilla... etc'),
('Granos y Legumbres', 'Arroz, frijoles, lentejas, maíz'),
('Bebidas', 'Jugos, gaseosas, agua, café'),
('Aceites y Grasas', 'Aceite vegetal, manteca'),
('Enlatados', 'Atún, sardinas, tomate enlatado'),
('Panadería', 'Pan, galletas, cereales'),
('Condimentos', 'Sal, azúcar, especias, salsas');

-- Crear la tabla de "productos"
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    categoria_id INT NOT NULL,
    precio_compra DECIMAL(10,2) NOT NULL,
    precio_venta_detal DECIMAL(10,2) NOT NULL,
    precio_venta_mayor DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    stock_minimo INT NOT NULL DEFAULT 5,
    activo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);