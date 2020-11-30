-- Desafio - Creando  y analizando nuestro propio blog

--Req.1. Crear la base de datos llamada blog
 CREATE DATABASE blog;

-- Req.2. Crear las tablas indicadas de acuerdo al modelo de datos

blog=# CREATE TABLE usuario(id SERIAL, email VARCHAR(30), PRIMARY KEY(id));
CREATE TABLE

blog=# CREATE TABLE post(id SERIAL, usuario_id INT, titulo VARCHAR(30), fecha DATE, PRIMARY KEY(id), FOREIGN KEY(usuario_id) REFERENCES usuario(id));
CREATE TABLE

blog=# CREATE TABLE comentario(id SERIAL, usuario_id INT, post_id INT, texto VARCHAR(100), fecha DATE, PRIMARY KEY(id), FOREIGN KEY(post_id) REFERENCES post(id),FOREIGN KEY(usuario_id) REFERENCES usuario(id));
CREATE TABLE

-- Req.3. Insertar los siguientes registros

blog=# INSERT INTO usuario(email) VALUES('usuario01@hotmail.com');
INSERT 0 1                                
blog=# INSERT INTO usuario(email) VALUES('usuario02@gmail.com');
INSERT 0 1
blog=# INSERT INTO usuario(email) VALUES('usuario03@gmail.com');
INSERT 0 1
blog=# INSERT INTO usuario(email) VALUES('usuario04@hotmail.com');
INSERT 0 1
blog=# INSERT INTO usuario(email) VALUES('usuario05@yahoo.com');
INSERT 0 1
blog=# INSERT INTO usuario(email) VALUES('usuario06@hotmail.com');
INSERT 0 1
blog=# INSERT INTO usuario(email) VALUES('usuario07@yahoo.com');
INSERT 0 1
blog=# INSERT INTO usuario(email) VALUES('usuario08@yahoo.com');
INSERT 0 1
blog=# INSERT INTO usuario(email) VALUES('usuario09@yahoo.com');
INSERT 0 1

blog=# SELECT * FROM usuario;
  1 | usuario01@hotmail.com
  2 | usuario02@gmail.com
  3 | usuario03@gmail.com
  4 | usuario04@hotmail.com
  5 | usuario05@yahoo.com
  6 | usuario06@hotmail.com
  7 | usuario07@yahoo.com
  8 | usuario08@yahoo.com
  9 | usuario09@yahoo.com

blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (1,'Post 1:Esto es malo','2020-06-29');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (5,'Post 2:Esto es malo','2020-06-20');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (1,'Post 3:Esto es excelente','2020-05-30');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (9,'Post 4:Esto es bueno','2020-05-09');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (7,'Post 5:Esto es bueno','2020-07-10');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (5,'Post 6:Esto es excelente','2020-07-18');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (8,'Post 7:Esto es excelente','2020-07-07');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (5,'Post 8:Esto es excelente','2020-05-14');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (2,'Post 9:Esto es bueno','2020-05-08');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (6,'Post 10:Esto es bueno','2020-06-02');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (4,'Post 11:Esto es bueno','2020-05-05');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (9,'Post 12:Esto es malo','2020-07-23');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (5,'Post 13:Esto es excelente','2020-05-30');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (8,'Post 14:Esto es excelente','2020-05-01');
INSERT 0 1
blog=# INSERT INTO post(usuario_id,titulo,fecha) VALUES (7,'Post 15:Esto es malo','2020-06-17');
INSERT 0 1

blog=# SELECT * FROM post;
  1 |          1 | Post 1:Esto es malo       | 2020-06-29
  2 |          5 | Post 2:Esto es malo       | 2020-06-20
  3 |          1 | Post 3:Esto es excelente  | 2020-05-30
  4 |          9 | Post 4:Esto es bueno      | 2020-05-09
  5 |          7 | Post 5:Esto es bueno      | 2020-07-10
  6 |          5 | Post 6:Esto es excelente  | 2020-07-18
  7 |          8 | Post 7:Esto es excelente  | 2020-07-07
  8 |          5 | Post 8:Esto es excelente  | 2020-05-14
  9 |          2 | Post 9:Esto es bueno      | 2020-05-08
 10 |          6 | Post 10:Esto es bueno     | 2020-06-02
 11 |          4 | Post 11:Esto es bueno     | 2020-05-05
 12 |          9 | Post 12:Esto es malo      | 2020-07-23
 13 |          5 | Post 13:Esto es excelente | 2020-05-30
 14 |          8 | Post 14:Esto es excelente | 2020-05-01
 15 |          7 | Post 15:Esto es malo      | 2020-06-17

blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (3,6,'Este es el comentario 1','2020-07-08');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (4,2,'Este es el comentario 2','2020-06-07');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (6,4,'Este es el comentario 3','2020-06-16');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (2,13,'Este es el comentario 4','2020-06-15');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (6,6,'Este es el comentario 5','2020-05-14');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (3,3,'Este es el comentario 6','2020-07-08');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (6,1,'Este es el comentario 7','2020-05-22');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (6,7,'Este es el comentario 8','2020-07-09');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (8,13,'Este es el comentario 9','2020-06-30');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (8,6,'Este es el comentario 10','2020-06-19');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (5,1,'Este es el comentario 11','2020-05-09');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (8,15,'Este es el comentario 12','2020-06-17');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (1,9,'Este es el comentario 13','2020-05-01');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (2,5,'Este es el comentario 14','2020-05-31');
INSERT 0 1
blog=# INSERT INTO comentario(usuario_id,post_id,texto,fecha) VALUES (4,3,'Este es el comentario 15','2020-06-28');
INSERT 0 1

blog=# SELECT * FROM comentario;
  1 |          3 |       6 | Este es el comentario 1  | 2020-07-08
  2 |          4 |       2 | Este es el comentario 2  | 2020-06-07
  3 |          6 |       4 | Este es el comentario 3  | 2020-06-16
  4 |          2 |      13 | Este es el comentario 4  | 2020-06-15
  5 |          6 |       6 | Este es el comentario 5  | 2020-05-14
  6 |          3 |       3 | Este es el comentario 6  | 2020-07-08
  7 |          6 |       1 | Este es el comentario 7  | 2020-05-22
  8 |          6 |       7 | Este es el comentario 8  | 2020-07-09
  9 |          8 |      13 | Este es el comentario 9  | 2020-06-30
 10 |          8 |       6 | Este es el comentario 10 | 2020-06-19
 11 |          5 |       1 | Este es el comentario 11 | 2020-05-09
 12 |          8 |      15 | Este es el comentario 12 | 2020-06-17
 13 |          1 |       9 | Este es el comentario 13 | 2020-05-01
 14 |          2 |       5 | Este es el comentario 14 | 2020-05-31
 15 |          4 |       3 | Este es el comentario 15 | 2020-06-28

--Req.4. Seleccionar el correo, id y título de todos los post publicados por el usuario 5.

blog=# SELECT y.email,x.id,x.titulo FROM (SELECT * FROM post WHERE usuario_id = 5) AS x INNER JOIN usuario AS y ON y.id = x.usuario_id;
 usuario05@yahoo.com |  2 | Post 2:Esto es malo
 usuario05@yahoo.com |  6 | Post 6:Esto es excelente
 usuario05@yahoo.com |  8 | Post 8:Esto es excelente
 usuario05@yahoo.com | 13 | Post 13:Esto es excelente

-- Otra forma:

blog=# SELECT email,post.id,titulo FROM post INNER JOIN usuario ON post.usuario_id = usuario.id WHERE usuario.id = 5;
 usuario05@yahoo.com |  2 | Post 2:Esto es malo
 usuario05@yahoo.com |  6 | Post 6:Esto es excelente
 usuario05@yahoo.com |  8 | Post 8:Esto es excelente
 usuario05@yahoo.com | 13 | Post 13:Esto es excelente

-- Req.5. Listar el correo, id y el detalle de todos los comentarios que no hayan sido realizados por el usuario con email usuario06@hotmail.com 

blog=# SELECT email,comentario.id,post_id,texto,fecha FROM comentario INNER JOIN usuario ON comentario.usuario_id = usuario.id WHERE email !='usuario06@hotmail.com';
 usuario03@gmail.com   |  1 |       6 | Este es el comentario 1  | 2020-07-08
 usuario04@hotmail.com |  2 |       2 | Este es el comentario 2  | 2020-06-07
 usuario02@gmail.com   |  4 |      13 | Este es el comentario 4  | 2020-06-15
 usuario03@gmail.com   |  6 |       3 | Este es el comentario 6  | 2020-07-08
 usuario08@yahoo.com   |  9 |      13 | Este es el comentario 9  | 2020-06-30
 usuario08@yahoo.com   | 10 |       6 | Este es el comentario 10 | 2020-06-19
 usuario05@yahoo.com   | 11 |       1 | Este es el comentario 11 | 2020-05-09
 usuario08@yahoo.com   | 12 |      15 | Este es el comentario 12 | 2020-06-17
 usuario01@hotmail.com | 13 |       9 | Este es el comentario 13 | 2020-05-01
 usuario02@gmail.com   | 14 |       5 | Este es el comentario 14 | 2020-05-31
 usuario04@hotmail.com | 15 |       3 | Este es el comentario 15 | 2020-06-28

