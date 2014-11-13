--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: album; Type: TABLE; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

CREATE TABLE album (
    album_id integer NOT NULL,
    album_name character varying(100) NOT NULL,
    date_released date,
    label_id integer
);


ALTER TABLE public.album OWNER TO deathgrindfreak;

--
-- Name: album_album_id_seq; Type: SEQUENCE; Schema: public; Owner: deathgrindfreak
--

CREATE SEQUENCE album_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_album_id_seq OWNER TO deathgrindfreak;

--
-- Name: album_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deathgrindfreak
--

ALTER SEQUENCE album_album_id_seq OWNED BY album.album_id;


--
-- Name: artist; Type: TABLE; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

CREATE TABLE artist (
    artist_id integer NOT NULL,
    artist_name character varying(100) NOT NULL,
    date_formed date,
    artist_status character varying(10) NOT NULL
);


ALTER TABLE public.artist OWNER TO deathgrindfreak;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: deathgrindfreak
--

CREATE SEQUENCE artist_artist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_artist_id_seq OWNER TO deathgrindfreak;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deathgrindfreak
--

ALTER SEQUENCE artist_artist_id_seq OWNED BY artist.artist_id;


--
-- Name: genres; Type: TABLE; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

CREATE TABLE genres (
    genre_id integer NOT NULL,
    genre_title character varying(100) NOT NULL
);


ALTER TABLE public.genres OWNER TO deathgrindfreak;

--
-- Name: genres_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: deathgrindfreak
--

CREATE SEQUENCE genres_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_genre_id_seq OWNER TO deathgrindfreak;

--
-- Name: genres_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deathgrindfreak
--

ALTER SEQUENCE genres_genre_id_seq OWNED BY genres.genre_id;


--
-- Name: label; Type: TABLE; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

CREATE TABLE label (
    label_id integer NOT NULL,
    label_name character varying(100) NOT NULL
);


ALTER TABLE public.label OWNER TO deathgrindfreak;

--
-- Name: label_label_id_seq; Type: SEQUENCE; Schema: public; Owner: deathgrindfreak
--

CREATE SEQUENCE label_label_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.label_label_id_seq OWNER TO deathgrindfreak;

--
-- Name: label_label_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deathgrindfreak
--

ALTER SEQUENCE label_label_id_seq OWNED BY label.label_id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

CREATE TABLE members (
    member_id integer NOT NULL,
    artist_id integer
);


ALTER TABLE public.members OWNER TO deathgrindfreak;

--
-- Name: members_member_id_seq; Type: SEQUENCE; Schema: public; Owner: deathgrindfreak
--

CREATE SEQUENCE members_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.members_member_id_seq OWNER TO deathgrindfreak;

--
-- Name: members_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deathgrindfreak
--

ALTER SEQUENCE members_member_id_seq OWNED BY members.member_id;


--
-- Name: song; Type: TABLE; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

CREATE TABLE song (
    song_id integer NOT NULL,
    album_id integer NOT NULL,
    artist_id integer NOT NULL,
    song_name character varying(100) NOT NULL
);


ALTER TABLE public.song OWNER TO deathgrindfreak;

--
-- Name: song_song_id_seq; Type: SEQUENCE; Schema: public; Owner: deathgrindfreak
--

CREATE SEQUENCE song_song_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.song_song_id_seq OWNER TO deathgrindfreak;

--
-- Name: song_song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deathgrindfreak
--

ALTER SEQUENCE song_song_id_seq OWNED BY song.song_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

CREATE TABLE users (
    user_id integer NOT NULL,
    user_email character varying(100) NOT NULL,
    user_pass character varying(32) NOT NULL,
    location character varying(60) NOT NULL,
    acive smallint DEFAULT 0::smallint NOT NULL,
    joined date
);


ALTER TABLE public.users OWNER TO deathgrindfreak;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: deathgrindfreak
--

CREATE SEQUENCE users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO deathgrindfreak;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deathgrindfreak
--

ALTER SEQUENCE users_user_id_seq OWNED BY users.user_id;


--
-- Name: album_id; Type: DEFAULT; Schema: public; Owner: deathgrindfreak
--

ALTER TABLE ONLY album ALTER COLUMN album_id SET DEFAULT nextval('album_album_id_seq'::regclass);


