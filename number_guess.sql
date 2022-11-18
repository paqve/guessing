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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: history; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.history (
    user_id integer,
    number_played integer,
    best_game integer
);


ALTER TABLE public.history OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.history VALUES (6, 2, 254);
INSERT INTO public.history VALUES (15, 2, 7);
INSERT INTO public.history VALUES (26, 2, 663);
INSERT INTO public.history VALUES (5, 5, 269);
INSERT INTO public.history VALUES (14, 5, 6);
INSERT INTO public.history VALUES (36, 2, 2);
INSERT INTO public.history VALUES (16, 1, 6);
INSERT INTO public.history VALUES (8, 2, 7);
INSERT INTO public.history VALUES (25, 5, 580);
INSERT INTO public.history VALUES (18, 2, 289);
INSERT INTO public.history VALUES (7, 5, 9);
INSERT INTO public.history VALUES (9, 1, 1);
INSERT INTO public.history VALUES (35, 5, 2);
INSERT INTO public.history VALUES (17, 5, 20);
INSERT INTO public.history VALUES (11, 2, 2);
INSERT INTO public.history VALUES (28, 2, 253);
INSERT INTO public.history VALUES (10, 5, 4);
INSERT INTO public.history VALUES (20, 2, 601);
INSERT INTO public.history VALUES (13, 2, 2);
INSERT INTO public.history VALUES (27, 5, 388);
INSERT INTO public.history VALUES (19, 5, 78);
INSERT INTO public.history VALUES (12, 5, 9);
INSERT INTO public.history VALUES (22, 2, 11);
INSERT INTO public.history VALUES (30, 2, 456);
INSERT INTO public.history VALUES (21, 5, 3);
INSERT INTO public.history VALUES (29, 5, 256);
INSERT INTO public.history VALUES (4, 6, 14);
INSERT INTO public.history VALUES (24, 2, 260);
INSERT INTO public.history VALUES (23, 5, 619);
INSERT INTO public.history VALUES (32, 2, 804);
INSERT INTO public.history VALUES (31, 5, 808);
INSERT INTO public.history VALUES (34, 2, 2);
INSERT INTO public.history VALUES (33, 5, 2);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (4, 'paul');
INSERT INTO public.users VALUES (5, 'user_1668774371837');
INSERT INTO public.users VALUES (6, 'user_1668774371836');
INSERT INTO public.users VALUES (7, 'user_1668774621780');
INSERT INTO public.users VALUES (8, 'user_1668774621779');
INSERT INTO public.users VALUES (9, 'PAUL');
INSERT INTO public.users VALUES (10, 'user_1668774787007');
INSERT INTO public.users VALUES (11, 'user_1668774787006');
INSERT INTO public.users VALUES (12, 'user_1668774846150');
INSERT INTO public.users VALUES (13, 'user_1668774846149');
INSERT INTO public.users VALUES (14, 'user_1668774993030');
INSERT INTO public.users VALUES (15, 'user_1668774993029');
INSERT INTO public.users VALUES (16, 'q');
INSERT INTO public.users VALUES (17, 'user_1668775220850');
INSERT INTO public.users VALUES (18, 'user_1668775220849');
INSERT INTO public.users VALUES (19, 'user_1668775303431');
INSERT INTO public.users VALUES (20, 'user_1668775303430');
INSERT INTO public.users VALUES (21, 'user_1668775438081');
INSERT INTO public.users VALUES (22, 'user_1668775438080');
INSERT INTO public.users VALUES (23, 'user_1668775466774');
INSERT INTO public.users VALUES (24, 'user_1668775466773');
INSERT INTO public.users VALUES (25, 'user_1668775576390');
INSERT INTO public.users VALUES (26, 'user_1668775576389');
INSERT INTO public.users VALUES (27, 'user_1668775629782');
INSERT INTO public.users VALUES (28, 'user_1668775629781');
INSERT INTO public.users VALUES (29, 'user_1668775701340');
INSERT INTO public.users VALUES (30, 'user_1668775701339');
INSERT INTO public.users VALUES (31, 'user_1668776436793');
INSERT INTO public.users VALUES (32, 'user_1668776436792');
INSERT INTO public.users VALUES (33, 'user_1668776468640');
INSERT INTO public.users VALUES (34, 'user_1668776468639');
INSERT INTO public.users VALUES (35, 'user_1668776592533');
INSERT INTO public.users VALUES (36, 'user_1668776592532');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 36, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

