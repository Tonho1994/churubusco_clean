--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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
/*
ALTER TABLE ONLY churubuscoclean.transacciones_costo DROP CONSTRAINT transaccionescosto_transacciones_fk;
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
ALTER TABLE ONLY churubuscoclean.posts DROP CONSTRAINT posts_user_id_foreign;
ALTER TABLE ONLY churubuscoclean.clientes DROP CONSTRAINT personas_transacciones_fk;
ALTER TABLE ONLY churubuscoclean.paginas_secciones DROP CONSTRAINT paginassecciones_secciones_fk;
ALTER TABLE ONLY churubuscoclean.paginas_secciones DROP CONSTRAINT paginassecciones_paginas_fk;
ALTER TABLE ONLY churubuscoclean.detalle_transacciones DROP CONSTRAINT detalletransacciones_transacciones_fk;
ALTER TABLE ONLY churubuscoclean.role_has_permissions DROP CONSTRAINT churubuscoclean_role_has_permissions_role_id_foreign;
ALTER TABLE ONLY churubuscoclean.role_has_permissions DROP CONSTRAINT churubuscoclean_role_has_permissions_permission_id_foreign;
ALTER TABLE ONLY churubuscoclean.model_has_roles DROP CONSTRAINT churubuscoclean_model_has_roles_role_id_foreign;
ALTER TABLE ONLY churubuscoclean.model_has_permissions DROP CONSTRAINT churubuscoclean_model_has_permissions_permission_id_foreign;
ALTER TABLE ONLY churubuscoclean.caracteristicas_productos_servicios DROP CONSTRAINT caracteristicasproductosservicios_productosservicios_fk;
DROP INDEX churubuscoclean.personal_access_tokens_tokenable_type_tokenable_id_index;
DROP INDEX churubuscoclean.model_has_roles_model_id_model_type_index;
DROP INDEX churubuscoclean.model_has_permissions_model_id_model_type_index;
ALTER TABLE ONLY churubuscoclean.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY churubuscoclean.users DROP CONSTRAINT users_email_unique;
ALTER TABLE ONLY churubuscoclean.transacciones DROP CONSTRAINT transacciones_pk;
ALTER TABLE ONLY churubuscoclean.tipos_vehiculo DROP CONSTRAINT tiposvehiculo_pk;
ALTER TABLE ONLY churubuscoclean.tipos_pelaje DROP CONSTRAINT tipos_pelaje_pk;
ALTER TABLE ONLY churubuscoclean.tipos_colchon DROP CONSTRAINT tipos_colchon_pk;
ALTER TABLE ONLY churubuscoclean.tamanios DROP CONSTRAINT tamanios_pk;
ALTER TABLE ONLY churubuscoclean.secciones DROP CONSTRAINT secciones_pk;
ALTER TABLE ONLY churubuscoclean.roles DROP CONSTRAINT roles_pkey;
ALTER TABLE ONLY churubuscoclean.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo DROP CONSTRAINT productosserviciostiposvehiculo_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_colchon DROP CONSTRAINT productosserviciostipos_colchon_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tamanios DROP CONSTRAINT productosserviciostamanios_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales DROP CONSTRAINT productosserviciosmateriales_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_costo DROP CONSTRAINT productosservicioscosto_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios DROP CONSTRAINT productosservicios_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_pelaje DROP CONSTRAINT productos_servicios_tipos_pelaje_pkey;
ALTER TABLE ONLY churubuscoclean.posts DROP CONSTRAINT posts_pkey;
ALTER TABLE ONLY churubuscoclean.clientes DROP CONSTRAINT personas_pk;
ALTER TABLE ONLY churubuscoclean.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
ALTER TABLE ONLY churubuscoclean.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
ALTER TABLE ONLY churubuscoclean.permissions DROP CONSTRAINT permissions_pkey;
ALTER TABLE ONLY churubuscoclean.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
ALTER TABLE ONLY churubuscoclean.paginas_secciones DROP CONSTRAINT paginassecciones_pk;
ALTER TABLE ONLY churubuscoclean.paginas DROP CONSTRAINT paginas_pk;
ALTER TABLE ONLY churubuscoclean.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
ALTER TABLE ONLY churubuscoclean.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
ALTER TABLE ONLY churubuscoclean.migrations DROP CONSTRAINT migrations_pkey;
ALTER TABLE ONLY churubuscoclean.materiales DROP CONSTRAINT materiales_pk;
ALTER TABLE ONLY churubuscoclean.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
ALTER TABLE ONLY churubuscoclean.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
ALTER TABLE ONLY churubuscoclean.detalle_transacciones DROP CONSTRAINT detalletransacciones_pk;
ALTER TABLE ONLY churubuscoclean.transacciones_costo DROP CONSTRAINT costotransacciones_pk;
ALTER TABLE ONLY churubuscoclean.roles DROP CONSTRAINT churubuscoclean_roles_name_guard_name_unique;
ALTER TABLE ONLY churubuscoclean.permissions DROP CONSTRAINT churubuscoclean_permissions_name_guard_name_unique;
ALTER TABLE ONLY churubuscoclean.caracteristicas_productos_servicios DROP CONSTRAINT caracteristicasproductosservicios_pk;
ALTER TABLE churubuscoclean.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE churubuscoclean.transacciones ALTER COLUMN transaccion_id DROP DEFAULT;
ALTER TABLE churubuscoclean.tipos_vehiculo ALTER COLUMN tipo_vehiculo_id DROP DEFAULT;
ALTER TABLE churubuscoclean.tipos_pelaje ALTER COLUMN tipo_pelaje_id DROP DEFAULT;
ALTER TABLE churubuscoclean.tipos_colchon ALTER COLUMN tipo_colchon_id DROP DEFAULT;
ALTER TABLE churubuscoclean.tamanios ALTER COLUMN tamanio_id DROP DEFAULT;
ALTER TABLE churubuscoclean.roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE churubuscoclean.productos_servicios ALTER COLUMN producto_servicio_id DROP DEFAULT;
ALTER TABLE churubuscoclean.posts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE churubuscoclean.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE churubuscoclean.permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE churubuscoclean.migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE churubuscoclean.materiales ALTER COLUMN material_id DROP DEFAULT;
ALTER TABLE churubuscoclean.failed_jobs ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE churubuscoclean.users_id_seq;
DROP TABLE churubuscoclean.users;
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
DROP SEQUENCE churubuscoclean.roles_id_seq;
DROP TABLE churubuscoclean.roles;
DROP TABLE churubuscoclean.role_has_permissions;
DROP TABLE churubuscoclean.productos_servicios_tipos_vehiculo;
DROP TABLE churubuscoclean.productos_servicios_tipos_pelaje;
DROP TABLE churubuscoclean.productos_servicios_tipos_colchon;
DROP TABLE churubuscoclean.productos_servicios_tamanios;
DROP SEQUENCE churubuscoclean.productos_servicios_producto_servicio_id_seq;
DROP TABLE churubuscoclean.productos_servicios_materiales;
DROP TABLE churubuscoclean.productos_servicios_costo;
DROP TABLE churubuscoclean.productos_servicios;
DROP SEQUENCE churubuscoclean.posts_id_seq;
DROP TABLE churubuscoclean.posts;
DROP SEQUENCE churubuscoclean.personal_access_tokens_id_seq;
DROP TABLE churubuscoclean.personal_access_tokens;
DROP SEQUENCE churubuscoclean.permissions_id_seq;
DROP TABLE churubuscoclean.permissions;
DROP TABLE churubuscoclean.password_reset_tokens;
DROP TABLE churubuscoclean.paginas_secciones;
DROP TABLE churubuscoclean.paginas;
DROP TABLE churubuscoclean.model_has_roles;
DROP TABLE churubuscoclean.model_has_permissions;
DROP SEQUENCE churubuscoclean.migrations_id_seq;
DROP TABLE churubuscoclean.migrations;
DROP SEQUENCE churubuscoclean.materiales_material_id_seq;
DROP TABLE churubuscoclean.materiales;
DROP SEQUENCE churubuscoclean.failed_jobs_id_seq;
DROP TABLE churubuscoclean.failed_jobs;
DROP TABLE churubuscoclean.detalle_transacciones;
DROP TABLE churubuscoclean.clientes;
DROP TABLE churubuscoclean.caracteristicas_productos_servicios;
DROP SCHEMA churubuscoclean; */
--
-- Name: churubuscoclean; Type: SCHEMA; Schema: -; Owner: admin_churubuscoclean
--

