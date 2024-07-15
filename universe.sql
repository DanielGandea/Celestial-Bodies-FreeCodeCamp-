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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(45) NOT NULL,
    description text,
    age_millions_of_years integer,
    galaxy_types_id integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(35) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(45) NOT NULL,
    description text,
    age_millions_of_years integer,
    planet_id integer
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
    name character varying(45) NOT NULL,
    description text,
    age_millions_of_years integer,
    star_id integer,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth_mln_km numeric(8,1),
    planet_types_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(35) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(45) NOT NULL,
    description text,
    age_millions_of_years integer,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 'Located about 600 million light-years from Earth. This galaxy is an extremely bright radio source in the universe.', 3, 2);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', 'The Cartwheel Galaxy is a lenticular ring galaxy about 500 million light-years away in the constellation Sculptor.', 400, 3);
INSERT INTO public.galaxy VALUES (6, 'TON 618', 'TON 618 is a hyperluminous, broad-absorption-line, radio-loud quasar and Lyman-alpha blob', 10400, 7);
INSERT INTO public.galaxy VALUES (1, 'The Milky Way', 'The Milky Way is a huge collection of stars, dust and gas, the Earth''s home.', 13600, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda, also known as Messier 31 (M31), is the closest galaxy to The Milky Way. 2.5 million light years away ', 10001, 1);
INSERT INTO public.galaxy VALUES (5, 'The Large and Small Magellanic Clouds', 'They are two small galaxies which orbit around our own Milky Way Galaxy', 13000, 4);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'Our Milky Way is one example of a broad class of galaxies defined by the presence of spiral arms. These galaxies resemble giant rotating pinwheels with a pancake-like disk of stars and a central bulge or tight concentration of stars');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'Elliptical galaxies have shapes that range from completely round to oval. They are less common than spiral galaxies.');
INSERT INTO public.galaxy_types VALUES (3, 'Lenticular', 'Lenticular galaxies are a kind of cross between spirals and ellipticals. They have the central bulge and disk common to spiral galaxies but no arms.');
INSERT INTO public.galaxy_types VALUES (4, 'Irregular', 'Irregular galaxies have unusual shapes, like toothpicks, rings, or even little groupings of stars. ');
INSERT INTO public.galaxy_types VALUES (5, 'Active', 'Around 10% of known galaxies are active, which means their centers appear more than 100 times brighter than the combined light of their stars.');
INSERT INTO public.galaxy_types VALUES (6, 'Seyfert', 'Seyfert galaxies, first identified in 1943 by American astronomer Carl Seyfert, are the most common active galaxies and also exhibit the lowest energies.');
INSERT INTO public.galaxy_types VALUES (7, 'Quasars', 'Quasars are the most luminous type of active galaxy. They emit light across the electromagnetic spectrum, produce powerful particle jets, and can radiate thousands of times the energy emitted by a galaxy like the Milky Way.');
INSERT INTO public.galaxy_types VALUES (8, 'Blazars', 'Blazars produce light across the electromagnetic spectrum. Their powerful jets point almost directly at Earth, so they appear brighter than other active galaxies.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 'The single moon theat our planet has.', 4530, 3);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanic moon with intense geological activity', 4500, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Ice-covered moon with possible liquid water ocean', 4500, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the solar system, even bigger than Mercury', 4500, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Outermost of the four largest moons, cratered and icy', 4500, 5);
INSERT INTO public.moon VALUES (8, 'Thebe', 'Small, irregularly shaped moon with highly elliptical orbit', 4500, 5);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos is the smaller and outer of the two natural satellites of Mars. Deimos has a mean radius of 6.2 km (3.9 mi) and takes 30.3 hours to orbit Mars.', 4500, 4);
INSERT INTO public.moon VALUES (2, 'Phobos', 'It is the larger of Mars'' two moons and is (27 by 22 by 18 kilometers) in diameter. It orbits Mars three times a day.', 4300, 4);
INSERT INTO public.moon VALUES (9, 'Titan', 'Largest moon of Saturn, second largest in the solar system', 4500, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Moon with geysers of water vapor and organic compounds', 4500, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 'Moon with heavily cratered surface and possible subsurface ocean', 4500, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Largest inner moon of Saturn, composed primarily of water ice', 4500, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 'Moon with large crater that gives it a distinctive "death star" appearance', 4500, 6);
INSERT INTO public.moon VALUES (14, 'Titania', 'Largest moon of Uranus, composed primarily of water ice', 4500, 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 'Outermost of the five major moons of Uranus, heavily cratered', 4500, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'Moon with surface composed primarily of water ice mixed with darker organic material', 4500, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 'Moon with surface featuring canyons and craters, possible subsurface ocean', 4500, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 'Moon with unique geology, featuring cliffs and canyons', 4500, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 'Largest moon of Neptune, unique retrograde orbit and geysers of nitrogen', 4500, 8);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Third-largest moon of Neptune, highly eccentric orbit', 4500, 8);
INSERT INTO public.moon VALUES (21, 'Proteus', 'Second-largest moon of Neptune, composed primarily of water ice', 4500, 8);
INSERT INTO public.moon VALUES (22, 'Larissa', 'Moon with highly eccentric orbit, possible capture by Neptune''s gravity', 4500, 8);
INSERT INTO public.moon VALUES (23, 'Galatea', 'Moon with highly inclined orbit, possible interaction with Neptune''s rings', 4500, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest and closest planet to the Sun', 4600, 1, false, true, 77.0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'The second planet from the Sun, often called Earth''s twin', 4600, 1, false, true, 41.0, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'The third planet from the Sun, the only known planet with life', 4540, 1, true, true, 0.0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The fourth planet from the Sun, known as the Red Planet', 4600, 1, false, true, 225.0, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in the solar system, a gas giant', 4600, 1, false, true, 628.0, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The sixth planet from the Sun, known for its prominent rings', 4600, 1, false, true, 1271.0, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 'The seventh planet from the Sun, an ice giant', 4600, 1, false, true, 2871.0, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The eighth planet from the Sun, the farthest planet', 4600, 1, false, true, 4495.0, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 'A dwarf planet in the Kuiper Belt, formerly classified as a planet', 4600, 1, false, true, 5900.0, 4);
INSERT INTO public.planet VALUES (10, 'Ceres', 'A dwarf planet in the middle main asteroid belt between Mars and Jupiter', 4600, 1, false, true, 285.0, 4);
INSERT INTO public.planet VALUES (11, 'Saffar / Upsilon Andromedae', 'A dwarf planet in the Andromeda Constellation.', 4600, 3, false, true, 5900.0, 4);
INSERT INTO public.planet VALUES (12, 'HAT-P-6b', 'A transiting extrasolar planet discovered by Noyes et al. Located approximately 910 light-years away in the constellation of Andromeda, orbiting the star HAT-P-6', 4600, 1, false, true, 99999.0, 4);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'A terrestrial planet is one that meets these three planetary criteria and has a heavy metal core, a rocky mantle, and a solid surface.');
INSERT INTO public.planet_types VALUES (2, 'Ice Giants', 'An ice giant is a giant planet composed mainly of elements heavier than hydrogen and helium, such as oxygen, carbon, nitrogen, and sulfur.(low temperatures)');
INSERT INTO public.planet_types VALUES (3, 'Gas Giants', 'A gas giant is a large planet mostly composed of helium and/or hydrogen. These planets, like Jupiter and Saturn in our solar system, do not have hard surfaces and instead have swirling gases above a solid core.
');
INSERT INTO public.planet_types VALUES (4, 'Gas-dwarfs', 'Gas-dwarfs are low-mass planets with rocky cores and primordial hydrogen-helium envelopes.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'Our Sun is a yellow dwarf star – a hot glowing ball of hydrogen and helium – at the center of our solar system.', 4500, 1);
INSERT INTO public.star VALUES (2, 'UY Scuti', 'A red supergiant star, located 5,900 light-years away in the constellation Scutum. Biggest star discovered.', NULL, 1);
INSERT INTO public.star VALUES (3, 'Xi Andromedae', 'Officially named Adhil, is a solitary star in the northern constellation of Andromeda.', NULL, 2);
INSERT INTO public.star VALUES (4, 'HAT-P-6', 'a star in the constellation Andromeda, located approximately 895 light years or 274 parsecs away from the Earth. It is an F-type star, implying that it is hotter and more massive than the Sun.', NULL, 2);
INSERT INTO public.star VALUES (5, 'Deneb', 'Deneb is a first-magnitude blue supergiant star in the constellation of Cygnus', 10, 3);
INSERT INTO public.star VALUES (6, 'Albireo', 'It is a double star, appearing to the naked eye to be a single sone. ', 100, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_plnet_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_plnet_types_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


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