--
-- Name: artist_id; Type: DEFAULT; Schema: public; Owner: deathgrindfreak
--

ALTER TABLE ONLY artist ALTER COLUMN artist_id SET DEFAULT nextval('artist_artist_id_seq'::regclass);


--
-- Name: genre_id; Type: DEFAULT; Schema: public; Owner: deathgrindfreak
--

ALTER TABLE ONLY genres ALTER COLUMN genre_id SET DEFAULT nextval('genres_genre_id_seq'::regclass);


--
-- Name: label_id; Type: DEFAULT; Schema: public; Owner: deathgrindfreak
--

ALTER TABLE ONLY label ALTER COLUMN label_id SET DEFAULT nextval('label_label_id_seq'::regclass);


--
-- Name: member_id; Type: DEFAULT; Schema: public; Owner: deathgrindfreak
--

ALTER TABLE ONLY members ALTER COLUMN member_id SET DEFAULT nextval('members_member_id_seq'::regclass);


--
-- Name: song_id; Type: DEFAULT; Schema: public; Owner: deathgrindfreak
--

ALTER TABLE ONLY song ALTER COLUMN song_id SET DEFAULT nextval('song_song_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: deathgrindfreak
--

ALTER TABLE ONLY users ALTER COLUMN user_id SET DEFAULT nextval('users_user_id_seq'::regclass);


--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: deathgrindfreak
--

COPY album (album_id, album_name, date_released, label_id) FROM stdin;
\.


--
-- Name: album_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deathgrindfreak
--

SELECT pg_catalog.setval('album_album_id_seq', 1, false);


--
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: deathgrindfreak
--

COPY artist (artist_id, artist_name, date_formed, artist_status) FROM stdin;
\.


--
-- Name: artist_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deathgrindfreak
--

SELECT pg_catalog.setval('artist_artist_id_seq', 1, false);


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: deathgrindfreak
--

COPY genres (genre_id, genre_title) FROM stdin;
\.


--
-- Name: genres_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deathgrindfreak
--

SELECT pg_catalog.setval('genres_genre_id_seq', 1, false);


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: deathgrindfreak
--

COPY label (label_id, label_name) FROM stdin;
\.


--
-- Name: label_label_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deathgrindfreak
--

SELECT pg_catalog.setval('label_label_id_seq', 1, false);


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: deathgrindfreak
--

COPY members (member_id, artist_id) FROM stdin;
\.


--
-- Name: members_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deathgrindfreak
--

SELECT pg_catalog.setval('members_member_id_seq', 1, false);


--
-- Data for Name: song; Type: TABLE DATA; Schema: public; Owner: deathgrindfreak
--

COPY song (song_id, album_id, artist_id, song_name) FROM stdin;
\.


--
-- Name: song_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deathgrindfreak
--

SELECT pg_catalog.setval('song_song_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: deathgrindfreak
--

COPY users (user_id, user_email, user_pass, location, acive, joined) FROM stdin;
\.


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deathgrindfreak
--

SELECT pg_catalog.setval('users_user_id_seq', 1, false);


--
-- Name: album_pkey; Type: CONSTRAINT; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

ALTER TABLE ONLY album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);


--
-- Name: artist_pkey; Type: CONSTRAINT; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

ALTER TABLE ONLY artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (artist_id);


--
-- Name: genres_pkey; Type: CONSTRAINT; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

ALTER TABLE ONLY genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);


--
-- Name: label_pkey; Type: CONSTRAINT; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

ALTER TABLE ONLY label
    ADD CONSTRAINT label_pkey PRIMARY KEY (label_id);


--
-- Name: members_pkey; Type: CONSTRAINT; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

ALTER TABLE ONLY members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_id);


--
-- Name: song_pkey; Type: CONSTRAINT; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

ALTER TABLE ONLY song
    ADD CONSTRAINT song_pkey PRIMARY KEY (song_id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: deathgrindfreak; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: album_label_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: deathgrindfreak
--

ALTER TABLE ONLY album
    ADD CONSTRAINT album_label_id_fkey FOREIGN KEY (label_id) REFERENCES label(label_id);


--
-- Name: members_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: deathgrindfreak
--

ALTER TABLE ONLY members
    ADD CONSTRAINT members_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES artist(artist_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

