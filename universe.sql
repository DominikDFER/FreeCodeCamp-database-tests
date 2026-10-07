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
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    height integer,
    weight numeric(4,1),
    description text NOT NULL,
    humans boolean
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
    name character varying(30),
    age integer NOT NULL,
    height integer,
    weight numeric(4,1),
    description text NOT NULL,
    humans boolean,
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
    name character varying(30),
    age integer NOT NULL,
    height integer,
    weight numeric(4,1),
    description text NOT NULL,
    humans boolean,
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
    name character varying(30),
    age integer NOT NULL,
    height integer,
    weight numeric(4,1),
    description text NOT NULL,
    humans boolean,
    galaxy_id integer NOT NULL
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
-- Name: typeofstar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.typeofstar (
    typeofstar_id integer NOT NULL,
    name character varying(30),
    star_id integer,
    description text NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.typeofstar OWNER TO freecodecamp;

--
-- Name: typeofstar_typeofstar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.typeofstar_typeofstar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typeofstar_typeofstar_id_seq OWNER TO freecodecamp;

--
-- Name: typeofstar_typeofstar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.typeofstar_typeofstar_id_seq OWNED BY public.typeofstar.typeofstar_id;


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
-- Name: typeofstar typeofstar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.typeofstar ALTER COLUMN typeofstar_id SET DEFAULT nextval('public.typeofstar_typeofstar_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (8, 'Andromeda', 10000, 120000, 5.5, 'A large spiral galaxy', false);
INSERT INTO public.galaxy VALUES (9, 'Milky Way', 13600, 105000, 4.8, 'The galaxy containing our Solar System', false);
INSERT INTO public.galaxy VALUES (10, 'Triangulum', 13000, 60000, 2.7, 'A nearby spiral galaxy in the Local Group', false);
INSERT INTO public.galaxy VALUES (11, 'Whirlpool', 400, 76000, 3.2, 'A bright galaxy with a striking spiral structure', false);
INSERT INTO public.galaxy VALUES (12, 'Sombrero', 9000, 50000, 4.1, 'A galaxy known for its prominent central bulge', false);
INSERT INTO public.galaxy VALUES (13, 'Sunflower', 3000, 70000, 2.9, 'A spiral galaxy with tightly wound arms', false);
INSERT INTO public.galaxy VALUES (14, 'Black Eye', 13001, 52000, 3.8, 'A galaxy surrounded by a dark band of dust', false);
INSERT INTO public.galaxy VALUES (15, 'Pinwheel', 11000, 170000, 6.2, 'A face on galaxy with extended spiral arms', false);
INSERT INTO public.galaxy VALUES (16, 'Cartwheel', 500, 150000, 5.1, 'A ring galaxy formed by a cosmic collision', false);
INSERT INTO public.galaxy VALUES (17, 'Cigar', 13002, 37000, 2.3, 'An active galaxy with intense star formation', false);
INSERT INTO public.galaxy VALUES (18, 'Large Magellanic', 13003, 14000, 1.4, 'A nearby dwarf irregular galaxy', false);
INSERT INTO public.galaxy VALUES (19, 'Small Magellanic', 7000, 18000, 1.2, 'A small irregular companion galaxy', false);
INSERT INTO public.galaxy VALUES (20, 'Centaurus A', 12000, 60000, 3.9, 'A powerful galaxy that emits strong radio waves', false);
INSERT INTO public.galaxy VALUES (21, 'NGC 1300', 11001, 110000, 4.5, 'A barred spiral galaxy with a bright core', false);
INSERT INTO public.galaxy VALUES (22, 'NGC 253', 12001, 90000, 4.0, 'A nearby galaxy with vigorous star formation', false);
INSERT INTO public.galaxy VALUES (23, 'NGC 6744', 10001, 175000, 5.7, 'A large spiral galaxy resembling the Milky Way', false);
INSERT INTO public.galaxy VALUES (24, 'Messier 81', 13004, 90000, 4.4, 'A luminous spiral galaxy with a compact center', false);
INSERT INTO public.galaxy VALUES (25, 'Messier 82', 12002, 37000, 2.8, 'A starburst galaxy with rapid stellar activity', false);
INSERT INTO public.galaxy VALUES (26, 'Leo I', 13005, 10000, 0.9, 'A faint dwarf spheroidal galaxy', false);
INSERT INTO public.galaxy VALUES (27, 'Fornax', 12003, 14000, 1.1, 'A dwarf galaxy located in the Fornax constellation', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4501, 3475, 7.3, 'The natural satellite of Earth', true, 5);
INSERT INTO public.moon VALUES (2, 'Phobos', 4502, 22, 0.0, 'A small moon orbiting Mars', false, 6);
INSERT INTO public.moon VALUES (3, 'Deimos', 4503, 13, 0.0, 'A tiny outer moon of Mars', false, 7);
INSERT INTO public.moon VALUES (4, 'IoMoon', 4504, 3643, 8.9, 'A volcanic moon of Jupiter', false, 8);
INSERT INTO public.moon VALUES (5, 'EuropaMoon', 4505, 3122, 4.8, 'An icy moon with a hidden ocean', false, 9);
INSERT INTO public.moon VALUES (6, 'GanymedeMoon', 4506, 5268, 14.8, 'The largest moon in the Solar System', false, 10);
INSERT INTO public.moon VALUES (7, 'CallistoMoon', 4507, 4821, 10.8, 'An ancient cratered moon', false, 11);
INSERT INTO public.moon VALUES (8, 'TitanMoon', 4508, 5150, 134.5, 'A moon with a thick atmosphere', false, 12);
INSERT INTO public.moon VALUES (9, 'Rhea', 4509, 1528, 2.3, 'An icy moon of Saturn', false, 13);
INSERT INTO public.moon VALUES (10, 'Iapetus', 4510, 1469, 1.8, 'A moon with contrasting bright and dark regions', false, 14);
INSERT INTO public.moon VALUES (11, 'Dione', 4511, 1123, 1.1, 'An icy moon with bright surface cliffs', false, 15);
INSERT INTO public.moon VALUES (12, 'Tethys', 4512, 1062, 0.6, 'A small icy moon with a giant crater', false, 16);
INSERT INTO public.moon VALUES (13, 'Enceladus', 4513, 504, 0.1, 'An icy moon with water plumes', false, 17);
INSERT INTO public.moon VALUES (14, 'Mimas', 4514, 396, 0.0, 'A small moon with a giant impact crater', false, 18);
INSERT INTO public.moon VALUES (15, 'Hyperion', 4515, 270, 0.0, 'An irregular porous moon of Saturn', false, 19);
INSERT INTO public.moon VALUES (16, 'Titania', 4516, 1578, 3.5, 'The largest moon of Uranus', false, 20);
INSERT INTO public.moon VALUES (17, 'Oberon', 4517, 1523, 3.0, 'A distant icy moon of Uranus', false, 21);
INSERT INTO public.moon VALUES (18, 'Ariel', 4518, 1158, 1.4, 'A bright icy moon of Uranus', false, 22);
INSERT INTO public.moon VALUES (19, 'TritonMoon', 4519, 2706, 21.4, 'The largest moon of Neptune', false, 23);
INSERT INTO public.moon VALUES (20, 'CharonMoon', 4520, 1212, 1.6, 'A large companion of Pluto', false, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'Mercury', 4501, 4879, 0.3, 'The smallest rocky planet', false, 29);
INSERT INTO public.planet VALUES (6, 'Venus', 4601, 12104, 4.9, 'The hottest planet in the system', false, 30);
INSERT INTO public.planet VALUES (7, 'Earth', 4541, 12742, 5.9, 'The only known planet with life', true, 31);
INSERT INTO public.planet VALUES (8, 'Mars', 4502, 6779, 0.6, 'The famous red rocky world', false, 32);
INSERT INTO public.planet VALUES (9, 'Jupiter', 4602, 139820, 899.0, 'The largest gas giant', false, 33);
INSERT INTO public.planet VALUES (10, 'Saturn', 4503, 116460, 568.0, 'The planet surrounded by rings', false, 34);
INSERT INTO public.planet VALUES (11, 'Uranus', 4603, 50724, 86.8, 'The ice giant with a tilted axis', false, 35);
INSERT INTO public.planet VALUES (12, 'Neptune', 4542, 49244, 102.0, 'The distant blue ice giant', false, 36);
INSERT INTO public.planet VALUES (13, 'Kepler', 3201, 15000, 2.4, 'A distant rocky exoplanet', false, 37);
INSERT INTO public.planet VALUES (14, 'Proxima', 5001, 11000, 1.8, 'A small planet around a nearby star', false, 38);
INSERT INTO public.planet VALUES (15, 'Titan', 4504, 5150, 0.1, 'A moon with a thick atmosphere', false, 39);
INSERT INTO public.planet VALUES (16, 'Europa', 4401, 3122, 0.8, 'An icy moon hiding an ocean', false, 40);
INSERT INTO public.planet VALUES (17, 'Ganymede', 4604, 5268, 15.0, 'The largest moon in the Solar System', false, 41);
INSERT INTO public.planet VALUES (18, 'Io', 4505, 3643, 8.9, 'A moon covered with active volcanoes', false, 42);
INSERT INTO public.planet VALUES (19, 'Callisto', 4605, 4821, 10.8, 'An ancient heavily cratered moon', false, 43);
INSERT INTO public.planet VALUES (20, 'Triton', 4506, 2706, 2.1, 'A frozen moon with a strange orbit', false, 44);
INSERT INTO public.planet VALUES (21, 'Charon', 4507, 1212, 1.6, 'A large moon of a distant dwarf planet', false, 45);
INSERT INTO public.planet VALUES (22, 'Ceres', 4606, 939, 0.9, 'A dwarf planet in the asteroid belt', false, 46);
INSERT INTO public.planet VALUES (23, 'Pluto', 4508, 2376, 13.0, 'A small world beyond Neptune', false, 47);
INSERT INTO public.planet VALUES (24, 'Eris', 4509, 2326, 16.0, 'A distant dwarf planet in the Kuiper belt', false, 48);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (29, 'Sirius', 242, 2, 2.1, 'The brightest star in the night sky', false, 8);
INSERT INTO public.star VALUES (30, 'Vega', 455, 3, 2.3, 'A bright blue white star', false, 9);
INSERT INTO public.star VALUES (31, 'Betelgeuse', 8500, 900, 16.5, 'A massive red supergiant star', false, 10);
INSERT INTO public.star VALUES (32, 'Rigel', 8601, 74, 21.0, 'A luminous blue supergiant', false, 11);
INSERT INTO public.star VALUES (33, 'Procyon', 1751, 2, 1.5, 'A bright binary star system', false, 12);
INSERT INTO public.star VALUES (34, 'Altair', 1002, 1, 1.8, 'A rapidly rotating white star', false, 13);
INSERT INTO public.star VALUES (35, 'Antares', 11000, 680, 12.4, 'A red supergiant located in Scorpius', false, 14);
INSERT INTO public.star VALUES (36, 'Spica', 12001, 8, 10.3, 'A luminous binary star system', false, 15);
INSERT INTO public.star VALUES (37, 'Aldebaran', 650, 44, 1.2, 'An orange giant found in Taurus', false, 16);
INSERT INTO public.star VALUES (38, 'Pollux', 724, 9, 1.9, 'An evolved orange giant star', false, 17);
INSERT INTO public.star VALUES (39, 'Deneb', 11001, 203, 19.0, 'A distant luminous supergiant star', false, 18);
INSERT INTO public.star VALUES (40, 'Arcturus', 710, 25, 1.1, 'An ancient orange giant star', false, 19);
INSERT INTO public.star VALUES (41, 'Capella', 525, 12, 2.7, 'A multiple star system in Auriga', false, 20);
INSERT INTO public.star VALUES (42, 'Regulus', 1003, 4, 3.4, 'A bright blue white stellar system', false, 21);
INSERT INTO public.star VALUES (43, 'Fomalhaut', 440, 1, 1.9, 'A young star surrounded by debris', false, 22);
INSERT INTO public.star VALUES (44, 'Polaris', 7000, 46, 5.4, 'The famous star near the north celestial pole', false, 23);
INSERT INTO public.star VALUES (45, 'Canopus', 10004, 71, 8.0, 'A brilliant yellow white supergiant', false, 24);
INSERT INTO public.star VALUES (46, 'Achernar', 37, 9, 6.7, 'A rapidly rotating blue stellar object', false, 25);
INSERT INTO public.star VALUES (47, 'Bellatrix', 250, 6, 8.6, 'A hot blue giant in Orion', false, 26);
INSERT INTO public.star VALUES (48, 'Alnilam', 5000, 30, 40.0, 'A massive blue star in Orion', false, 27);


--
-- Data for Name: typeofstar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.typeofstar VALUES (1, 'Main Sequence', 29, 'A stable star producing energy through hydrogen fusion', 100);
INSERT INTO public.typeofstar VALUES (2, 'Red Giant', 30, 'An evolved star with a large expanded outer layer', 200);
INSERT INTO public.typeofstar VALUES (3, 'Blue Giant', 31, 'A massive hot star with a bright blue appearance', 300);
INSERT INTO public.typeofstar VALUES (4, 'Red Supergiant', 32, 'A massive star near the end of its stellar life', 400);
INSERT INTO public.typeofstar VALUES (5, 'White Dwarf', 33, 'A dense stellar remnant left after stellar evolution', 500);
INSERT INTO public.typeofstar VALUES (6, 'Yellow Dwarf', 34, 'A medium sized star similar to the Sun', 600);
INSERT INTO public.typeofstar VALUES (7, 'Blue Supergiant', 35, 'A very luminous hot star with a high surface temperature', 700);
INSERT INTO public.typeofstar VALUES (8, 'Orange Giant', 36, 'A cool evolved star with an orange appearance', 800);
INSERT INTO public.typeofstar VALUES (9, 'Brown Dwarf', 37, 'A substellar object unable to sustain normal hydrogen fusion', 900);
INSERT INTO public.typeofstar VALUES (10, 'Protostar', 38, 'A young object forming from a collapsing cloud of gas', 1000);
INSERT INTO public.typeofstar VALUES (11, 'Neutron Star', 39, 'A compact stellar remnant made mostly of neutrons', 1100);
INSERT INTO public.typeofstar VALUES (12, 'Pulsar', 40, 'A rapidly rotating neutron star emitting regular pulses', 1200);
INSERT INTO public.typeofstar VALUES (13, 'Magnetar', 41, 'A neutron star with an extremely strong magnetic field', 1300);
INSERT INTO public.typeofstar VALUES (14, 'Wolf Rayet', 42, 'A hot massive star losing material through strong stellar winds', 1400);
INSERT INTO public.typeofstar VALUES (15, 'Hypergiant', 43, 'An extremely massive and luminous evolved star', 1500);
INSERT INTO public.typeofstar VALUES (16, 'Subgiant', 44, 'A star transitioning from the main sequence to a giant', 1600);
INSERT INTO public.typeofstar VALUES (17, 'Variable Star', 45, 'A star whose brightness changes over time', 1700);
INSERT INTO public.typeofstar VALUES (18, 'Carbon Star', 46, 'A cool giant star with a carbon rich atmosphere', 1800);
INSERT INTO public.typeofstar VALUES (19, 'Binary Star', 47, 'A stellar system containing two stars orbiting each other', 1900);
INSERT INTO public.typeofstar VALUES (20, 'Triple Star', 48, 'A stellar system containing three gravitationally bound stars', 2000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 27, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 48, true);


--
-- Name: typeofstar_typeofstar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.typeofstar_typeofstar_id_seq', 20, true);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_key UNIQUE (age);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: typeofstar typeofstar_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.typeofstar
    ADD CONSTRAINT typeofstar_age_key UNIQUE (age);


--
-- Name: typeofstar typeofstar_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.typeofstar
    ADD CONSTRAINT typeofstar_description_key UNIQUE (description);


--
-- Name: typeofstar typeofstar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.typeofstar
    ADD CONSTRAINT typeofstar_pkey PRIMARY KEY (typeofstar_id);


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
-- Name: typeofstar typeofstar_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.typeofstar
    ADD CONSTRAINT typeofstar_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