/* CREATE SCHEMA churubuscoclean;


ALTER SCHEMA churubuscoclean OWNER TO admin_churubuscoclean; */

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: caracteristicas_productos_servicios; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.caracteristicas_productos_servicios (
    producto_servicio_id integer NOT NULL,
    atributo character varying(50) NOT NULL,
    campo_tabla character varying(100) NOT NULL,
    catalogo character varying(60)
);


ALTER TABLE churubuscoclean.caracteristicas_productos_servicios OWNER TO admin_churubuscoclean;

--
-- Name: clientes; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
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


ALTER TABLE churubuscoclean.clientes OWNER TO admin_churubuscoclean;

--
-- Name: detalle_transacciones; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
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


ALTER TABLE churubuscoclean.detalle_transacciones OWNER TO admin_churubuscoclean;

--
-- Name: failed_jobs; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE churubuscoclean.failed_jobs OWNER TO admin_churubuscoclean;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.failed_jobs_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.failed_jobs_id_seq OWNED BY churubuscoclean.failed_jobs.id;


--
-- Name: materiales; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.materiales (
    material_id smallint NOT NULL,
    descripcion character varying(200)
);


ALTER TABLE churubuscoclean.materiales OWNER TO admin_churubuscoclean;

--
-- Name: materiales_material_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.materiales_material_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.materiales_material_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: materiales_material_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.materiales_material_id_seq OWNED BY churubuscoclean.materiales.material_id;


--
-- Name: migrations; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

/* CREATE TABLE churubuscoclean.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE churubuscoclean.migrations OWNER TO admin_churubuscoclean; */

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

