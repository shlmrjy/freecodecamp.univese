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
-- Name: dim_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dim_galaxy (
    dim_galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.dim_galaxy OWNER TO freecodecamp;

--
-- Name: dim_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dim_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dim_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: dim_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dim_galaxy_id_seq OWNED BY public.dim_galaxy.dim_galaxy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    number_of_star integer,
    spiral boolean,
    mass character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    potentialy_habitable character varying,
    size numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    number_of_moon numeric,
    primary_element text,
    potentialy_habitable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    number_of_planet integer,
    galaxy_id integer,
    mass_star character varying
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dim_galaxy dim_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dim_galaxy ALTER COLUMN dim_galaxy_id SET DEFAULT nextval('public.dim_galaxy_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dim_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dim_galaxy VALUES (1, 'Milk_Way', NULL);
INSERT INTO public.dim_galaxy VALUES (2, 'NG', NULL);
INSERT INTO public.dim_galaxy VALUES (3, 'WL', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkey_Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Needle_Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Wolf_LundMark', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Peekaboo_Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'PinWheel_Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sculptor_Galaxy', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon_Earth', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'M_Mars', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'M1_R100', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'M2_R100', 3, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'M1_R101', 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'M_T200', 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'M2_T200', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'M_T201', 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'M_B300', 7, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'M_L600', 8, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'W700', 9, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'M_GN003', 10, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'M_GN103', 11, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'M_GN303', 12, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'M_LW004', 13, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'M_GP005', 14, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'M2_GP005', 14, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'M_GP505', 15, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'M_GiP007', 16, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'M_Gs001', 17, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'R100', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'R101', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'T200', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'T201', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'B300', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'L600', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (9, 'W700', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (10, 'GN003', NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (11, 'GN103', NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (12, 'GN303', NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (13, 'LW004', NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (14, 'GP005', NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (15, 'GP505', NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (16, 'GiP007', NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (17, 'Gs001', NULL, NULL, NULL, 14);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Rigil', NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'Toliman', NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'Bernard', NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'Luhman', NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'Wise', NULL, 1, NULL);
INSERT INTO public.star VALUES (7, 'NG300', NULL, 2, NULL);
INSERT INTO public.star VALUES (8, 'NG301', NULL, 2, NULL);
INSERT INTO public.star VALUES (9, 'NG303', NULL, 2, NULL);
INSERT INTO public.star VALUES (10, 'WL400', NULL, 3, NULL);
INSERT INTO public.star VALUES (11, 'PG500', NULL, 4, NULL);
INSERT INTO public.star VALUES (12, 'PG505', NULL, 4, NULL);
INSERT INTO public.star VALUES (13, 'PiG700', NULL, 5, NULL);
INSERT INTO public.star VALUES (14, 'SG100', NULL, 6, NULL);
INSERT INTO public.star VALUES (1, 'Sun', NULL, 1, NULL);


--
-- Name: dim_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dim_galaxy_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: dim_galaxy dim_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dim_galaxy
    ADD CONSTRAINT dim_galaxy_pkey PRIMARY KEY (dim_galaxy_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_column UNIQUE (name);


--
-- Name: dim_galaxy unique_column_dim; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dim_galaxy
    ADD CONSTRAINT unique_column_dim UNIQUE (name);


--
-- Name: moon unique_column_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_column_moon UNIQUE (name);


--
-- Name: planet unique_column_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_column_planet UNIQUE (name);


--
-- Name: star unique_column_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_column_star UNIQUE (name);


--
-- Name: star foreign_key_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT foreign_key_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon foreign_key_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT foreign_key_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet foreign_key_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT foreign_key_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

