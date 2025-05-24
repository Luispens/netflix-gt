
CREATE TABLE detalle_peli (
                id INT AUTO_INCREMENT NOT NULL,
                descripcion VARCHAR(255) NOT NULL,
                directores VARCHAR(255) NOT NULL,
                elenco VARCHAR(255) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE peliculas (
                enc_id INT AUTO_INCREMENT NOT NULL,
                nombre VARCHAR NOT NULL,
                estreno VARCHAR(255) NOT NULL,
                duracion VARCHAR(20) NOT NULL,
                clasificacion VARCHAR(10) NOT NULL,
                calidad VARCHAR(10) NOT NULL,
                portada_url VARCHAR(255) NOT NULL,
                porcentaje_match INT NOT NULL,
                id INT NOT NULL,
                PRIMARY KEY (enc_id)
);


ALTER TABLE peliculas ADD CONSTRAINT detalle_peli_peliculas_fk
FOREIGN KEY (id)
REFERENCES detalle_peli (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
