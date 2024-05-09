--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    living_planet_ratio numeric(4,0),
    name character varying(250),
    shape character varying(255)
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
    name character varying(250) NOT NULL,
    inhabited boolean,
    number_of_inhabitants integer,
    age integer,
    planet_id integer NOT NULL
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
    name character varying(250),
    inhabited boolean,
    number_of_inhabitants integer,
    star_id integer NOT NULL,
    age integer
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
    galaxy_id integer NOT NULL,
    name character varying(250),
    age integer,
    number_of_stars integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Bat comet', 6000000);
INSERT INTO public.comet VALUES (2, 'Fragment of Krypton', 60);
INSERT INTO public.comet VALUES (3, 'Another fragment of Krypton', 50);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A spiral galaxy', NULL, 'Milky way', NULL);
INSERT INTO public.galaxy VALUES (2, 'A square galaxy', NULL, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (3, 'A square galaxy', NULL, 'h12', NULL);
INSERT INTO public.galaxy VALUES (4, 'A square galaxy', NULL, 'h120232', NULL);
INSERT INTO public.galaxy VALUES (5, 'A square galaxy', NULL, 'h120232csxsa', NULL);
INSERT INTO public.galaxy VALUES (6, 'A spiral galaxy', NULL, 'The new Milky way', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The MOON', true, 5000000, 2002, 1);
INSERT INTO public.moon VALUES (2, 'Pluto', true, 5000000, 2002, 1);
INSERT INTO public.moon VALUES (3, 'Europa', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (4, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (5, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (6, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (7, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (8, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (9, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (10, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (11, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (12, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (13, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (14, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (15, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (16, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (17, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (18, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (19, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (20, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (21, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (22, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (23, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (24, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (25, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (26, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (27, 'Europa 2', true, 50, 20232, 3);
INSERT INTO public.moon VALUES (28, 'Europa 2', true, 50, 20232, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Krypton remnants', false, 0, 1, 60);
INSERT INTO public.planet VALUES (2, 'Earth', false, 0, 2, 600000000);
INSERT INTO public.planet VALUES (3, 'Mars', true, 50, 2, 600000);
INSERT INTO public.planet VALUES (4, 'Venus', true, 6888880, 2, 750000);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, 62300, 2, 320032);
INSERT INTO public.planet VALUES (6, 'Gaia 1', true, 2329, 3, 32);
INSERT INTO public.planet VALUES (7, 'Gaia 2', true, 1212202, 3, 320);
INSERT INTO public.planet VALUES (8, 'Gaia 3', true, 12122202, 3, 402);
INSERT INTO public.planet VALUES (9, 'Gaia 4', true, 12122202, 3, 402);
INSERT INTO public.planet VALUES (10, 'Gaia 5', false, 0, 3, 2);
INSERT INTO public.planet VALUES (11, 'Gaia 6', false, 0, 3, 0);
INSERT INTO public.planet VALUES (12, 'Gaia 7', false, 0, 3, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Dark heart', NULL, NULL);
INSERT INTO public.star VALUES (2, 2, 'Light Bringer', NULL, NULL);
INSERT INTO public.star VALUES (3, 3, 'New Hope', NULL, NULL);
INSERT INTO public.star VALUES (4, 4, 'On darkest Night', NULL, NULL);
INSERT INTO public.star VALUES (5, 5, 'Batman Star', NULL, NULL);
INSERT INTO public.star VALUES (6, 6, 'New Kryptons star', NULL, NULL);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: comet unique_comet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT unique_comet_id UNIQUE (comet_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

