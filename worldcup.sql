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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    round character varying(50) NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 'Final', 2018, 420, 421, 4, 2);
INSERT INTO public.games VALUES (34, 'Third Place', 2018, 422, 423, 2, 0);
INSERT INTO public.games VALUES (35, 'Semi-Final', 2018, 421, 423, 2, 1);
INSERT INTO public.games VALUES (36, 'Semi-Final', 2018, 420, 422, 1, 0);
INSERT INTO public.games VALUES (37, 'Quarter-Final', 2018, 421, 424, 3, 2);
INSERT INTO public.games VALUES (38, 'Quarter-Final', 2018, 423, 425, 2, 0);
INSERT INTO public.games VALUES (39, 'Quarter-Final', 2018, 422, 426, 2, 1);
INSERT INTO public.games VALUES (40, 'Quarter-Final', 2018, 420, 427, 2, 0);
INSERT INTO public.games VALUES (41, 'Eighth-Final', 2018, 423, 428, 2, 1);
INSERT INTO public.games VALUES (42, 'Eighth-Final', 2018, 425, 429, 1, 0);
INSERT INTO public.games VALUES (43, 'Eighth-Final', 2018, 422, 430, 3, 2);
INSERT INTO public.games VALUES (44, 'Eighth-Final', 2018, 426, 431, 2, 0);
INSERT INTO public.games VALUES (45, 'Eighth-Final', 2018, 421, 432, 2, 1);
INSERT INTO public.games VALUES (46, 'Eighth-Final', 2018, 424, 433, 2, 1);
INSERT INTO public.games VALUES (47, 'Eighth-Final', 2018, 427, 434, 2, 1);
INSERT INTO public.games VALUES (48, 'Eighth-Final', 2018, 420, 435, 4, 3);
INSERT INTO public.games VALUES (49, 'Final', 2014, 436, 435, 1, 0);
INSERT INTO public.games VALUES (50, 'Third Place', 2014, 437, 426, 3, 0);
INSERT INTO public.games VALUES (51, 'Semi-Final', 2014, 435, 437, 1, 0);
INSERT INTO public.games VALUES (52, 'Semi-Final', 2014, 436, 426, 7, 1);
INSERT INTO public.games VALUES (53, 'Quarter-Final', 2014, 437, 438, 1, 0);
INSERT INTO public.games VALUES (54, 'Quarter-Final', 2014, 435, 422, 1, 0);
INSERT INTO public.games VALUES (55, 'Quarter-Final', 2014, 426, 428, 2, 1);
INSERT INTO public.games VALUES (56, 'Quarter-Final', 2014, 436, 420, 1, 0);
INSERT INTO public.games VALUES (57, 'Eighth-Final', 2014, 426, 439, 2, 1);
INSERT INTO public.games VALUES (58, 'Eighth-Final', 2014, 428, 427, 2, 0);
INSERT INTO public.games VALUES (59, 'Eighth-Final', 2014, 420, 440, 2, 0);
INSERT INTO public.games VALUES (60, 'Eighth-Final', 2014, 436, 441, 2, 1);
INSERT INTO public.games VALUES (61, 'Eighth-Final', 2014, 437, 431, 2, 1);
INSERT INTO public.games VALUES (62, 'Eighth-Final', 2014, 438, 442, 2, 1);
INSERT INTO public.games VALUES (63, 'Eighth-Final', 2014, 435, 429, 1, 0);
INSERT INTO public.games VALUES (64, 'Eighth-Final', 2014, 422, 443, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (420, 'France');
INSERT INTO public.teams VALUES (421, 'Croatia');
INSERT INTO public.teams VALUES (422, 'Belgium');
INSERT INTO public.teams VALUES (423, 'England');
INSERT INTO public.teams VALUES (424, 'Russia');
INSERT INTO public.teams VALUES (425, 'Sweden');
INSERT INTO public.teams VALUES (426, 'Brazil');
INSERT INTO public.teams VALUES (427, 'Uruguay');
INSERT INTO public.teams VALUES (428, 'Colombia');
INSERT INTO public.teams VALUES (429, 'Switzerland');
INSERT INTO public.teams VALUES (430, 'Japan');
INSERT INTO public.teams VALUES (431, 'Mexico');
INSERT INTO public.teams VALUES (432, 'Denmark');
INSERT INTO public.teams VALUES (433, 'Spain');
INSERT INTO public.teams VALUES (434, 'Portugal');
INSERT INTO public.teams VALUES (435, 'Argentina');
INSERT INTO public.teams VALUES (436, 'Germany');
INSERT INTO public.teams VALUES (437, 'Netherlands');
INSERT INTO public.teams VALUES (438, 'Costa Rica');
INSERT INTO public.teams VALUES (439, 'Chile');
INSERT INTO public.teams VALUES (440, 'Nigeria');
INSERT INTO public.teams VALUES (441, 'Algeria');
INSERT INTO public.teams VALUES (442, 'Greece');
INSERT INTO public.teams VALUES (443, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 443, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

