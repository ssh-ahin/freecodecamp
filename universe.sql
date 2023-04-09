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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    radius integer,
    luminosity integer,
    mass integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_pkey_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_pkey_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_pkey_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_pkey_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_pkey_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    circumference numeric,
    has_surface_water boolean,
    has_life boolean NOT NULL,
    planet_id integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_pkey_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_pkey_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_pkey_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_pkey_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_pkey_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: pebble; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.pebble (
    pebble_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer,
    name character varying(30)
);


ALTER TABLE public.pebble OWNER TO freecodecamp;

--
-- Name: pebble_pebble_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.pebble_pebble_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pebble_pebble_id_seq OWNER TO freecodecamp;

--
-- Name: pebble_pebble_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.pebble_pebble_id_seq OWNED BY public.pebble.pebble_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    mass integer,
    luminosity integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_pkey_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_pkey_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_pkey_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_pkey_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_pkey_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    mass integer,
    luminosity integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_pkey_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_pkey_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_pkey_star_seq OWNER TO freecodecamp;

--
-- Name: star_pkey_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_pkey_star_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_pkey_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_pkey_moon_seq'::regclass);


--
-- Name: pebble pebble_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pebble ALTER COLUMN pebble_id SET DEFAULT nextval('public.pebble_pebble_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_pkey_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_pkey_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Milky Way', 2, 999999, 152, 999999);
INSERT INTO public.galaxy VALUES ('Andromeda', 3, 999999, 189, 999999);
INSERT INTO public.galaxy VALUES ('Chocolate Way', 4, 99999, 55, 999999);
INSERT INTO public.galaxy VALUES ('Milky Chocolate Delicious Way', 5, 99999, 555, 99999);
INSERT INTO public.galaxy VALUES ('Deliciously Yummy Way', 6, 999999, 33, 999999);
INSERT INTO public.galaxy VALUES ('Big Galaxy', 7, 999999999, 999999999, 99999999);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, false, false, 1, 'N/A');
INSERT INTO public.moon VALUES (2, 'Moon', 1, false, false, 1, 'N/A');
INSERT INTO public.moon VALUES (3, 'Moon1', 1, false, false, 1, 'N/A');
INSERT INTO public.moon VALUES (4, 'Moon2', 1, false, false, 2, 'N/A');
INSERT INTO public.moon VALUES (5, 'Moon3', 1, false, false, 5, 'N/A');
INSERT INTO public.moon VALUES (6, 'Moon4', 1, false, false, 1, 'N/A');
INSERT INTO public.moon VALUES (7, 'Moon 5', 1, false, false, 3, 'N/A');
INSERT INTO public.moon VALUES (8, 'Moon6', 8, false, false, 3, 'N/A');
INSERT INTO public.moon VALUES (9, 'Moon 7', 2, false, false, 1, 'N/A');
INSERT INTO public.moon VALUES (10, 'Moon6', 5, false, false, 2, 'N/A');
INSERT INTO public.moon VALUES (11, 'Moon99', 2, false, false, 5, 'N/A');
INSERT INTO public.moon VALUES (12, 'Moon11', 3, false, false, 1, 'N/A');
INSERT INTO public.moon VALUES (13, 'Moon1992', 4, false, false, 1, 'N/A');
INSERT INTO public.moon VALUES (14, 'Moon333434', 2, false, false, 4, 'N/A');
INSERT INTO public.moon VALUES (15, 'Moon982', 6, false, false, 4, 'N/A');
INSERT INTO public.moon VALUES (16, 'Moon34343', 3, false, false, 4, 'N/A');
INSERT INTO public.moon VALUES (17, 'Moon534534', 2, false, false, 2, 'N/A');
INSERT INTO public.moon VALUES (18, 'Moon3e4r3434322', 2, false, false, 1, 'N/A');
INSERT INTO public.moon VALUES (19, 'Moon MOON 99', 2, false, false, 5, 'N/A');
INSERT INTO public.moon VALUES (20, 'MOON MOON', 3, true, false, 1, 'N/A');


--
-- Data for Name: pebble; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.pebble VALUES (4, 1, 1, 'Pebblerino');
INSERT INTO public.pebble VALUES (5, 2, 4, 'Spot');
INSERT INTO public.pebble VALUES (6, 1, 1, 'Pebbelarius');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 3, 0);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 3, 4);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 3, 4);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, 1, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 1, 4, 4);
INSERT INTO public.planet VALUES (6, 'Jupiter', 1, 3, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 2, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 4, 4);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 2, 2);
INSERT INTO public.planet VALUES (10, 'Chocolate Planeet', 3, 1, 1);
INSERT INTO public.planet VALUES (11, 'Strawberry Planet', 3, 2, 4);
INSERT INTO public.planet VALUES (12, 'Delicious Planet', 4, 1, 1);
INSERT INTO public.planet VALUES (13, 'Good Planet', 6, 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 40, 50);
INSERT INTO public.star VALUES (2, 'Cepharius A', 4, 99, 888);
INSERT INTO public.star VALUES (3, 'Good Star', 3, 44, 3);
INSERT INTO public.star VALUES (4, 'Fun Star', 5, 2, 1);
INSERT INTO public.star VALUES (5, 'Excellent Star', 6, 55, 55);
INSERT INTO public.star VALUES (6, 'Fancy Star', 2, 77, 777);
INSERT INTO public.star VALUES (7, 'Orddinary Star', 3, 33, 33);


--
-- Name: galaxy_pkey_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_pkey_galaxy_seq', 7, true);


--
-- Name: moon_pkey_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_pkey_moon_seq', 20, true);


--
-- Name: pebble_pebble_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.pebble_pebble_id_seq', 6, true);


--
-- Name: planet_pkey_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_pkey_planet_seq', 13, true);


--
-- Name: star_pkey_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_pkey_star_seq', 7, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: pebble pebble_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pebble
    ADD CONSTRAINT pebble_id UNIQUE (pebble_id);


--
-- Name: pebble pebble_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pebble
    ADD CONSTRAINT pebble_pkey PRIMARY KEY (pebble_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_fk_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: pebble pebble_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pebble
    ADD CONSTRAINT pebble_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: pebble pebble_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pebble
    ADD CONSTRAINT pebble_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