/* CREATE SEQUENCE churubuscoclean.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.migrations_id_seq OWNER TO admin_churubuscoclean; */

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

/* ALTER SEQUENCE churubuscoclean.migrations_id_seq OWNED BY churubuscoclean.migrations.id; */


--
-- Name: model_has_permissions; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE churubuscoclean.model_has_permissions OWNER TO admin_churubuscoclean;

--
-- Name: model_has_roles; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE churubuscoclean.model_has_roles OWNER TO admin_churubuscoclean;

--
-- Name: paginas; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.paginas (
    pagina_id character varying(50) NOT NULL,
    descripcion_pagina character varying(200)
);


ALTER TABLE churubuscoclean.paginas OWNER TO admin_churubuscoclean;

--
-- Name: paginas_secciones; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.paginas_secciones (
    pagina_id character varying(50) NOT NULL,
    seccion_id character varying(50) NOT NULL,
    contenido character varying(1000)
);


ALTER TABLE churubuscoclean.paginas_secciones OWNER TO admin_churubuscoclean;

--
-- Name: password_reset_tokens; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE churubuscoclean.password_reset_tokens OWNER TO admin_churubuscoclean;

--
-- Name: permissions; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE churubuscoclean.permissions OWNER TO admin_churubuscoclean;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.permissions_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.permissions_id_seq OWNED BY churubuscoclean.permissions.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE churubuscoclean.personal_access_tokens OWNER TO admin_churubuscoclean;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.personal_access_tokens_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.personal_access_tokens_id_seq OWNED BY churubuscoclean.personal_access_tokens.id;


