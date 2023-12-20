--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5 (Debian 15.5-0+deb12u1)
-- Dumped by pg_dump version 15.5 (Debian 15.5-0+deb12u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

/* ALTER TABLE ONLY churubuscoclean.transacciones_costo DROP CONSTRAINT transaccionescosto_transacciones_fk;
ALTER TABLE ONLY churubuscoclean.transacciones_costo DROP CONSTRAINT transacciones_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_pelaje DROP CONSTRAINT productosserviciostpelaje_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo DROP CONSTRAINT productosserviciostiposvehiculo_tiposvehiculo_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo DROP CONSTRAINT productosserviciostiposvehiculo_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_pelaje DROP CONSTRAINT productosserviciostipos_pelaje_tipos_pelaje_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_colchon DROP CONSTRAINT productosserviciostipos_colchon_tipos_colchon_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_colchon DROP CONSTRAINT productosserviciostipos_colchon_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tamanios DROP CONSTRAINT productosserviciostamanios_tamanios_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tamanios DROP CONSTRAINT productosserviciostamanios_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales DROP CONSTRAINT productosserviciosmateriales_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales DROP CONSTRAINT productosserviciosmateriales_materiales_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios DROP CONSTRAINT productosservicios_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.clientes DROP CONSTRAINT personas_transacciones_fk;
ALTER TABLE ONLY churubuscoclean.paginas_secciones DROP CONSTRAINT paginassecciones_secciones_fk;
ALTER TABLE ONLY churubuscoclean.paginas_secciones DROP CONSTRAINT paginassecciones_paginas_fk;
ALTER TABLE ONLY churubuscoclean.detalle_transacciones DROP CONSTRAINT detalletransacciones_transacciones_fk;
ALTER TABLE ONLY churubuscoclean.caracteristicas_productos_servicios DROP CONSTRAINT caracteristicasproductosservicios_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.transacciones DROP CONSTRAINT transacciones_pk;
ALTER TABLE ONLY churubuscoclean.tipos_vehiculo DROP CONSTRAINT tiposvehiculo_pk;
ALTER TABLE ONLY churubuscoclean.tipos_pelaje DROP CONSTRAINT tipos_pelaje_pk;
ALTER TABLE ONLY churubuscoclean.tipos_colchon DROP CONSTRAINT tipos_colchon_pk;
ALTER TABLE ONLY churubuscoclean.tamanios DROP CONSTRAINT tamanios_pk;
ALTER TABLE ONLY churubuscoclean.secciones DROP CONSTRAINT secciones_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo DROP CONSTRAINT productosserviciostiposvehiculo_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_colchon DROP CONSTRAINT productosserviciostipos_colchon_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tamanios DROP CONSTRAINT productosserviciostamanios_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales DROP CONSTRAINT productosserviciosmateriales_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios DROP CONSTRAINT productosservicios_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_pelaje DROP CONSTRAINT productos_servicios_tipos_pelaje_pkey;
ALTER TABLE ONLY churubuscoclean.clientes DROP CONSTRAINT personas_pk;
ALTER TABLE ONLY churubuscoclean.paginas_secciones DROP CONSTRAINT paginassecciones_pk;
ALTER TABLE ONLY churubuscoclean.paginas DROP CONSTRAINT paginas_pk;
ALTER TABLE ONLY churubuscoclean.materiales DROP CONSTRAINT materiales_pk;
ALTER TABLE ONLY churubuscoclean.detalle_transacciones DROP CONSTRAINT detalletransacciones_pk;
ALTER TABLE ONLY churubuscoclean.transacciones_costo DROP CONSTRAINT costotransacciones_pk;
ALTER TABLE ONLY churubuscoclean.caracteristicas_productos_servicios DROP CONSTRAINT caracteristicasproductosservicios_pk;
ALTER TABLE churubuscoclean.transacciones ALTER COLUMN transaccion_id DROP DEFAULT;
ALTER TABLE churubuscoclean.tipos_vehiculo ALTER COLUMN tipo_vehiculo_id DROP DEFAULT;
ALTER TABLE churubuscoclean.tipos_pelaje ALTER COLUMN tipo_pelaje_id DROP DEFAULT;
ALTER TABLE churubuscoclean.tipos_colchon ALTER COLUMN tipo_colchon_id DROP DEFAULT;
ALTER TABLE churubuscoclean.tamanios ALTER COLUMN tamanio_id DROP DEFAULT;
ALTER TABLE churubuscoclean.productos_servicios ALTER COLUMN producto_servicio_id DROP DEFAULT;
ALTER TABLE churubuscoclean.materiales ALTER COLUMN material_id DROP DEFAULT;
DROP SEQUENCE churubuscoclean.transacciones_transaccion_id_seq;
DROP TABLE churubuscoclean.transacciones_costo;
DROP TABLE churubuscoclean.transacciones;
DROP SEQUENCE churubuscoclean.tipos_vehiculo_tipo_vehiculo_id_seq;
DROP TABLE churubuscoclean.tipos_vehiculo;
DROP SEQUENCE churubuscoclean.tipos_pelaje_tipo_pelaje_id_seq;
DROP TABLE churubuscoclean.tipos_pelaje;
DROP SEQUENCE churubuscoclean.tipos_colchon_tipo_colchon_id_seq;
DROP TABLE churubuscoclean.tipos_colchon;
DROP SEQUENCE churubuscoclean.tamanios_tamanio_id_seq;
DROP TABLE churubuscoclean.tamanios;
DROP TABLE churubuscoclean.secciones;
DROP TABLE churubuscoclean.productos_servicios_tipos_vehiculo;
DROP TABLE churubuscoclean.productos_servicios_tipos_pelaje;
DROP TABLE churubuscoclean.productos_servicios_tipos_colchon;
DROP TABLE churubuscoclean.productos_servicios_tamanios;
DROP SEQUENCE churubuscoclean.productos_servicios_producto_servicio_id_seq;
DROP TABLE churubuscoclean.productos_servicios_materiales;
DROP TABLE churubuscoclean.productos_servicios;
DROP TABLE churubuscoclean.paginas_secciones;
DROP TABLE churubuscoclean.paginas;
DROP SEQUENCE churubuscoclean.materiales_material_id_seq;
DROP TABLE churubuscoclean.materiales;
DROP TABLE churubuscoclean.detalle_transacciones;
DROP TABLE churubuscoclean.clientes;
DROP TABLE churubuscoclean.caracteristicas_productos_servicios;
DROP SCHEMA churubuscoclean; */
--
-- Name: churubuscoclean; Type: SCHEMA; Schema: -; Owner: -
--

--CREATE SCHEMA churubuscoclean;


--SET default_tablespace = '';

--SET default_table_access_method = heap;

--
-- Name: caracteristicas_productos_servicios; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.caracteristicas_productos_servicios (
    producto_servicio_id integer NOT NULL,
    atributo character varying(50) NOT NULL,
    campo_tabla character varying(100) NOT NULL
);


--
-- Name: clientes; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.clientes (
    transaccion_id integer NOT NULL,
    correo_electronico character varying(100),
    telefono character varying(10),
    nombre character varying(50),
    apellido_paterno character varying(50),
    apellido_materno character varying(50),
    calle character varying(100),
    colonia character varying(50),
    municipio character varying(50),
    estado character varying(50),
    codigo_postal character varying(5)
);


--
-- Name: detalle_transacciones; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.detalle_transacciones (
    transaccion_id integer NOT NULL,
    producto_servicio_id integer NOT NULL,
    consecutivo_productos_servicios numeric(4,0) NOT NULL,
    campo001 character varying(50),
    campo002 character varying(50),
    campo003 character varying(50),
    campo004 character varying(50),
    campo005 character varying(50),
    campo006 character varying(50),
    campo007 character varying(50),
    campo008 character varying(50),
    campo009 character varying(50),
    campo010 character varying(50)
);


--
-- Name: materiales; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.materiales (
    material_id smallint NOT NULL,
    descripcion character varying(200)
);


--
-- Name: materiales_material_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: -
--

CREATE SEQUENCE churubuscoclean.materiales_material_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: materiales_material_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: -
--

ALTER SEQUENCE churubuscoclean.materiales_material_id_seq OWNED BY churubuscoclean.materiales.material_id;


--
-- Name: paginas; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.paginas (
    pagina_id character varying(50) NOT NULL,
    descripcion_pagina character varying(200)
);


--
-- Name: paginas_secciones; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.paginas_secciones (
    pagina_id character varying(50) NOT NULL,
    seccion_id character varying(50) NOT NULL,
    contenido character varying(1000)
);


--
-- Name: productos_servicios; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.productos_servicios (
    producto_servicio_id integer NOT NULL,
    padre_producto_servicio_id integer,
    nombre character varying(200) NOT NULL
);


--
-- Name: productos_servicios_materiales; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.productos_servicios_materiales (
    producto_servicio_id integer NOT NULL,
    material_id smallint NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


--
-- Name: productos_servicios_producto_servicio_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: -
--

CREATE SEQUENCE churubuscoclean.productos_servicios_producto_servicio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: productos_servicios_producto_servicio_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: -
--

ALTER SEQUENCE churubuscoclean.productos_servicios_producto_servicio_id_seq OWNED BY churubuscoclean.productos_servicios.producto_servicio_id;


--
-- Name: productos_servicios_tamanios; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.productos_servicios_tamanios (
    producto_servicio_id integer NOT NULL,
    tamanio_id smallint NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


--
-- Name: productos_servicios_tipos_colchon; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.productos_servicios_tipos_colchon (
    producto_servicio_id integer NOT NULL,
    tipo_colchon_id smallint NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


--
-- Name: productos_servicios_tipos_pelaje; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.productos_servicios_tipos_pelaje (
    producto_servicio_id integer NOT NULL,
    tipo_pelaje_id smallint NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


--
-- Name: productos_servicios_tipos_vehiculo; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.productos_servicios_tipos_vehiculo (
    producto_servicio_id integer NOT NULL,
    tipo_vehiculo_id smallint NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


--
-- Name: secciones; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.secciones (
    seccion_id character varying(50) NOT NULL,
    descripcion_seccion character varying(200)
);


--
-- Name: tamanios; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.tamanios (
    tamanio_id smallint NOT NULL,
    descripcion character varying(200)
);


--
-- Name: tamanios_tamanio_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: -
--

CREATE SEQUENCE churubuscoclean.tamanios_tamanio_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tamanios_tamanio_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: -
--

ALTER SEQUENCE churubuscoclean.tamanios_tamanio_id_seq OWNED BY churubuscoclean.tamanios.tamanio_id;


--
-- Name: tipos_colchon; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.tipos_colchon (
    tipo_colchon_id smallint NOT NULL,
    descripcion character varying(200)
);


--
-- Name: tipos_colchon_tipo_colchon_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: -
--

CREATE SEQUENCE churubuscoclean.tipos_colchon_tipo_colchon_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tipos_colchon_tipo_colchon_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: -
--

ALTER SEQUENCE churubuscoclean.tipos_colchon_tipo_colchon_id_seq OWNED BY churubuscoclean.tipos_colchon.tipo_colchon_id;


--
-- Name: tipos_pelaje; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.tipos_pelaje (
    tipo_pelaje_id smallint NOT NULL,
    descripcion character varying(200)
);


--
-- Name: tipos_pelaje_tipo_pelaje_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: -
--

CREATE SEQUENCE churubuscoclean.tipos_pelaje_tipo_pelaje_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tipos_pelaje_tipo_pelaje_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: -
--

ALTER SEQUENCE churubuscoclean.tipos_pelaje_tipo_pelaje_id_seq OWNED BY churubuscoclean.tipos_pelaje.tipo_pelaje_id;


--
-- Name: tipos_vehiculo; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.tipos_vehiculo (
    tipo_vehiculo_id smallint NOT NULL,
    descripcion character varying(200)
);


--
-- Name: tipos_vehiculo_tipo_vehiculo_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: -
--

CREATE SEQUENCE churubuscoclean.tipos_vehiculo_tipo_vehiculo_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tipos_vehiculo_tipo_vehiculo_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: -
--

ALTER SEQUENCE churubuscoclean.tipos_vehiculo_tipo_vehiculo_id_seq OWNED BY churubuscoclean.tipos_vehiculo.tipo_vehiculo_id;


--
-- Name: transacciones; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.transacciones (
    transaccion_id integer NOT NULL,
    fecha_alta timestamp without time zone NOT NULL
);


--
-- Name: transacciones_costo; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.transacciones_costo (
    transaccion_id integer NOT NULL,
    producto_servicio_id integer NOT NULL,
    consecutivo_productos_servicios numeric(4,0) NOT NULL,
    total_productos numeric(6,0),
    impuesto numeric(12,2),
    total_costo numeric(12,2)
);


--
-- Name: transacciones_transaccion_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: -
--

CREATE SEQUENCE churubuscoclean.transacciones_transaccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: transacciones_transaccion_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: -
--

ALTER SEQUENCE churubuscoclean.transacciones_transaccion_id_seq OWNED BY churubuscoclean.transacciones.transaccion_id;


--
-- Name: materiales material_id; Type: DEFAULT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.materiales ALTER COLUMN material_id SET DEFAULT nextval('churubuscoclean.materiales_material_id_seq'::regclass);


--
-- Name: productos_servicios producto_servicio_id; Type: DEFAULT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios ALTER COLUMN producto_servicio_id SET DEFAULT nextval('churubuscoclean.productos_servicios_producto_servicio_id_seq'::regclass);


--
-- Name: tamanios tamanio_id; Type: DEFAULT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.tamanios ALTER COLUMN tamanio_id SET DEFAULT nextval('churubuscoclean.tamanios_tamanio_id_seq'::regclass);


--
-- Name: tipos_colchon tipo_colchon_id; Type: DEFAULT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.tipos_colchon ALTER COLUMN tipo_colchon_id SET DEFAULT nextval('churubuscoclean.tipos_colchon_tipo_colchon_id_seq'::regclass);


--
-- Name: tipos_pelaje tipo_pelaje_id; Type: DEFAULT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.tipos_pelaje ALTER COLUMN tipo_pelaje_id SET DEFAULT nextval('churubuscoclean.tipos_pelaje_tipo_pelaje_id_seq'::regclass);


--
-- Name: tipos_vehiculo tipo_vehiculo_id; Type: DEFAULT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.tipos_vehiculo ALTER COLUMN tipo_vehiculo_id SET DEFAULT nextval('churubuscoclean.tipos_vehiculo_tipo_vehiculo_id_seq'::regclass);


--
-- Name: transacciones transaccion_id; Type: DEFAULT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.transacciones ALTER COLUMN transaccion_id SET DEFAULT nextval('churubuscoclean.transacciones_transaccion_id_seq'::regclass);


--
-- Data for Name: caracteristicas_productos_servicios; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (1, 'tipo_vehiculo_id', 'campo001');
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (2, 'material_id', 'campo002');


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--



--
-- Data for Name: detalle_transacciones; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--



--
-- Data for Name: materiales; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.materiales VALUES (1, 'Tela');
INSERT INTO churubuscoclean.materiales VALUES (2, 'Piel');


--
-- Data for Name: paginas; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--



--
-- Data for Name: paginas_secciones; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--



--
-- Data for Name: productos_servicios; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.productos_servicios VALUES (1, NULL, 'Automóvil');
INSERT INTO churubuscoclean.productos_servicios VALUES (3, NULL, 'Sala');
INSERT INTO churubuscoclean.productos_servicios VALUES (4, 3, 'Asiento');
INSERT INTO churubuscoclean.productos_servicios VALUES (9, NULL, 'Colchón');
INSERT INTO churubuscoclean.productos_servicios VALUES (6, 3, 'Cojín Decorativo');
INSERT INTO churubuscoclean.productos_servicios VALUES (5, 3, 'Cojín Desmontable');
INSERT INTO churubuscoclean.productos_servicios VALUES (7, NULL, 'Futón');
INSERT INTO churubuscoclean.productos_servicios VALUES (8, 7, 'Cojín Decorativo');
INSERT INTO churubuscoclean.productos_servicios VALUES (10, 9, 'Cabecera');
INSERT INTO churubuscoclean.productos_servicios VALUES (11, 9, 'Box Spring');
INSERT INTO churubuscoclean.productos_servicios VALUES (12, 9, 'Tamaño');
INSERT INTO churubuscoclean.productos_servicios VALUES (13, 9, 'Tipo Colchon');
INSERT INTO churubuscoclean.productos_servicios VALUES (18, NULL, 'Tapete');
INSERT INTO churubuscoclean.productos_servicios VALUES (19, 18, 'Tipo Pelaje');
INSERT INTO churubuscoclean.productos_servicios VALUES (20, 18, 'Largo');
INSERT INTO churubuscoclean.productos_servicios VALUES (22, NULL, 'Alfombra');
INSERT INTO churubuscoclean.productos_servicios VALUES (23, 22, 'Tipo Pelaje');
INSERT INTO churubuscoclean.productos_servicios VALUES (21, 18, 'Ancho');
INSERT INTO churubuscoclean.productos_servicios VALUES (24, 22, 'Largo');
INSERT INTO churubuscoclean.productos_servicios VALUES (25, 22, 'Ancho');
INSERT INTO churubuscoclean.productos_servicios VALUES (26, 22, 'Otros Servicios');
INSERT INTO churubuscoclean.productos_servicios VALUES (27, NULL, 'Silla');
INSERT INTO churubuscoclean.productos_servicios VALUES (29, 27, 'Respaldo');
INSERT INTO churubuscoclean.productos_servicios VALUES (2, 1, 'Asiento');
INSERT INTO churubuscoclean.productos_servicios VALUES (30, 1, 'Tipo Vehiculo');
INSERT INTO churubuscoclean.productos_servicios VALUES (31, NULL, 'Cama para Mascota');
INSERT INTO churubuscoclean.productos_servicios VALUES (32, NULL, 'Cojin');
INSERT INTO churubuscoclean.productos_servicios VALUES (33, NULL, 'Peluche');
INSERT INTO churubuscoclean.productos_servicios VALUES (34, NULL, 'Almohada');


--
-- Data for Name: productos_servicios_materiales; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.productos_servicios_materiales VALUES (2, 1, true);
INSERT INTO churubuscoclean.productos_servicios_materiales VALUES (2, 2, true);
INSERT INTO churubuscoclean.productos_servicios_materiales VALUES (4, 1, true);
INSERT INTO churubuscoclean.productos_servicios_materiales VALUES (4, 2, true);


--
-- Data for Name: productos_servicios_tamanios; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.productos_servicios_tamanios VALUES (12, 1, true);
INSERT INTO churubuscoclean.productos_servicios_tamanios VALUES (12, 2, true);
INSERT INTO churubuscoclean.productos_servicios_tamanios VALUES (12, 3, true);
INSERT INTO churubuscoclean.productos_servicios_tamanios VALUES (12, 4, true);


--
-- Data for Name: productos_servicios_tipos_colchon; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.productos_servicios_tipos_colchon VALUES (13, 1, true);
INSERT INTO churubuscoclean.productos_servicios_tipos_colchon VALUES (13, 2, true);


--
-- Data for Name: productos_servicios_tipos_pelaje; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.productos_servicios_tipos_pelaje VALUES (19, 1, true);
INSERT INTO churubuscoclean.productos_servicios_tipos_pelaje VALUES (19, 2, true);
INSERT INTO churubuscoclean.productos_servicios_tipos_pelaje VALUES (23, 1, true);
INSERT INTO churubuscoclean.productos_servicios_tipos_pelaje VALUES (23, 2, true);


--
-- Data for Name: productos_servicios_tipos_vehiculo; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.productos_servicios_tipos_vehiculo VALUES (30, 1, true);
INSERT INTO churubuscoclean.productos_servicios_tipos_vehiculo VALUES (30, 2, true);


--
-- Data for Name: secciones; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--



--
-- Data for Name: tamanios; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.tamanios VALUES (1, 'Individual');
INSERT INTO churubuscoclean.tamanios VALUES (2, 'Matrimonial');
INSERT INTO churubuscoclean.tamanios VALUES (3, 'Queen');
INSERT INTO churubuscoclean.tamanios VALUES (4, 'King');


--
-- Data for Name: tipos_colchon; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.tipos_colchon VALUES (1, 'UNA VISTA');
INSERT INTO churubuscoclean.tipos_colchon VALUES (2, 'DOBLE VISTA');


--
-- Data for Name: tipos_pelaje; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.tipos_pelaje VALUES (1, 'Corto');
INSERT INTO churubuscoclean.tipos_pelaje VALUES (2, 'Largo');


--
-- Data for Name: tipos_vehiculo; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--

INSERT INTO churubuscoclean.tipos_vehiculo VALUES (1, 'Auto');
INSERT INTO churubuscoclean.tipos_vehiculo VALUES (2, 'Camioneta');


--
-- Data for Name: transacciones; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--



--
-- Data for Name: transacciones_costo; Type: TABLE DATA; Schema: churubuscoclean; Owner: -
--



--
-- Name: materiales_material_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: -
--

SELECT pg_catalog.setval('churubuscoclean.materiales_material_id_seq', 2, true);


--
-- Name: productos_servicios_producto_servicio_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: -
--

SELECT pg_catalog.setval('churubuscoclean.productos_servicios_producto_servicio_id_seq', 34, true);


--
-- Name: tamanios_tamanio_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: -
--

SELECT pg_catalog.setval('churubuscoclean.tamanios_tamanio_id_seq', 4, true);


--
-- Name: tipos_colchon_tipo_colchon_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: -
--

SELECT pg_catalog.setval('churubuscoclean.tipos_colchon_tipo_colchon_id_seq', 2, true);


--
-- Name: tipos_pelaje_tipo_pelaje_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: -
--

SELECT pg_catalog.setval('churubuscoclean.tipos_pelaje_tipo_pelaje_id_seq', 2, true);


--
-- Name: tipos_vehiculo_tipo_vehiculo_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: -
--

SELECT pg_catalog.setval('churubuscoclean.tipos_vehiculo_tipo_vehiculo_id_seq', 2, true);


--
-- Name: transacciones_transaccion_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: -
--

SELECT pg_catalog.setval('churubuscoclean.transacciones_transaccion_id_seq', 1, false);


--
-- Name: caracteristicas_productos_servicios caracteristicasproductosservicios_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.caracteristicas_productos_servicios
    ADD CONSTRAINT caracteristicasproductosservicios_pk PRIMARY KEY (producto_servicio_id, atributo);


--
-- Name: transacciones_costo costotransacciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.transacciones_costo
    ADD CONSTRAINT costotransacciones_pk PRIMARY KEY (transaccion_id, producto_servicio_id, consecutivo_productos_servicios);


--
-- Name: detalle_transacciones detalletransacciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.detalle_transacciones
    ADD CONSTRAINT detalletransacciones_pk PRIMARY KEY (transaccion_id, producto_servicio_id, consecutivo_productos_servicios);


--
-- Name: materiales materiales_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.materiales
    ADD CONSTRAINT materiales_pk PRIMARY KEY (material_id);


--
-- Name: paginas paginas_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.paginas
    ADD CONSTRAINT paginas_pk PRIMARY KEY (pagina_id);


--
-- Name: paginas_secciones paginassecciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.paginas_secciones
    ADD CONSTRAINT paginassecciones_pk PRIMARY KEY (pagina_id, seccion_id);


--
-- Name: clientes personas_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.clientes
    ADD CONSTRAINT personas_pk PRIMARY KEY (transaccion_id);


--
-- Name: productos_servicios_tipos_pelaje productos_servicios_tipos_pelaje_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_pelaje
    ADD CONSTRAINT productos_servicios_tipos_pelaje_pkey PRIMARY KEY (producto_servicio_id, tipo_pelaje_id);


--
-- Name: productos_servicios productosservicios_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios
    ADD CONSTRAINT productosservicios_pk PRIMARY KEY (producto_servicio_id);


--
-- Name: productos_servicios_materiales productosserviciosmateriales_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales
    ADD CONSTRAINT productosserviciosmateriales_pk PRIMARY KEY (producto_servicio_id, material_id);


--
-- Name: productos_servicios_tamanios productosserviciostamanios_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tamanios
    ADD CONSTRAINT productosserviciostamanios_pk PRIMARY KEY (producto_servicio_id, tamanio_id);


--
-- Name: productos_servicios_tipos_colchon productosserviciostipos_colchon_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_colchon
    ADD CONSTRAINT productosserviciostipos_colchon_pk PRIMARY KEY (producto_servicio_id, tipo_colchon_id);


--
-- Name: productos_servicios_tipos_vehiculo productosserviciostiposvehiculo_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo
    ADD CONSTRAINT productosserviciostiposvehiculo_pk PRIMARY KEY (producto_servicio_id, tipo_vehiculo_id);


--
-- Name: secciones secciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.secciones
    ADD CONSTRAINT secciones_pk PRIMARY KEY (seccion_id);


--
-- Name: tamanios tamanios_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.tamanios
    ADD CONSTRAINT tamanios_pk PRIMARY KEY (tamanio_id);


--
-- Name: tipos_colchon tipos_colchon_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.tipos_colchon
    ADD CONSTRAINT tipos_colchon_pk PRIMARY KEY (tipo_colchon_id);


--
-- Name: tipos_pelaje tipos_pelaje_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.tipos_pelaje
    ADD CONSTRAINT tipos_pelaje_pk PRIMARY KEY (tipo_pelaje_id);


--
-- Name: tipos_vehiculo tiposvehiculo_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.tipos_vehiculo
    ADD CONSTRAINT tiposvehiculo_pk PRIMARY KEY (tipo_vehiculo_id);


--
-- Name: transacciones transacciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.transacciones
    ADD CONSTRAINT transacciones_pk PRIMARY KEY (transaccion_id);


--
-- Name: caracteristicas_productos_servicios caracteristicasproductosservicios_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.caracteristicas_productos_servicios
    ADD CONSTRAINT caracteristicasproductosservicios_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: detalle_transacciones detalletransacciones_transacciones_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.detalle_transacciones
    ADD CONSTRAINT detalletransacciones_transacciones_fk FOREIGN KEY (transaccion_id, producto_servicio_id, consecutivo_productos_servicios) REFERENCES churubuscoclean.transacciones_costo(transaccion_id, producto_servicio_id, consecutivo_productos_servicios);


--
-- Name: paginas_secciones paginassecciones_paginas_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.paginas_secciones
    ADD CONSTRAINT paginassecciones_paginas_fk FOREIGN KEY (pagina_id) REFERENCES churubuscoclean.paginas(pagina_id);


--
-- Name: paginas_secciones paginassecciones_secciones_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.paginas_secciones
    ADD CONSTRAINT paginassecciones_secciones_fk FOREIGN KEY (seccion_id) REFERENCES churubuscoclean.secciones(seccion_id);


--
-- Name: clientes personas_transacciones_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.clientes
    ADD CONSTRAINT personas_transacciones_fk FOREIGN KEY (transaccion_id) REFERENCES churubuscoclean.transacciones(transaccion_id);


--
-- Name: productos_servicios productosservicios_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios
    ADD CONSTRAINT productosservicios_productosservicios_fk FOREIGN KEY (padre_producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: productos_servicios_materiales productosserviciosmateriales_materiales_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales
    ADD CONSTRAINT productosserviciosmateriales_materiales_fk FOREIGN KEY (material_id) REFERENCES churubuscoclean.materiales(material_id);


--
-- Name: productos_servicios_materiales productosserviciosmateriales_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales
    ADD CONSTRAINT productosserviciosmateriales_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: productos_servicios_tamanios productosserviciostamanios_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tamanios
    ADD CONSTRAINT productosserviciostamanios_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: productos_servicios_tamanios productosserviciostamanios_tamanios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tamanios
    ADD CONSTRAINT productosserviciostamanios_tamanios_fk FOREIGN KEY (tamanio_id) REFERENCES churubuscoclean.tamanios(tamanio_id);


--
-- Name: productos_servicios_tipos_colchon productosserviciostipos_colchon_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_colchon
    ADD CONSTRAINT productosserviciostipos_colchon_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: productos_servicios_tipos_colchon productosserviciostipos_colchon_tipos_colchon_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_colchon
    ADD CONSTRAINT productosserviciostipos_colchon_tipos_colchon_fk FOREIGN KEY (tipo_colchon_id) REFERENCES churubuscoclean.tipos_colchon(tipo_colchon_id);


--
-- Name: productos_servicios_tipos_pelaje productosserviciostipos_pelaje_tipos_pelaje_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_pelaje
    ADD CONSTRAINT productosserviciostipos_pelaje_tipos_pelaje_fk FOREIGN KEY (tipo_pelaje_id) REFERENCES churubuscoclean.tipos_pelaje(tipo_pelaje_id);


--
-- Name: productos_servicios_tipos_vehiculo productosserviciostiposvehiculo_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo
    ADD CONSTRAINT productosserviciostiposvehiculo_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: productos_servicios_tipos_vehiculo productosserviciostiposvehiculo_tiposvehiculo_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo
    ADD CONSTRAINT productosserviciostiposvehiculo_tiposvehiculo_fk FOREIGN KEY (tipo_vehiculo_id) REFERENCES churubuscoclean.tipos_vehiculo(tipo_vehiculo_id);


--
-- Name: productos_servicios_tipos_pelaje productosserviciostpelaje_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_pelaje
    ADD CONSTRAINT productosserviciostpelaje_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: transacciones_costo transacciones_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.transacciones_costo
    ADD CONSTRAINT transacciones_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: transacciones_costo transaccionescosto_transacciones_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.transacciones_costo
    ADD CONSTRAINT transaccionescosto_transacciones_fk FOREIGN KEY (transaccion_id) REFERENCES churubuscoclean.transacciones(transaccion_id);


--
-- PostgreSQL database dump complete
--

