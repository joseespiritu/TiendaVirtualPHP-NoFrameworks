CREATE DATABASE tienda_php_poo;
USE tienda_master;


CREATE TABLE usuarios(
id  int(255) auto_increment not null,
nombre  varchar(100) not null,
apellidos varchar(255),
email   VARCHAR(255) not NULL,
password VARCHAR(255) NOT NULL,
rol VARCHAR(20),
imagen VARCHAR(255),
CONSTRAINT pk_usuarios PRIMARY KEY (id),
CONSTRAINT uq_email UNIQUE(email) 
) ENGINE=InnoDb DEFAULT CHARACTER SET=utf8;

INSERT INTO usuarios VALUES (NULL, 'Admin', 'Admin', 'admin@admin.com', 'contraseña','admin',null);

CREATE TABLE categorias (
id  int(255) auto_increment not null,
nombre  varchar(100) not null,
CONSTRAINT pk_categorias PRIMARY KEY (id)
) ENGINE=InnoDb DEFAULT CHARACTER SET=utf8;

INSERT INTO categorias VALUES (NULL, 'Manga corta');
INSERT INTO categorias VALUES (NULL, 'Tirantes');
INSERT INTO categorias VALUES (NULL, 'Manga Larga');
INSERT INTO categorias VALUES (NULL, 'Sudaderas');

CREATE TABLE productos(
id  int(255) auto_increment not null,
categoria_id INT(255) NOT NULL,
nombre  varchar(100) not null,
descripcion TEXT,
precio FLOAT(100,2) NOT NULL,
stock INT (255) NOT NULL,
oferta VARCHAR(2),
fecha DATE NOT NULL,
imagen VARCHAR(255),
CONSTRAINT pk_categorias PRIMARY KEY (id),
CONSTRAINT fk_producto_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)
) ENGINE=InnoDb DEFAULT CHARACTER SET=utf8;

CREATE TABLE pedidos(
id  int(255) auto_increment not null,
usuario_id INT(255) NOT NULL,
provincia  varchar(100) not null,
localidad  varchar(100) not null,
direccion  varchar(255) not null,
coste float(200,2) NOT NULL,
estado  VARCHAR(20) NOT NULL,
fecha DATE,
hora TIME,
CONSTRAINT pk_pedidos PRIMARY KEY (id),
CONSTRAINT fk_pedido_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
) ENGINE=InnoDb DEFAULT CHARACTER SET=utf8;

CREATE TABLE lineas_pedidos(
    id  int(255) auto_increment not null,
    pedido_id  int(255) not null,
    producto_id  int(255) not null,
    CONSTRAINT pk_lineas_pedidos PRIMARY KEY(id),
    CONSTRAINT fk_linea_pedido FOREIGN KEY(pedido_id) REFERENCES pedidos(id),
    CONSTRAINT fk_linea_producto FOREIGN KEY(producto_id) REFERENCES productos(id)
) ENGINE=InnoDb DEFAULT CHARACTER SET=utf8;