-- Otra forma:
blog=# SELECT x.email, y.id, y.post_id, y.texto, y.fecha FROM (SELECT * FROM usuario WHERE email !='usuario06@hotmail.com') AS x INNER JOIN comentario AS y ON y.usuario_id = x.id;
 usuario03@gmail.com   |  1 |       6 | Este es el comentario 1  | 2020-07-08
 usuario04@hotmail.com |  2 |       2 | Este es el comentario 2  | 2020-06-07
 usuario02@gmail.com   |  4 |      13 | Este es el comentario 4  | 2020-06-15
 usuario03@gmail.com   |  6 |       3 | Este es el comentario 6  | 2020-07-08
 usuario08@yahoo.com   |  9 |      13 | Este es el comentario 9  | 2020-06-30
 usuario08@yahoo.com   | 10 |       6 | Este es el comentario 10 | 2020-06-19
 usuario05@yahoo.com   | 11 |       1 | Este es el comentario 11 | 2020-05-09
 usuario08@yahoo.com   | 12 |      15 | Este es el comentario 12 | 2020-06-17
 usuario01@hotmail.com | 13 |       9 | Este es el comentario 13 | 2020-05-01
 usuario02@gmail.com   | 14 |       5 | Este es el comentario 14 | 2020-05-31
 usuario04@hotmail.com | 15 |       3 | Este es el comentario 15 | 2020-06-28

--Req.6. Listar los usuarios que no han publicado ningún post.

blog=# SELECT * FROM usuario LEFT JOIN post ON usuario.id = post.usuario_id WHERE post.usuario_id IS NULL;
  3 | usuario03@gmail.com |    |            |        |

-- Req.7. Listar todos los post con sus comentarios (incluyendo aquellos que no poseen comentarios).

blog=# SELECT * FROM post FULL OUTER JOIN comentario ON post.id = comentario.post_id;
  6 |          5 | Post 6:Esto es excelente  | 2020-07-18 |  1 |          3 |       6 | Este es el comentario 1  | 2020-07-08
  2 |          5 | Post 2:Esto es malo       | 2020-06-20 |  2 |          4 |       2 | Este es el comentario 2  | 2020-06-07
  4 |          9 | Post 4:Esto es bueno      | 2020-05-09 |  3 |          6 |       4 | Este es el comentario 3  | 2020-06-16
 13 |          5 | Post 13:Esto es excelente | 2020-05-30 |  4 |          2 |      13 | Este es el comentario 4  | 2020-06-15
  6 |          5 | Post 6:Esto es excelente  | 2020-07-18 |  5 |          6 |       6 | Este es el comentario 5  | 2020-05-14
  3 |          1 | Post 3:Esto es excelente  | 2020-05-30 |  6 |          3 |       3 | Este es el comentario 6  | 2020-07-08
  1 |          1 | Post 1:Esto es malo       | 2020-06-29 |  7 |          6 |       1 | Este es el comentario 7  | 2020-05-22
  7 |          8 | Post 7:Esto es excelente  | 2020-07-07 |  8 |          6 |       7 | Este es el comentario 8  | 2020-07-09
 13 |          5 | Post 13:Esto es excelente | 2020-05-30 |  9 |          8 |      13 | Este es el comentario 9  | 2020-06-30
  6 |          5 | Post 6:Esto es excelente  | 2020-07-18 | 10 |          8 |       6 | Este es el comentario 10 | 2020-06-19
  1 |          1 | Post 1:Esto es malo       | 2020-06-29 | 11 |          5 |       1 | Este es el comentario 11 | 2020-05-09
 15 |          7 | Post 15:Esto es malo      | 2020-06-17 | 12 |          8 |      15 | Este es el comentario 12 | 2020-06-17
  9 |          2 | Post 9:Esto es bueno      | 2020-05-08 | 13 |          1 |       9 | Este es el comentario 13 | 2020-05-01
  5 |          7 | Post 5:Esto es bueno      | 2020-07-10 | 14 |          2 |       5 | Este es el comentario 14 | 2020-05-31
  3 |          1 | Post 3:Esto es excelente  | 2020-05-30 | 15 |          4 |       3 | Este es el comentario 15 | 2020-06-28
 11 |          4 | Post 11:Esto es bueno     | 2020-05-05 |    |            |         |                          |
 12 |          9 | Post 12:Esto es malo      | 2020-07-23 |    |            |         |                          |
 10 |          6 | Post 10:Esto es bueno     | 2020-06-02 |    |            |         |                          |
  8 |          5 | Post 8:Esto es excelente  | 2020-05-14 |    |            |         |                          |
 14 |          8 | Post 14:Esto es excelente | 2020-05-01 |    |            |         |                          |

