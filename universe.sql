--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    description text,
    paracompletar character varying(255)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    has_water boolean,
    is_satellite boolean,
    planet_id integer,
    unique_code character varying(255)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance_from_earth numeric,
    star_id integer,
    has_life boolean,
    na character varying(255)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(255) NOT NULL,
    outracoluna character varying(255),
    outra character varying(255),
    outrasas character varying(255),
    fois character varying(255)
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_id_seq OWNER TO freecodecamp;

--
-- Name: test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_id_seq OWNED BY public.test.test_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Tndromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Nnoty', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'TTTriangulum', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Galaxy 4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Galaxy 5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Galaxy 6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Tndromeda', NULL, NULL, NULL, 'Moon1');
INSERT INTO public.moon VALUES (2, 'Milky Nnoty', NULL, NULL, NULL, 'Moon2');
INSERT INTO public.moon VALUES (3, 'TTTriangulum', NULL, NULL, NULL, 'Moon3');
INSERT INTO public.moon VALUES (404, 'Galaxy 1', NULL, NULL, NULL, 'Moon404');
INSERT INTO public.moon VALUES (405, 'Galaxy 2', NULL, NULL, NULL, 'Moon405');
INSERT INTO public.moon VALUES (406, 'Galaxy 3', NULL, NULL, NULL, 'Moon406');
INSERT INTO public.moon VALUES (407, 'Galaxy 4', NULL, NULL, NULL, 'Moon407');
INSERT INTO public.moon VALUES (408, 'Galaxy 5', NULL, NULL, NULL, 'Moon408');
INSERT INTO public.moon VALUES (409, 'Galaxy 6', NULL, NULL, NULL, 'Moon409');
INSERT INTO public.moon VALUES (410, 'Galaxy 1', NULL, NULL, NULL, 'Moon410');
INSERT INTO public.moon VALUES (411, 'Galaxy 2', NULL, NULL, NULL, 'Moon411');
INSERT INTO public.moon VALUES (412, 'Galaxy 3', NULL, NULL, NULL, 'Moon412');
INSERT INTO public.moon VALUES (413, 'Galaxy 4', NULL, NULL, NULL, 'Moon413');
INSERT INTO public.moon VALUES (414, 'Galaxy 5', NULL, NULL, NULL, 'Moon414');
INSERT INTO public.moon VALUES (415, 'Galaxy 6', NULL, NULL, NULL, 'Moon415');
INSERT INTO public.moon VALUES (416, 'Galaxy 1', NULL, NULL, NULL, 'Moon416');
INSERT INTO public.moon VALUES (417, 'Galaxy 2', NULL, NULL, NULL, 'Moon417');
INSERT INTO public.moon VALUES (418, 'Galaxy 3', NULL, NULL, NULL, 'Moon418');
INSERT INTO public.moon VALUES (419, 'Galaxy 4', NULL, NULL, NULL, 'Moon419');
INSERT INTO public.moon VALUES (420, 'Galaxy 5', NULL, NULL, NULL, 'Moon420');
INSERT INTO public.moon VALUES (421, 'Galaxy 6', NULL, NULL, NULL, 'Moon421');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tndromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Milky Nnoty', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'TTTriangulum', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (436, 'Galaxy 1', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (437, 'Galaxy 2', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (438, 'Galaxy 3', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (439, 'Galaxy 4', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (440, 'Galaxy 5', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (441, 'Galaxy 6', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (442, 'Galaxy 1', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (443, 'Galaxy 2', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (444, 'Galaxy 3', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (445, 'Galaxy 4', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (446, 'Galaxy 5', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (447, 'Galaxy 6', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'Tndromeda', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Milky Nnoty', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'TTTriangulum', NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Star 1', 10, true, 1);
INSERT INTO public.star VALUES (8, 'Star 2', 8, false, 2);
INSERT INTO public.star VALUES (9, 'Star 3', 12, false, 1);
INSERT INTO public.star VALUES (10, 'Star 4', 9, true, 3);
INSERT INTO public.star VALUES (11, 'Star 5', 11, false, 2);
INSERT INTO public.star VALUES (12, 'Star 6', 7, true, 3);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'Galaxy 1', NULL, NULL, NULL, NULL);
INSERT INTO public.test VALUES (2, 'Galaxy 2', NULL, NULL, NULL, NULL);
INSERT INTO public.test VALUES (3, 'Galaxy 3', NULL, NULL, NULL, NULL);
INSERT INTO public.test VALUES (4, 'Galaxy 4', NULL, NULL, NULL, NULL);
INSERT INTO public.test VALUES (5, 'Galaxy 5', NULL, NULL, NULL, NULL);
INSERT INTO public.test VALUES (6, 'Galaxy 6', NULL, NULL, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 9, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 421, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 447, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 12, true);


--
-- Name: test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_code_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_code_unique UNIQUE (unique_code);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planeyy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planeyy_name_unique UNIQUE (na);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: test test_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_name_unique UNIQUE (name);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

