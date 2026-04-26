CREATE DATABASE tienda_sky;
USE tienda_sky;

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE desc_baterias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    voltios VARCHAR(20),
    amperios VARCHAR(20),
    potencia VARCHAR(20),
    numero VARCHAR(20),
    polaridad VARCHAR(20),
    rcs VARCHAR(20),
    medida VARCHAR(50),
    peso VARCHAR(20)
);

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categoria_id INT,
    nombre VARCHAR(150),
    marcas VARCHAR(150),
    imagen VARCHAR(255),
    desc_bateria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id),
    FOREIGN KEY (desc_bateria_id) REFERENCES desc_baterias(id)
);

INSERT INTO categorias (nombre) VALUES
('Baterías'),
('Cargadores'),
('Accesorios');

INSERT INTO desc_baterias (voltios, amperios, potencia, numero, polaridad, rcs, medida, peso) VALUES
('12V', '60Ah', '720W', '34', 'Positiva derecha', '120', '24x17x20 cm', '14kg'),
('12V', '70Ah', '840W', '24', 'Positiva izquierda', '130', '26x18x21 cm', '16kg');

INSERT INTO productos (categoria_id, nombre, marcas, imagen, desc_bateria_id) VALUES
(1, 'Batería 12V 60Ah', 'Bosch', 'bateria1.jpg', 1),
(1, 'Batería 12V 70Ah', 'ACDelco', 'bateria2.jpg', 2);