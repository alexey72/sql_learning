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
-- Name: films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films (
    films_id integer NOT NULL,
    title character varying(256) NOT NULL,
    country character varying(256) NOT NULL,
    box_office integer,
    release_year timestamp without time zone
);


ALTER TABLE public.films OWNER TO postgres;

--
-- Name: films_films_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.films_films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_films_id_seq OWNER TO postgres;

--
-- Name: films_films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.films_films_id_seq OWNED BY public.films.films_id;


--
-- Name: films films_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films ALTER COLUMN films_id SET DEFAULT nextval('public.films_films_id_seq'::regclass);


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films (films_id, title, country, box_office, release_year) FROM stdin;
1	Побег из Шоушинка	USA	59841469	1994-01-01 00:00:00
2	Зеленая миля	USA	286801374	1999-01-01 00:00:00
3	Форест Гамп	USA	677386686	1994-01-01 00:00:00
4	Список Шиндлера	USA	321265768	1993-01-01 00:00:00
5	1+1	Франция	426588510	2011-01-01 00:00:00
\.


--
-- Name: films_films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.films_films_id_seq', 1, false);


--
-- Name: films films_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (films_id);


--
-- PostgreSQL database dump complete
--

