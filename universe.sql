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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    number integer NOT NULL,
    asteroid_name character varying(30) NOT NULL,
    year_discovered integer,
    diameter_km numeric,
    distance_from_sun_au numeric,
    name character varying(20)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(30) NOT NULL,
    apparent_magnitude numeric,
    distance_kpc integer,
    constellation text NOT NULL,
    name character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_name character varying(30) NOT NULL,
    radius_km numeric,
    orbital_period_day numeric,
    year_discovered integer,
    planet_name character varying(30) NOT NULL,
    name character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(30) NOT NULL,
    type text,
    exoplanet boolean,
    number_known_moons integer,
    ring boolean,
    star_name character varying(30) NOT NULL,
    name character varying(20)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(30) NOT NULL,
    year_discovered integer,
    distance_ly numeric,
    galaxy_name character varying(30) NOT NULL,
    name character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 1, 'Ceres', 1801, 939.4, 2.7, NULL);
INSERT INTO public.asteroid VALUES (2, 4, 'Vesta', 1807, 525.4, 2.3, NULL);
INSERT INTO public.asteroid VALUES (3, 2, 'Pallas', 1802, 511, 2.7, NULL);
INSERT INTO public.asteroid VALUES (4, 10, 'Hygiea', 1849, 433, 3.1, NULL);
INSERT INTO public.asteroid VALUES (5, 704, 'Interamnia', 1910, 332, 3, NULL);
INSERT INTO public.asteroid VALUES (6, 52, 'Europa', 1858, 319, 3, NULL);
INSERT INTO public.asteroid VALUES (7, 511, 'Davida', 1903, 298, 3.1, NULL);
INSERT INTO public.asteroid VALUES (8, 87, 'Sylvia', 1866, 271, 3.4, NULL);
INSERT INTO public.asteroid VALUES (9, 15, 'Eunomia', 1851, 270, 2.6, NULL);
INSERT INTO public.asteroid VALUES (10, 31, 'Euphrosyne', 1854, 268, 3.1, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', -6.5, 0, 'Sagittarius', NULL);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 0.9, 49, 'Dorado / Mensa', NULL);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 2.7, 61, 'Tucana', NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 3.4, 770, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 5.7, 890, 'Triangulum', NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 6.84, 4200, 'Centaurus', NULL);
INSERT INTO public.galaxy VALUES (7, 'Bodes Galaxy', 6.94, 3700, 'Ursa Major', NULL);
INSERT INTO public.galaxy VALUES (8, 'Sunrise Arc', 27.2, 8584839, 'Cetus', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1738, 27.3, NULL, 'Earth', NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 11.2, 0.3, 1877, 'Mars', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 6.2, 1.2, 1877, 'Mars', NULL);
INSERT INTO public.moon VALUES (4, 'Io', 1821.6, 1.7, 1610, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 1560.8, 3.5, 1610, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634.1, 7.1, 1610, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 2410.3, 16.7, 1610, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (8, 'Mimas', 198.2, 185.5, 1789, 'Saturn', NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 252.1, 238, 1789, 'Saturn', NULL);
INSERT INTO public.moon VALUES (10, 'Tethys', 533.1, 294.6, 1684, 'Saturn', NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 561.4, 377.4, 1684, 'Saturn', NULL);
INSERT INTO public.moon VALUES (12, 'Rhea', 763.8, 527, 1672, 'Saturn', NULL);
INSERT INTO public.moon VALUES (13, 'Titan', 2574.7, 1221.8, 1655, 'Saturn', NULL);
INSERT INTO public.moon VALUES (14, 'Ariel', 578.9, 190.9, 1851, 'Uranus', NULL);
INSERT INTO public.moon VALUES (15, 'Umbriel', 584.7, 266, 1851, 'Uranus', NULL);
INSERT INTO public.moon VALUES (16, 'Titania', 788.9, 436.3, 1787, 'Uranus', NULL);
INSERT INTO public.moon VALUES (17, 'Triton', 1353.4, 354.8, 1846, 'Neptune', NULL);
INSERT INTO public.moon VALUES (18, 'Charon', 606, 19.6, 1978, 'Pluto', NULL);
INSERT INTO public.moon VALUES (19, 'Hiiaka', 160, 49.8, 2005, 'Haumea', NULL);
INSERT INTO public.moon VALUES (20, 'Dysnomia', 350, 37273, 2005, 'Eris', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'planet', false, 0, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'planet', false, 0, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 'planet', false, 1, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'planet', false, 2, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'planet', false, 95, true, 'Sun', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'planet', false, 146, true, 'Sun', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'planet', false, 28, true, 'Sun', NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'planet', false, 16, true, 'Sun', NULL);
INSERT INTO public.planet VALUES (9, 'Ceres', 'dward planet', false, 0, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', 'dward planet', false, 5, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (11, 'Haumea', 'dward planet', false, 2, true, 'Sun', NULL);
INSERT INTO public.planet VALUES (12, 'Makemake', 'dward planet', false, 1, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (13, 'Eris', 'dward planet', false, 1, false, 'Sun', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 0, 'Milky Way', NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1915, 4.2, 'Centaurus A', NULL);
INSERT INTO public.star VALUES (3, 'Earendel', 2022, 28000000000, 'Sunrise Arc', NULL);
INSERT INTO public.star VALUES (4, '2MASS J18082002−5104378', 2018, 1.95, 'Milky Way', NULL);
INSERT INTO public.star VALUES (5, 'Sirius B', 1852, 8.6, 'Milky Way', NULL);
INSERT INTO public.star VALUES (6, 'Vega', NULL, 25, 'Milky Way', NULL);
INSERT INTO public.star VALUES (7, 'Deneb', NULL, 1550, 'Milky Way', NULL);


--
-- Name: asteroid asteroid_asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_name_key UNIQUE (asteroid_name);


--
-- Name: asteroid asteroid_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_number_key UNIQUE (number);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (moon_name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (star_name);


--
-- Name: moon moon_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

