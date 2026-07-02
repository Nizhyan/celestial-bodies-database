--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    description character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    is_spherical boolean
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
    name character varying(50),
    moon_id integer NOT NULL,
    planet_id integer,
    description character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    is_spherical boolean,
    notes text
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
    name character varying(50),
    planet_id integer NOT NULL,
    star_id integer,
    description character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    is_spherical boolean,
    mass numeric
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
    name character varying(50),
    star_id integer NOT NULL,
    description character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(50),
    description character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    is_spherical boolean
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Our home galaxy', 13600, 0, false);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'Nearest large spiral galaxy', 10000, 2500000, false);
INSERT INTO public.galaxy VALUES ('Triangulum', 3, 'Third largest in Local Group', 10000, 3000000, false);
INSERT INTO public.galaxy VALUES ('Whirlpool', 4, 'Grand-design spiral galaxy', 400, 23000000, false);
INSERT INTO public.galaxy VALUES ('Sombrero', 5, 'Known for its dust ring', 8000, 29000000, false);
INSERT INTO public.galaxy VALUES ('Cartwheel', 6, 'Ring-shaped galaxy', 200, 500000000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 1, 3, 'Earth''s only natural satellite', 4500, 0, true, NULL);
INSERT INTO public.moon VALUES ('Phobos', 2, 4, 'Larger of Mars'' two moons', 4500, 1, true, NULL);
INSERT INTO public.moon VALUES ('Deimos', 3, 4, 'Smaller of Mars'' two moons', 4500, 1, true, NULL);
INSERT INTO public.moon VALUES ('Io', 4, 5, 'Most volcanically active body', 4500, 5, true, NULL);
INSERT INTO public.moon VALUES ('Europa', 5, 5, 'Icy moon with subsurface ocean', 4500, 5, true, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 6, 5, 'Largest moon in the solar system', 4500, 5, true, NULL);
INSERT INTO public.moon VALUES ('Callisto', 7, 5, 'Heavily cratered moon of Jupiter', 4500, 5, true, NULL);
INSERT INTO public.moon VALUES ('Titan', 8, 6, 'Largest moon of Saturn', 4500, 8, true, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 9, 6, 'Icy moon with geysers', 4500, 8, true, NULL);
INSERT INTO public.moon VALUES ('Mimas', 10, 6, 'Known as the Death Star moon', 4500, 8, true, NULL);
INSERT INTO public.moon VALUES ('Rhea', 11, 6, 'Second largest moon of Saturn', 4500, 8, true, NULL);
INSERT INTO public.moon VALUES ('Titania', 12, 7, 'Largest moon of Uranus', 4500, 20, true, NULL);
INSERT INTO public.moon VALUES ('Oberon', 13, 7, 'Second largest moon of Uranus', 4500, 20, true, NULL);
INSERT INTO public.moon VALUES ('Miranda', 14, 7, 'Smallest round moon of Uranus', 4500, 20, true, NULL);
INSERT INTO public.moon VALUES ('Ariel', 15, 7, 'Brightest moon of Uranus', 4500, 20, true, NULL);
INSERT INTO public.moon VALUES ('Triton', 16, 8, 'Largest moon of Neptune', 4500, 30, true, NULL);
INSERT INTO public.moon VALUES ('Nereid', 17, 8, 'Irregular moon of Neptune', 4500, 30, true, NULL);
INSERT INTO public.moon VALUES ('Proteus', 18, 8, 'Second largest moon of Neptune', 4500, 30, true, NULL);
INSERT INTO public.moon VALUES ('Charon', 19, 9, 'Moon of dwarf planet Pluto', 4500, 40, true, NULL);
INSERT INTO public.moon VALUES ('Hydra', 20, 9, 'Small moon of dwarf planet Pluto', 4500, 40, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 1, 'Smallest planet, closest to its star', 4600, 77, true, NULL);
INSERT INTO public.planet VALUES ('Venus', 2, 1, 'Hottest planet in the solar system', 4600, 261, true, NULL);
INSERT INTO public.planet VALUES ('Earth', 3, 1, 'Only known planet with life', 4600, 0, true, NULL);
INSERT INTO public.planet VALUES ('Mars', 4, 1, 'Known as the Red Planet', 4600, 225, true, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 5, 1, 'Largest planet in the solar system', 4600, 628, true, NULL);
INSERT INTO public.planet VALUES ('Saturn', 6, 1, 'Famous for its ring system', 4600, 1275, true, NULL);
INSERT INTO public.planet VALUES ('Uranus', 7, 1, 'Ice giant tilted on its side', 4600, 2723, true, NULL);
INSERT INTO public.planet VALUES ('Neptune', 8, 1, 'Farthest known planet from the Sun', 4600, 4351, true, NULL);
INSERT INTO public.planet VALUES ('Proxima b', 9, 4, 'Orbits Proxima Centauri', 4850, 4, true, NULL);
INSERT INTO public.planet VALUES ('Sirius Ab', 10, 2, 'Hypothetical planet near Sirius', 200, 9, true, NULL);
INSERT INTO public.planet VALUES ('Rigel I', 11, 5, 'Hypothetical planet near Rigel', 8, 860, true, NULL);
INSERT INTO public.planet VALUES ('Vega Prime', 12, 6, 'Hypothetical planet near Vega', 455, 25, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 'Our home star', 4600, 0, true, 1);
INSERT INTO public.star VALUES ('Sirius', 2, 'Brightest star in night sky', 242, 9, true, 1);
INSERT INTO public.star VALUES ('Betelgeuse', 3, 'Red supergiant', 10, 640, true, 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 4, 'Closest star to the Sun', 4850, 4, true, 2);
INSERT INTO public.star VALUES ('Rigel', 5, 'Blue supergiant', 8, 860, true, 2);
INSERT INTO public.star VALUES ('Vega', 6, 'Fifth brightest star', 455, 25, true, 2);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Sol', 'The Sun at the center of our solar system', 4600, 0, true);
INSERT INTO public.sun VALUES (2, 'Alpha Centauri A', 'Sun-like star in the Alpha Centauri system', 5300, 4, true);
INSERT INTO public.sun VALUES (3, 'Tau Ceti', 'Sun-like star with possible exoplanets', 5800, 12, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 3, true);


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
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: sun unique_sun_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT unique_sun_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

