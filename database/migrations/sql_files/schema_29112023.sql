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
/*
ALTER TABLE ONLY churubuscoclean.transacciones_costo DROP CONSTRAINT transaccionescosto_transacciones_fk;
ALTER TABLE ONLY churubuscoclean.transacciones_costo DROP CONSTRAINT transacciones_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo DROP CONSTRAINT productosserviciostiposvehiculo_tiposvehiculo_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo DROP CONSTRAINT productosserviciostiposvehiculo_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales DROP CONSTRAINT productosserviciosmateriales_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales DROP CONSTRAINT productosserviciosmateriales_materiales_fk;
ALTER TABLE ONLY churubuscoclean.productos_servicios DROP CONSTRAINT productosservicios_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.detalle_transacciones DROP CONSTRAINT detalletransacciones_transacciones_fk;
ALTER TABLE ONLY churubuscoclean.caracteristicas_productos_servicios DROP CONSTRAINT caracteristicasproductosservicios_productosservicios_fk;
ALTER TABLE ONLY churubuscoclean.transacciones DROP CONSTRAINT transacciones_pk;
ALTER TABLE ONLY churubuscoclean.tipos_vehiculo DROP CONSTRAINT tiposvehiculo_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo DROP CONSTRAINT productosserviciostiposvehiculo_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios_materiales DROP CONSTRAINT productosserviciosmateriales_pk;
ALTER TABLE ONLY churubuscoclean.productos_servicios DROP CONSTRAINT productosservicios_pk;
ALTER TABLE ONLY churubuscoclean.paginas_secciones DROP CONSTRAINT paginassecciones_pk;
ALTER TABLE ONLY churubuscoclean.materiales DROP CONSTRAINT materiales_pk;
ALTER TABLE ONLY churubuscoclean.detalle_transacciones DROP CONSTRAINT detalletransacciones_pk;
ALTER TABLE ONLY churubuscoclean.transacciones_costo DROP CONSTRAINT costotransacciones_pk;
ALTER TABLE ONLY churubuscoclean.caracteristicas_productos_servicios DROP CONSTRAINT caracteristicasproductosservicios_pk;
DROP TABLE churubuscoclean.transacciones_costo;
DROP TABLE churubuscoclean.transacciones;
DROP TABLE churubuscoclean.tipos_vehiculo;
DROP TABLE churubuscoclean.productos_servicios_tipos_vehiculo;
DROP TABLE churubuscoclean.productos_servicios_materiales;
DROP TABLE churubuscoclean.productos_servicios;
DROP TABLE churubuscoclean.paginas_secciones;
DROP TABLE churubuscoclean.materiales;
DROP TABLE churubuscoclean.detalle_transacciones;
DROP TABLE churubuscoclean.caracteristicas_productos_servicios; */
--DROP SCHEMA churubuscoclean;
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
    producto_servicio_id character varying(50) NOT NULL,
    atributo character varying(50) NOT NULL,
    campo_tabla character varying(100) NOT NULL
);


--
-- Name: detalle_transacciones; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.detalle_transacciones (
    transaccion_id numeric(6,0) NOT NULL,
    producto_servicio_id character varying(50) NOT NULL,
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
    material_id numeric NOT NULL,
    descripcion_material character varying(200)
);


--
-- Name: paginas_secciones; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.paginas_secciones (
    pagina_seccion_id numeric NOT NULL,
    descripcion_pagina character varying(200) NOT NULL,
    descripcion_seccion character varying(200) NOT NULL,
    contenido character varying(1000) NOT NULL
);


--
-- Name: productos_servicios; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.productos_servicios (
    producto_servicio_id character varying(50) NOT NULL,
    padre_producto_servicio_id character varying(50),
    costo numeric(12,2) NOT NULL,
    nombre character varying(200) NOT NULL
);


--
-- Name: productos_servicios_materiales; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.productos_servicios_materiales (
    producto_servicio_id character varying(50) NOT NULL,
    material_id numeric NOT NULL,
    habilitado_boolean boolean DEFAULT true
);


--
-- Name: productos_servicios_tipos_vehiculo; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.productos_servicios_tipos_vehiculo (
    producto_servicio_id character varying(50) NOT NULL,
    tipo_vehiculo_id numeric NOT NULL,
    habilitado_boolean boolean DEFAULT true NOT NULL
);


--
-- Name: tipos_vehiculo; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.tipos_vehiculo (
    tipo_vehiculo_id numeric NOT NULL,
    descripcion_tipo_vehiculo character varying(200)
);


--
-- Name: transacciones; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.transacciones (
    transaccion_id numeric(6,0) NOT NULL,
    fecha_alta date NOT NULL
);


--
-- Name: transacciones_costo; Type: TABLE; Schema: churubuscoclean; Owner: -
--

CREATE TABLE churubuscoclean.transacciones_costo (
    transaccion_id numeric(6,0) NOT NULL,
    producto_servicio_id character varying(50) NOT NULL,
    consecutivo_productos_servicios numeric(4,0) NOT NULL,
    total_productos numeric(6,0),
    impuesto numeric(12,2),
    costo_distancia numeric(12,2),
    total_costo numeric(12,2)
);


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
-- Name: paginas_secciones paginassecciones_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.paginas_secciones
    ADD CONSTRAINT paginassecciones_pk PRIMARY KEY (pagina_seccion_id);


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
-- Name: productos_servicios_tipos_vehiculo productosserviciostiposvehiculo_pk; Type: CONSTRAINT; Schema: churubuscoclean; Owner: -
--

ALTER TABLE ONLY churubuscoclean.productos_servicios_tipos_vehiculo
    ADD CONSTRAINT productosserviciostiposvehiculo_pk PRIMARY KEY (producto_servicio_id, tipo_vehiculo_id);


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

