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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 9);
INSERT INTO public.games VALUES (2, 2, 136);
INSERT INTO public.games VALUES (3, 2, 431);
INSERT INTO public.games VALUES (4, 3, 300);
INSERT INTO public.games VALUES (5, 3, 540);
INSERT INTO public.games VALUES (6, 2, 676);
INSERT INTO public.games VALUES (7, 2, 716);
INSERT INTO public.games VALUES (8, 2, 823);
INSERT INTO public.games VALUES (9, 4, 86);
INSERT INTO public.games VALUES (10, 4, 853);
INSERT INTO public.games VALUES (11, 5, 638);
INSERT INTO public.games VALUES (12, 5, 850);
INSERT INTO public.games VALUES (13, 4, 244);
INSERT INTO public.games VALUES (14, 4, 786);
INSERT INTO public.games VALUES (15, 4, 913);
INSERT INTO public.games VALUES (16, 6, 992);
INSERT INTO public.games VALUES (17, 6, 747);
INSERT INTO public.games VALUES (18, 7, 729);
INSERT INTO public.games VALUES (19, 7, 179);
INSERT INTO public.games VALUES (20, 6, 773);
INSERT INTO public.games VALUES (21, 6, 639);
INSERT INTO public.games VALUES (22, 6, 93);
INSERT INTO public.games VALUES (23, 1, 14);
INSERT INTO public.games VALUES (24, 8, 39);
INSERT INTO public.games VALUES (25, 8, 507);
INSERT INTO public.games VALUES (26, 9, 628);
INSERT INTO public.games VALUES (27, 9, 350);
INSERT INTO public.games VALUES (28, 8, 942);
INSERT INTO public.games VALUES (29, 8, 560);
INSERT INTO public.games VALUES (30, 8, 405);
INSERT INTO public.games VALUES (31, 11, 7);
INSERT INTO public.games VALUES (32, 11, 468);
INSERT INTO public.games VALUES (33, 12, 699);
INSERT INTO public.games VALUES (34, 12, 687);
INSERT INTO public.games VALUES (35, 11, 355);
INSERT INTO public.games VALUES (36, 11, 523);
INSERT INTO public.games VALUES (37, 11, 535);
INSERT INTO public.games VALUES (38, 1, 11);
INSERT INTO public.games VALUES (39, 13, 38);
INSERT INTO public.games VALUES (40, 13, 275);
INSERT INTO public.games VALUES (41, 14, 997);
INSERT INTO public.games VALUES (42, 14, 854);
INSERT INTO public.games VALUES (43, 13, 477);
INSERT INTO public.games VALUES (44, 13, 868);
INSERT INTO public.games VALUES (45, 13, 532);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Lira');
INSERT INTO public.users VALUES (2, 'user_1740128190087');
INSERT INTO public.users VALUES (3, 'user_1740128190086');
INSERT INTO public.users VALUES (4, 'user_1740128666606');
INSERT INTO public.users VALUES (5, 'user_1740128666605');
INSERT INTO public.users VALUES (6, 'user_1740128798650');
INSERT INTO public.users VALUES (7, 'user_1740128798649');
INSERT INTO public.users VALUES (8, 'user_1740129269723');
INSERT INTO public.users VALUES (9, 'user_1740129269722');
INSERT INTO public.users VALUES (10, 'Ona');
INSERT INTO public.users VALUES (11, 'user_1740129740136');
INSERT INTO public.users VALUES (12, 'user_1740129740135');
INSERT INTO public.users VALUES (13, 'user_1740131800266');
INSERT INTO public.users VALUES (14, 'user_1740131800265');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 45, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