-- Otra forma con ORDER BY:

blog=# SELECT * FROM post FULL OUTER JOIN comentario ON post.id = comentario.post_id ORDER BY post.id;
  1 |          1 | Post 1:Esto es malo       | 2020-06-29 | 11 |          5 |       1 | Este es el comentario 11 | 2020-05-09
  1 |          1 | Post 1:Esto es malo       | 2020-06-29 |  7 |          6 |       1 | Este es el comentario 7  | 2020-05-22
  2 |          5 | Post 2:Esto es malo       | 2020-06-20 |  2 |          4 |       2 | Este es el comentario 2  | 2020-06-07
  3 |          1 | Post 3:Esto es excelente  | 2020-05-30 | 15 |          4 |       3 | Este es el comentario 15 | 2020-06-28
  3 |          1 | Post 3:Esto es excelente  | 2020-05-30 |  6 |          3 |       3 | Este es el comentario 6  | 2020-07-08
  4 |          9 | Post 4:Esto es bueno      | 2020-05-09 |  3 |          6 |       4 | Este es el comentario 3  | 2020-06-16
  5 |          7 | Post 5:Esto es bueno      | 2020-07-10 | 14 |          2 |       5 | Este es el comentario 14 | 2020-05-31
  6 |          5 | Post 6:Esto es excelente  | 2020-07-18 |  1 |          3 |       6 | Este es el comentario 1  | 2020-07-08
  6 |          5 | Post 6:Esto es excelente  | 2020-07-18 |  5 |          6 |       6 | Este es el comentario 5  | 2020-05-14
  6 |          5 | Post 6:Esto es excelente  | 2020-07-18 | 10 |          8 |       6 | Este es el comentario 10 | 2020-06-19
  7 |          8 | Post 7:Esto es excelente  | 2020-07-07 |  8 |          6 |       7 | Este es el comentario 8  | 2020-07-09
  8 |          5 | Post 8:Esto es excelente  | 2020-05-14 |    |            |         |                          |
  9 |          2 | Post 9:Esto es bueno      | 2020-05-08 | 13 |          1 |       9 | Este es el comentario 13 | 2020-05-01
 10 |          6 | Post 10:Esto es bueno     | 2020-06-02 |    |            |         |                          |
 11 |          4 | Post 11:Esto es bueno     | 2020-05-05 |    |            |         |                          |
 12 |          9 | Post 12:Esto es malo      | 2020-07-23 |    |            |         |                          |
 13 |          5 | Post 13:Esto es excelente | 2020-05-30 |  9 |          8 |      13 | Este es el comentario 9  | 2020-06-30
 13 |          5 | Post 13:Esto es excelente | 2020-05-30 |  4 |          2 |      13 | Este es el comentario 4  | 2020-06-15
 14 |          8 | Post 14:Esto es excelente | 2020-05-01 |    |            |         |                          |
 15 |          7 | Post 15:Esto es malo      | 2020-06-17 | 12 |          8 |      15 | Este es el comentario 12 | 2020-06-17


-- Req.8. Listar todos los usuarios que hayan publicado un post en Junio.

blog=# SELECT * FROM usuario LEFT JOIN post ON usuario.id = post.usuario_id WHERE post.fecha::text like '2020-06-%';
  1 | usuario01@hotmail.com |  1 |          1 | Post 1:Esto es malo   | 2020-06-29
  5 | usuario05@yahoo.com   |  2 |          5 | Post 2:Esto es malo   | 2020-06-20
  6 | usuario06@hotmail.com | 10 |          6 | Post 10:Esto es bueno | 2020-06-02
  7 | usuario07@yahoo.com   | 15 |          7 | Post 15:Esto es malo  | 2020-06-17