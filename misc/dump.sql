--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: challenges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE challenges (
    id bigint NOT NULL,
    userid bigint,
    game character varying(20),
    createdat timestamp without time zone,
    stake numeric,
    token character varying(42)
);


ALTER TABLE challenges OWNER TO postgres;

--
-- Name: challenges_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE challenges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE challenges_id_seq OWNER TO postgres;

--
-- Name: challenges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE challenges_id_seq OWNED BY challenges.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: firstblood
--

CREATE TABLE users (
    id bigint NOT NULL,
    verified boolean,
    confirmationcode character varying(100),
    sessiontoken character varying(100),
    username character varying(100),
    email character varying(100),
    salt character varying(100),
    saltedpassword character varying(100),
    referralcode character varying(100),
    address character varying(200),
    city character varying(100),
    state character varying(2),
    zip character varying(10),
    birthdate character varying(10),
    lolaccount character varying(20),
    dota2account character varying(20),
    ethereumaccount character varying(42),
    lolmmr numeric,
    dota2mmr numeric
);


ALTER TABLE users OWNER TO firstblood;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: firstblood
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO firstblood;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: firstblood
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: challenges id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY challenges ALTER COLUMN id SET DEFAULT nextval('challenges_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: firstblood
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: challenges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY challenges (id, userid, game, createdat, stake, token) FROM stdin;
1	1	lol	2016-12-24 14:36:45.713	\N	\N
2	2	lol	\N	\N	\N
\.


--
-- Name: challenges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('challenges_id_seq', 2, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: firstblood
--

COPY users (id, verified, confirmationcode, sessiontoken, username, email, salt, saltedpassword, referralcode, address, city, state, zip, birthdate, lolaccount, dota2account, ethereumaccount, lolmmr, dota2mmr) FROM stdin;
1	t	\N	\N	foo	foo@gmail.com	\N	\N	\N	\N	\N	\N	\N	\N	foolol	foodota	fooether	1800	1800
2	t	32132131	\N	bar	bar@gmail	\N	\N	\N	\N	\N	\N	\N	\N	barlol	bardota	barether	1850	1850
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: firstblood
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: challenges challenges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY challenges
    ADD CONSTRAINT challenges_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: firstblood
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: firstblood
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: firstblood
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: challenges; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE challenges TO firstblood;


--
-- Name: challenges_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE challenges_id_seq TO firstblood;


--
-- PostgreSQL database dump complete
--

