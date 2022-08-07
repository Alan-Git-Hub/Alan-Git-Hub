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
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    galaxy_type character varying(30),
    distance_from_earth_mill_lyears numeric(7,3),
    age_in_millions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    is_spherical boolean,
    planet_id integer,
    nearest_planet character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    planet_type character varying(30),
    distance_from_earth_km integer,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    star_type character varying(30),
    age_in_millions_of_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 1, 'Spiral', 2.537, 10000);
INSERT INTO public.galaxy VALUES ('Canis Major Dwarf Galaxy', 2, 'Irregular', 0.025, 190);
INSERT INTO public.galaxy VALUES ('Cygnus A', 3, 'Elliptical', 600.000, 3);
INSERT INTO public.galaxy VALUES ('Magellanic Clouds Galaxy', 4, 'Irregular', 0.158, 13000);
INSERT INTO public.galaxy VALUES ('Milky Way Galaxy', 5, 'Spiral', 0.025, 13610);
INSERT INTO public.galaxy VALUES ('Messier 81 Galaxy', 6, 'Spiral', 12.000, 13310);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, true, 3, 'Earth');
INSERT INTO public.moon VALUES ('Europa', 2, true, 5, 'Jupiter');
INSERT INTO public.moon VALUES ('Ganymede', 3, true, 5, 'Jupiter');
INSERT INTO public.moon VALUES ('Titan', 4, true, 6, 'Saturn');
INSERT INTO public.moon VALUES ('IO', 5, true, 5, 'Jupiter');
INSERT INTO public.moon VALUES ('Callisto', 6, true, 5, 'Jupiter');
INSERT INTO public.moon VALUES ('Enceladus', 7, true, 6, 'Saturn');
INSERT INTO public.moon VALUES ('Mimas', 8, true, 6, 'Saturn');
INSERT INTO public.moon VALUES ('Iapetus', 9, true, 6, 'Saturn');
INSERT INTO public.moon VALUES ('Hyperion', 10, false, 6, 'Saturn');
INSERT INTO public.moon VALUES ('Titron', 11, true, 7, 'Neptune');
INSERT INTO public.moon VALUES ('Epimetheus', 12, false, 6, 'Saturn');
INSERT INTO public.moon VALUES ('Amalthea', 13, false, 5, 'Jupiter');
INSERT INTO public.moon VALUES ('Dione', 14, true, 6, 'Saturn');
INSERT INTO public.moon VALUES ('Tethys', 15, true, 6, 'Saturn');
INSERT INTO public.moon VALUES ('Thebe', 16, false, 5, 'Jupiter');
INSERT INTO public.moon VALUES ('Titania', 17, true, 8, 'Uranuse');
INSERT INTO public.moon VALUES ('Charon', 18, true, 9, 'Pluto');
INSERT INTO public.moon VALUES ('Methone', 19, false, 6, 'Saturn');
INSERT INTO public.moon VALUES ('Oberon', 20, true, 8, 'Uranus');


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 3, 'Earth', 'a place where humans live sat within the solar system, it is the third planet out from the sun');
INSERT INTO public.more_info VALUES (2, 4, 'Mars', 'a rocky pllanet which humans are looking to explore as a possible plaet to move to');
INSERT INTO public.more_info VALUES (3, 5, 'Jupiter', 'The largest planet in the solar system');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 1, 'Terrestrial Planet', 179, false);
INSERT INTO public.planet VALUES ('Venus', 2, 1, 'Terrestrial Planet', 236, false);
INSERT INTO public.planet VALUES ('Earth', 3, 1, 'Terrestrial Planet', 0, true);
INSERT INTO public.planet VALUES ('Mars', 4, 1, 'Terrestrial Planet', 165, false);
INSERT INTO public.planet VALUES ('Jupiter', 5, 1, 'Gas Giant', 642, false);
INSERT INTO public.planet VALUES ('Saturn', 6, 1, 'Gas Giant', 1324, false);
INSERT INTO public.planet VALUES ('Neptune', 7, 1, 'Ice Giant', 4357, false);
INSERT INTO public.planet VALUES ('Uranus', 8, 1, 'Ice Giant', 2950, false);
INSERT INTO public.planet VALUES ('Pluto', 9, 1, 'Dwarf Planet', 5020, false);
INSERT INTO public.planet VALUES ('Saffar', 10, 5, 'Gas Giant', 4160000, false);
INSERT INTO public.planet VALUES ('HD40307G', 11, 4, 'Ice Giant', 3970000, false);
INSERT INTO public.planet VALUES ('Mu Arae C', 12, 6, 'Extrasolar Planet', 4730000, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('The Sun', 1, 'Yellow Dwarf', 4603, 5);
INSERT INTO public.star VALUES ('HD 219134', 2, 'Main Sequence', 11000, 5);
INSERT INTO public.star VALUES ('Trappist-1', 3, 'Red Dwarf', 7600, 5);
INSERT INTO public.star VALUES ('HD 40307', 4, 'Main Sequence', 1200, 5);
INSERT INTO public.star VALUES ('Upsilon Andromedae', 5, 'Binary Star', 3100, 5);
INSERT INTO public.star VALUES ('Mu Arae', 6, 'Main Sequence', 1450, 5);


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
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: more_info more_info_record_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_record_id_key UNIQUE (more_info_id);


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
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