--
-- Name: posts; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.posts (
    id bigint NOT NULL,
    titulo character varying(100) NOT NULL,
    subtitulo character varying(180) NOT NULL,
    body text NOT NULL,
    img character varying(100),
    url character varying(200),
    user_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE churubuscoclean.posts OWNER TO admin_churubuscoclean;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.posts_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.posts_id_seq OWNED BY churubuscoclean.posts.id;


--
-- Name: productos_servicios; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.productos_servicios (
    producto_servicio_id integer NOT NULL,
    padre_producto_servicio_id integer,
    nombre character varying(200) NOT NULL
);


ALTER TABLE churubuscoclean.productos_servicios OWNER TO admin_churubuscoclean;

--
-- Name: productos_servicios_costo; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.productos_servicios_costo (
    producto_servicio_id numeric NOT NULL,
    costo numeric(12,2) NOT NULL
);


ALTER TABLE churubuscoclean.productos_servicios_costo OWNER TO admin_churubuscoclean;

--
-- Name: productos_servicios_materiales; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.productos_servicios_materiales (
    producto_servicio_id integer NOT NULL,
    material_id smallint NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


ALTER TABLE churubuscoclean.productos_servicios_materiales OWNER TO admin_churubuscoclean;

--
-- Name: productos_servicios_producto_servicio_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.productos_servicios_producto_servicio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.productos_servicios_producto_servicio_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: productos_servicios_producto_servicio_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.productos_servicios_producto_servicio_id_seq OWNED BY churubuscoclean.productos_servicios.producto_servicio_id;


--
-- Name: productos_servicios_tamanios; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.productos_servicios_tamanios (
    producto_servicio_id integer NOT NULL,
    tamanio_id smallint NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


ALTER TABLE churubuscoclean.productos_servicios_tamanios OWNER TO admin_churubuscoclean;

--
-- Name: productos_servicios_tipos_colchon; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.productos_servicios_tipos_colchon (
    producto_servicio_id integer NOT NULL,
    tipo_colchon_id smallint NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


ALTER TABLE churubuscoclean.productos_servicios_tipos_colchon OWNER TO admin_churubuscoclean;

--
-- Name: productos_servicios_tipos_pelaje; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.productos_servicios_tipos_pelaje (
    producto_servicio_id integer NOT NULL,
    tipo_pelaje_id smallint NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


ALTER TABLE churubuscoclean.productos_servicios_tipos_pelaje OWNER TO admin_churubuscoclean;

--
-- Name: productos_servicios_tipos_vehiculo; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.productos_servicios_tipos_vehiculo (
    producto_servicio_id integer NOT NULL,
    tipo_vehiculo_id smallint NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


ALTER TABLE churubuscoclean.productos_servicios_tipos_vehiculo OWNER TO admin_churubuscoclean;

--
-- Name: role_has_permissions; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE churubuscoclean.role_has_permissions OWNER TO admin_churubuscoclean;

--
-- Name: roles; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE churubuscoclean.roles OWNER TO admin_churubuscoclean;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.roles_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.roles_id_seq OWNED BY churubuscoclean.roles.id;


--
-- Name: secciones; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.secciones (
    seccion_id character varying(50) NOT NULL,
    descripcion_seccion character varying(200)
);


ALTER TABLE churubuscoclean.secciones OWNER TO admin_churubuscoclean;

--
-- Name: tamanios; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.tamanios (
    tamanio_id smallint NOT NULL,
    descripcion character varying(200)
);


ALTER TABLE churubuscoclean.tamanios OWNER TO admin_churubuscoclean;

--
-- Name: tamanios_tamanio_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.tamanios_tamanio_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.tamanios_tamanio_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: tamanios_tamanio_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.tamanios_tamanio_id_seq OWNED BY churubuscoclean.tamanios.tamanio_id;


--
-- Name: tipos_colchon; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.tipos_colchon (
    tipo_colchon_id smallint NOT NULL,
    descripcion character varying(200)
);


ALTER TABLE churubuscoclean.tipos_colchon OWNER TO admin_churubuscoclean;

--
-- Name: tipos_colchon_tipo_colchon_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.tipos_colchon_tipo_colchon_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.tipos_colchon_tipo_colchon_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: tipos_colchon_tipo_colchon_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.tipos_colchon_tipo_colchon_id_seq OWNED BY churubuscoclean.tipos_colchon.tipo_colchon_id;


--
-- Name: tipos_pelaje; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.tipos_pelaje (
    tipo_pelaje_id smallint NOT NULL,
    descripcion character varying(200)
);


ALTER TABLE churubuscoclean.tipos_pelaje OWNER TO admin_churubuscoclean;

--
-- Name: tipos_pelaje_tipo_pelaje_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.tipos_pelaje_tipo_pelaje_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.tipos_pelaje_tipo_pelaje_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: tipos_pelaje_tipo_pelaje_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.tipos_pelaje_tipo_pelaje_id_seq OWNED BY churubuscoclean.tipos_pelaje.tipo_pelaje_id;


--
-- Name: tipos_vehiculo; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.tipos_vehiculo (
    tipo_vehiculo_id smallint NOT NULL,
    descripcion character varying(200)
);


ALTER TABLE churubuscoclean.tipos_vehiculo OWNER TO admin_churubuscoclean;

--
-- Name: tipos_vehiculo_tipo_vehiculo_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.tipos_vehiculo_tipo_vehiculo_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.tipos_vehiculo_tipo_vehiculo_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: tipos_vehiculo_tipo_vehiculo_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.tipos_vehiculo_tipo_vehiculo_id_seq OWNED BY churubuscoclean.tipos_vehiculo.tipo_vehiculo_id;


--
-- Name: transacciones; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.transacciones (
    transaccion_id integer NOT NULL,
    fecha_alta timestamp without time zone NOT NULL
);


ALTER TABLE churubuscoclean.transacciones OWNER TO admin_churubuscoclean;

--
-- Name: transacciones_costo; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.transacciones_costo (
    transaccion_id integer NOT NULL,
    producto_servicio_id integer NOT NULL,
    consecutivo_productos_servicios numeric(4,0) NOT NULL,
    total_productos numeric(6,0),
    impuesto numeric(12,2),
    total_costo numeric(12,2)
);


ALTER TABLE churubuscoclean.transacciones_costo OWNER TO admin_churubuscoclean;

--
-- Name: transacciones_transaccion_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.transacciones_transaccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.transacciones_transaccion_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: transacciones_transaccion_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.transacciones_transaccion_id_seq OWNED BY churubuscoclean.transacciones.transaccion_id;


--
-- Name: users; Type: TABLE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE TABLE churubuscoclean.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    puesto character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE churubuscoclean.users OWNER TO admin_churubuscoclean;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE SEQUENCE churubuscoclean.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE churubuscoclean.users_id_seq OWNER TO admin_churubuscoclean;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER SEQUENCE churubuscoclean.users_id_seq OWNED BY churubuscoclean.users.id;


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.failed_jobs ALTER COLUMN id SET DEFAULT nextval('churubuscoclean.failed_jobs_id_seq'::regclass);


--
-- Name: materiales material_id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.materiales ALTER COLUMN material_id SET DEFAULT nextval('churubuscoclean.materiales_material_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

/* ALTER TABLE ONLY churubuscoclean.migrations ALTER COLUMN id SET DEFAULT nextval('churubuscoclean.migrations_id_seq'::regclass); */


--
-- Name: permissions id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.permissions ALTER COLUMN id SET DEFAULT nextval('churubuscoclean.permissions_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('churubuscoclean.personal_access_tokens_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.posts ALTER COLUMN id SET DEFAULT nextval('churubuscoclean.posts_id_seq'::regclass);


--
-- Name: productos_servicios producto_servicio_id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios ALTER COLUMN producto_servicio_id SET DEFAULT nextval('churubuscoclean.productos_servicios_producto_servicio_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.roles ALTER COLUMN id SET DEFAULT nextval('churubuscoclean.roles_id_seq'::regclass);


--
-- Name: tamanios tamanio_id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.tamanios ALTER COLUMN tamanio_id SET DEFAULT nextval('churubuscoclean.tamanios_tamanio_id_seq'::regclass);


--
-- Name: tipos_colchon tipo_colchon_id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.tipos_colchon ALTER COLUMN tipo_colchon_id SET DEFAULT nextval('churubuscoclean.tipos_colchon_tipo_colchon_id_seq'::regclass);


--
-- Name: tipos_pelaje tipo_pelaje_id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.tipos_pelaje ALTER COLUMN tipo_pelaje_id SET DEFAULT nextval('churubuscoclean.tipos_pelaje_tipo_pelaje_id_seq'::regclass);


--
-- Name: tipos_vehiculo tipo_vehiculo_id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.tipos_vehiculo ALTER COLUMN tipo_vehiculo_id SET DEFAULT nextval('churubuscoclean.tipos_vehiculo_tipo_vehiculo_id_seq'::regclass);


--
-- Name: transacciones transaccion_id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.transacciones ALTER COLUMN transaccion_id SET DEFAULT nextval('churubuscoclean.transacciones_transaccion_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.users ALTER COLUMN id SET DEFAULT nextval('churubuscoclean.users_id_seq'::regclass);


--
-- Data for Name: caracteristicas_productos_servicios; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (1, 'total_asientos', 'campo002', NULL);
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (3, 'material_id', 'campo001', 'materiales');
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (3, 'total_asientos', 'campo002', NULL);
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (3, 'total_cojines_decorativos', 'campo003', NULL);
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (3, 'total_cojines_desmontables', 'campo004', NULL);
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (4, 'material_id', 'campo001', 'materiales');
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (2, 'material_id', 'campo001', 'materiales');
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (5, 'material_id', 'campo001', 'materiales');
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (1, 'material_id', 'campo003', 'materiales');
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (1, 'tipo_vehiculo_id', 'campo001', 'tipos_vehiculo');
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (22, 'tipo_pelaje_id', 'campo001', 'tipos_pelaje');
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (22, 'largo', 'campo002', NULL);
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (22, 'ancho', 'campo003', NULL);
INSERT INTO churubuscoclean.caracteristicas_productos_servicios VALUES (22, 'otros_servicios', 'campo004', NULL);


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: detalle_transacciones; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.detalle_transacciones VALUES (1, 1, 1, '1', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO churubuscoclean.detalle_transacciones VALUES (1, 22, 2, '1', '50', '80', 'Ninguno', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: materiales; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.materiales VALUES (1, 'Tela');
INSERT INTO churubuscoclean.materiales VALUES (2, 'Piel');


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--
/*
INSERT INTO churubuscoclean.migrations VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO churubuscoclean.migrations VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO churubuscoclean.migrations VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO churubuscoclean.migrations VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO churubuscoclean.migrations VALUES (5, '2023_11_07_034146_create_posts_table', 1);
INSERT INTO churubuscoclean.migrations VALUES (6, '2023_11_29_020231_create_schema', 1);
INSERT INTO churubuscoclean.migrations VALUES (7, '2023_11_30_062255_create_permission_tables', 1);
 */

--
-- Data for Name: model_has_permissions; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: model_has_roles; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: paginas; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: paginas_secciones; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: permissions; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: posts; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.posts VALUES (1, 'Los distintos acabados de un lavado de Piel', 'No creeras lo que no sabías', '<p>Este es el cuerpo de una publicacion de la pagina <b>CHURUBUSCO CLEAN.</b></p>', NULL, 'http://churubuscoclean.com/posts/1', 1, '2024-01-09 23:11:01', '2024-01-09 23:11:01');
INSERT INTO churubuscoclean.posts VALUES (2, 'Imagina lo que puedes hacer con jabon comun', '¡La marca es mexicana!', '<p>Este es el cuerpo de una publicacion de la pagina <b>CHURUBUSCO CLEAN.</b></p>', NULL, 'http://churubuscoclean.com/posts/2', 1, '2024-01-09 23:11:01', '2024-01-09 23:11:01');
INSERT INTO churubuscoclean.posts VALUES (3, 'Como lavar el interior de mi carro', 'Sin necesidad de una karcher', '<p>Este es el cuerpo de una publicacion de la pagina <b>CHURUBUSCO CLEAN.</b></p>', NULL, 'http://churubuscoclean.com/posts/3', 1, '2024-01-09 23:11:01', '2024-01-09 23:11:01');
INSERT INTO churubuscoclean.posts VALUES (4, '¿Babeas mucho? Los mejores metodos para lavar una almohada', 'Y los cubrealmohadas tambien', '<p>Este es el cuerpo de una publicacion de la pagina <b>CHURUBUSCO CLEAN.</b></p>', NULL, 'http://churubuscoclean.com/posts/4', 1, '2024-01-09 23:11:01', '2024-01-09 23:11:01');
INSERT INTO churubuscoclean.posts VALUES (5, 'Mi perrito deja mucho pelo ¿Qué hago?', 'Funciona para gatos también', '<p>Este es el cuerpo de una publicacion de la pagina <b>CHURUBUSCO CLEAN.</b></p>', NULL, 'http://churubuscoclean.com/posts/5', 1, '2024-01-09 23:11:01', '2024-01-09 23:11:01');


--
-- Data for Name: productos_servicios; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
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
-- Data for Name: productos_servicios_costo; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: productos_servicios_materiales; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.productos_servicios_materiales VALUES (2, 1, true);
INSERT INTO churubuscoclean.productos_servicios_materiales VALUES (2, 2, true);
INSERT INTO churubuscoclean.productos_servicios_materiales VALUES (4, 1, true);
INSERT INTO churubuscoclean.productos_servicios_materiales VALUES (4, 2, true);


--
-- Data for Name: productos_servicios_tamanios; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.productos_servicios_tamanios VALUES (12, 1, true);
INSERT INTO churubuscoclean.productos_servicios_tamanios VALUES (12, 2, true);
INSERT INTO churubuscoclean.productos_servicios_tamanios VALUES (12, 3, true);
INSERT INTO churubuscoclean.productos_servicios_tamanios VALUES (12, 4, true);


--
-- Data for Name: productos_servicios_tipos_colchon; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.productos_servicios_tipos_colchon VALUES (13, 1, true);
INSERT INTO churubuscoclean.productos_servicios_tipos_colchon VALUES (13, 2, true);


--
-- Data for Name: productos_servicios_tipos_pelaje; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.productos_servicios_tipos_pelaje VALUES (19, 1, true);
INSERT INTO churubuscoclean.productos_servicios_tipos_pelaje VALUES (19, 2, true);
INSERT INTO churubuscoclean.productos_servicios_tipos_pelaje VALUES (23, 1, true);
INSERT INTO churubuscoclean.productos_servicios_tipos_pelaje VALUES (23, 2, true);


--
-- Data for Name: productos_servicios_tipos_vehiculo; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.productos_servicios_tipos_vehiculo VALUES (30, 1, true);
INSERT INTO churubuscoclean.productos_servicios_tipos_vehiculo VALUES (30, 2, true);


--
-- Data for Name: role_has_permissions; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: roles; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: secciones; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--



--
-- Data for Name: tamanios; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.tamanios VALUES (1, 'Individual');
INSERT INTO churubuscoclean.tamanios VALUES (2, 'Matrimonial');
INSERT INTO churubuscoclean.tamanios VALUES (3, 'Queen');
INSERT INTO churubuscoclean.tamanios VALUES (4, 'King');


--
-- Data for Name: tipos_colchon; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.tipos_colchon VALUES (1, 'UNA VISTA');
INSERT INTO churubuscoclean.tipos_colchon VALUES (2, 'DOBLE VISTA');


--
-- Data for Name: tipos_pelaje; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.tipos_pelaje VALUES (1, 'Corto');
INSERT INTO churubuscoclean.tipos_pelaje VALUES (2, 'Largo');


--
-- Data for Name: tipos_vehiculo; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.tipos_vehiculo VALUES (1, 'Auto');
INSERT INTO churubuscoclean.tipos_vehiculo VALUES (2, 'Camioneta');


--
-- Data for Name: transacciones; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.transacciones VALUES (1, '2024-01-09 23:41:56.736661');


--
-- Data for Name: transacciones_costo; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.transacciones_costo VALUES (1, 1, 1, 1, 16.00, 100.00);
INSERT INTO churubuscoclean.transacciones_costo VALUES (1, 22, 2, 2, 8.00, 50.00);


--
-- Data for Name: users; Type: TABLE DATA; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

INSERT INTO churubuscoclean.users VALUES (1, 'jcdominguez', 'Juan Carlos Hérnandez Domínguez', 'Jefe de publicidad en Churubsuco Clean', 'test@example.com', '2024-01-09 23:11:01', '$2y$12$t4B/wK5Ia1e5wR5ptCUD4ewpztdN8oadTv6rkgUyuk5xAQaxd6qsK', 'fOD0zMJbvg', '2024-01-09 23:11:01', '2024-01-09 23:11:01');


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.failed_jobs_id_seq', 1, false);


--
-- Name: materiales_material_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.materiales_material_id_seq', 2, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

/* SELECT pg_catalog.setval('churubuscoclean.migrations_id_seq', 7, true); */


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.permissions_id_seq', 1, false);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.personal_access_tokens_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.posts_id_seq', 5, true);


--
-- Name: productos_servicios_producto_servicio_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.productos_servicios_producto_servicio_id_seq', 34, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.roles_id_seq', 1, false);


--
-- Name: tamanios_tamanio_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.tamanios_tamanio_id_seq', 4, true);


--
-- Name: tipos_colchon_tipo_colchon_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.tipos_colchon_tipo_colchon_id_seq', 2, true);


--
-- Name: tipos_pelaje_tipo_pelaje_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.tipos_pelaje_tipo_pelaje_id_seq', 2, true);


--
-- Name: tipos_vehiculo_tipo_vehiculo_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.tipos_vehiculo_tipo_vehiculo_id_seq', 2, true);


--
-- Name: transacciones_transaccion_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.transacciones_transaccion_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

SELECT pg_catalog.setval('churubuscoclean.users_id_seq', 1, true);


--
-- Name: caracteristicas_productos_servicios caracteristicasproductosservicios_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.caracteristicas_productos_servicios
    ADD CONSTRAINT caracteristicasproductosservicios_pk PRIMARY KEY (producto_servicio_id, atributo);


--
-- Name: permissions churubuscoclean_permissions_name_guard_name_unique; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.permissions
    ADD CONSTRAINT churubuscoclean_permissions_name_guard_name_unique UNIQUE (name, guard_name);


--
-- Name: roles churubuscoclean_roles_name_guard_name_unique; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.roles
    ADD CONSTRAINT churubuscoclean_roles_name_guard_name_unique UNIQUE (name, guard_name);


--
-- Name: transacciones_costo costotransacciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.transacciones_costo
    ADD CONSTRAINT costotransacciones_pk PRIMARY KEY (transaccion_id, producto_servicio_id, consecutivo_productos_servicios);


--
-- Name: detalle_transacciones detalletransacciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.detalle_transacciones
    ADD CONSTRAINT detalletransacciones_pk PRIMARY KEY (transaccion_id, producto_servicio_id, consecutivo_productos_servicios);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: materiales materiales_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.materiales
    ADD CONSTRAINT materiales_pk PRIMARY KEY (material_id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--
/*
ALTER TABLE ONLY churubuscoclean.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id); */


--
-- Name: model_has_permissions model_has_permissions_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);


--
-- Name: model_has_roles model_has_roles_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);


--
-- Name: paginas paginas_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.paginas
    ADD CONSTRAINT paginas_pk PRIMARY KEY (pagina_id);


--
-- Name: paginas_secciones paginassecciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.paginas_secciones
    ADD CONSTRAINT paginassecciones_pk PRIMARY KEY (pagina_id, seccion_id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: clientes personas_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.clientes
    ADD CONSTRAINT personas_pk PRIMARY KEY (transaccion_id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: productos_servicios_tipos_pelaje productos_servicios_tipos_pelaje_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_pelaje
    ADD CONSTRAINT productos_servicios_tipos_pelaje_pkey PRIMARY KEY (producto_servicio_id, tipo_pelaje_id);


--
-- Name: productos_servicios productosservicios_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios
    ADD CONSTRAINT productosservicios_pk PRIMARY KEY (producto_servicio_id);


--
-- Name: productos_servicios_costo productosservicioscosto_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_costo
    ADD CONSTRAINT productosservicioscosto_pk PRIMARY KEY (producto_servicio_id);


--
-- Name: productos_servicios_materiales productosserviciosmateriales_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales
    ADD CONSTRAINT productosserviciosmateriales_pk PRIMARY KEY (producto_servicio_id, material_id);


--
-- Name: productos_servicios_tamanios productosserviciostamanios_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tamanios
    ADD CONSTRAINT productosserviciostamanios_pk PRIMARY KEY (producto_servicio_id, tamanio_id);


--
-- Name: productos_servicios_tipos_colchon productosserviciostipos_colchon_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_colchon
    ADD CONSTRAINT productosserviciostipos_colchon_pk PRIMARY KEY (producto_servicio_id, tipo_colchon_id);


--
-- Name: productos_servicios_tipos_vehiculo productosserviciostiposvehiculo_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo
    ADD CONSTRAINT productosserviciostiposvehiculo_pk PRIMARY KEY (producto_servicio_id, tipo_vehiculo_id);


--
-- Name: role_has_permissions role_has_permissions_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: secciones secciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.secciones
    ADD CONSTRAINT secciones_pk PRIMARY KEY (seccion_id);


--
-- Name: tamanios tamanios_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.tamanios
    ADD CONSTRAINT tamanios_pk PRIMARY KEY (tamanio_id);


--
-- Name: tipos_colchon tipos_colchon_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.tipos_colchon
    ADD CONSTRAINT tipos_colchon_pk PRIMARY KEY (tipo_colchon_id);


--
-- Name: tipos_pelaje tipos_pelaje_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.tipos_pelaje
    ADD CONSTRAINT tipos_pelaje_pk PRIMARY KEY (tipo_pelaje_id);


--
-- Name: tipos_vehiculo tiposvehiculo_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.tipos_vehiculo
    ADD CONSTRAINT tiposvehiculo_pk PRIMARY KEY (tipo_vehiculo_id);


--
-- Name: transacciones transacciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.transacciones
    ADD CONSTRAINT transacciones_pk PRIMARY KEY (transaccion_id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: model_has_permissions_model_id_model_type_index; Type: INDEX; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE INDEX model_has_permissions_model_id_model_type_index ON churubuscoclean.model_has_permissions USING btree (model_id, model_type);


--
-- Name: model_has_roles_model_id_model_type_index; Type: INDEX; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE INDEX model_has_roles_model_id_model_type_index ON churubuscoclean.model_has_roles USING btree (model_id, model_type);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON churubuscoclean.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: caracteristicas_productos_servicios caracteristicasproductosservicios_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.caracteristicas_productos_servicios
    ADD CONSTRAINT caracteristicasproductosservicios_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: model_has_permissions churubuscoclean_model_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.model_has_permissions
    ADD CONSTRAINT churubuscoclean_model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES churubuscoclean.permissions(id) ON DELETE CASCADE;


--
-- Name: model_has_roles churubuscoclean_model_has_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.model_has_roles
    ADD CONSTRAINT churubuscoclean_model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES churubuscoclean.roles(id) ON DELETE CASCADE;


--
-- Name: role_has_permissions churubuscoclean_role_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.role_has_permissions
    ADD CONSTRAINT churubuscoclean_role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES churubuscoclean.permissions(id) ON DELETE CASCADE;


--
-- Name: role_has_permissions churubuscoclean_role_has_permissions_role_id_foreign; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.role_has_permissions
    ADD CONSTRAINT churubuscoclean_role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES churubuscoclean.roles(id) ON DELETE CASCADE;


--
-- Name: detalle_transacciones detalletransacciones_transacciones_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.detalle_transacciones
    ADD CONSTRAINT detalletransacciones_transacciones_fk FOREIGN KEY (transaccion_id, producto_servicio_id, consecutivo_productos_servicios) REFERENCES churubuscoclean.transacciones_costo(transaccion_id, producto_servicio_id, consecutivo_productos_servicios);


--
-- Name: paginas_secciones paginassecciones_paginas_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.paginas_secciones
    ADD CONSTRAINT paginassecciones_paginas_fk FOREIGN KEY (pagina_id) REFERENCES churubuscoclean.paginas(pagina_id);


--
-- Name: paginas_secciones paginassecciones_secciones_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.paginas_secciones
    ADD CONSTRAINT paginassecciones_secciones_fk FOREIGN KEY (seccion_id) REFERENCES churubuscoclean.secciones(seccion_id);


--
-- Name: clientes personas_transacciones_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.clientes
    ADD CONSTRAINT personas_transacciones_fk FOREIGN KEY (transaccion_id) REFERENCES churubuscoclean.transacciones(transaccion_id);


--
-- Name: posts posts_user_id_foreign; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.posts
    ADD CONSTRAINT posts_user_id_foreign FOREIGN KEY (user_id) REFERENCES churubuscoclean.users(id);


--
-- Name: productos_servicios productosservicios_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios
    ADD CONSTRAINT productosservicios_productosservicios_fk FOREIGN KEY (padre_producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: productos_servicios_materiales productosserviciosmateriales_materiales_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales
    ADD CONSTRAINT productosserviciosmateriales_materiales_fk FOREIGN KEY (material_id) REFERENCES churubuscoclean.materiales(material_id);


--
-- Name: productos_servicios_materiales productosserviciosmateriales_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales
    ADD CONSTRAINT productosserviciosmateriales_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: productos_servicios_tamanios productosserviciostamanios_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tamanios
    ADD CONSTRAINT productosserviciostamanios_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: productos_servicios_tamanios productosserviciostamanios_tamanios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tamanios
    ADD CONSTRAINT productosserviciostamanios_tamanios_fk FOREIGN KEY (tamanio_id) REFERENCES churubuscoclean.tamanios(tamanio_id);


--
-- Name: productos_servicios_tipos_colchon productosserviciostipos_colchon_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_colchon
    ADD CONSTRAINT productosserviciostipos_colchon_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: productos_servicios_tipos_colchon productosserviciostipos_colchon_tipos_colchon_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_colchon
    ADD CONSTRAINT productosserviciostipos_colchon_tipos_colchon_fk FOREIGN KEY (tipo_colchon_id) REFERENCES churubuscoclean.tipos_colchon(tipo_colchon_id);


--
-- Name: productos_servicios_tipos_pelaje productosserviciostipos_pelaje_tipos_pelaje_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_pelaje
    ADD CONSTRAINT productosserviciostipos_pelaje_tipos_pelaje_fk FOREIGN KEY (tipo_pelaje_id) REFERENCES churubuscoclean.tipos_pelaje(tipo_pelaje_id);


--
-- Name: productos_servicios_tipos_vehiculo productosserviciostiposvehiculo_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo
    ADD CONSTRAINT productosserviciostiposvehiculo_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: productos_servicios_tipos_vehiculo productosserviciostiposvehiculo_tiposvehiculo_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo
    ADD CONSTRAINT productosserviciostiposvehiculo_tiposvehiculo_fk FOREIGN KEY (tipo_vehiculo_id) REFERENCES churubuscoclean.tipos_vehiculo(tipo_vehiculo_id);


--
-- Name: productos_servicios_tipos_pelaje productosserviciostpelaje_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_pelaje
    ADD CONSTRAINT productosserviciostpelaje_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: transacciones_costo transacciones_productosservicios_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.transacciones_costo
    ADD CONSTRAINT transacciones_productosservicios_fk FOREIGN KEY (producto_servicio_id) REFERENCES churubuscoclean.productos_servicios(producto_servicio_id);


--
-- Name: transacciones_costo transaccionescosto_transacciones_fk; Type: FK CONSTRAINT; Schema: churubuscoclean; Owner: admin_churubuscoclean
--

ALTER TABLE ONLY churubuscoclean.transacciones_costo
    ADD CONSTRAINT transaccionescosto_transacciones_fk FOREIGN KEY (transaccion_id) REFERENCES churubuscoclean.transacciones(transaccion_id);


--
-- PostgreSQL database dump complete
--

