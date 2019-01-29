--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: person2content; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person2content (
    person_id integer,
    film_id integer,
    person_type character varying(128) NOT NULL
);


ALTER TABLE public.person2content OWNER TO postgres;

--
-- Data for Name: person2content; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person2content (person_id, film_id, person_type) FROM stdin;
1	1	режиссер
2	2	режиссер
3	3	режиссер
4	4	режиссер
5	5	режиссер
\.


--
-- PostgreSQL database dump complete
--

