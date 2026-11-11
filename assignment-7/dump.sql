--
-- PostgreSQL database dump
--

\restrict noD1JaiS1aQJpf8Fg7p9g1FR0s2TRghFRTo26u4DAcFOaWIti2epGnJHTy27H3g

-- Dumped from database version 16.15 (Debian 16.15-1.pgdg13+2)
-- Dumped by pg_dump version 16.15 (Debian 16.15-1.pgdg13+2)

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
-- Name: channels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.channels (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.channels OWNER TO postgres;

--
-- Name: channels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.channels ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.channels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    content text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.messages ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying(32) NOT NULL,
    country character(2) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: channels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.channels (id, name, created_at) FROM stdin;
1	general	2026-11-11 19:54:19.440353+00
2	homework	2026-11-11 19:54:19.440353+00
3	games	2026-11-11 19:54:19.440353+00
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.messages (id, user_id, channel_id, content, created_at) FROM stdin;
1	1	1	Test message number 1	2026-11-11 19:33:42.854873+00
2	2	1	Test message number 2	2026-11-11 19:34:42.854873+00
3	3	1	Test message number 3	2026-11-11 19:35:42.854873+00
4	1	1	Test message number 4	2026-11-11 19:36:42.854873+00
5	2	1	Test message number 5	2026-11-11 19:37:42.854873+00
6	3	1	Test message number 6	2026-11-11 19:38:42.854873+00
7	1	1	Test message number 7	2026-11-11 19:39:42.854873+00
8	2	1	Test message number 8	2026-11-11 19:40:42.854873+00
9	3	1	Test message number 9	2026-11-11 19:41:42.854873+00
10	1	1	Test message number 10	2026-11-11 19:42:42.854873+00
11	2	1	Test message number 11	2026-11-11 19:43:42.854873+00
12	3	1	Test message number 12	2026-11-11 19:44:42.854873+00
13	1	1	Test message number 13	2026-11-11 19:45:42.854873+00
14	2	1	Test message number 14	2026-11-11 19:46:42.854873+00
15	3	1	Test message number 15	2026-11-11 19:47:42.854873+00
16	1	1	Test message number 16	2026-11-11 19:48:42.854873+00
17	2	1	Test message number 17	2026-11-11 19:49:42.854873+00
18	3	1	Test message number 18	2026-11-11 19:50:42.854873+00
19	1	1	Test message number 19	2026-11-11 19:51:42.854873+00
20	2	1	Test message number 20	2026-11-11 19:52:42.854873+00
21	3	1	Test message number 21	2026-11-11 19:53:42.854873+00
22	1	1	Test message number 22	2026-11-11 19:54:42.854873+00
23	2	1	Test message number 23	2026-11-11 19:55:42.854873+00
24	3	1	Test message number 24	2026-11-11 19:56:42.854873+00
25	1	1	Test message number 25	2026-11-11 19:57:42.854873+00
26	1	2	Hello from homework channel	2026-11-11 19:58:17.638532+00
27	2	2	I have a question about homework	2026-11-11 19:58:17.638532+00
28	3	3	Who wants to play?	2026-11-11 19:58:17.638532+00
29	1	3	I am ready to play	2026-11-11 19:58:17.638532+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, country) FROM stdin;
1	ivan	BG
2	maria	BG
3	george	US
4	alex	DE
\.


--
-- Name: channels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.channels_id_seq', 3, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messages_id_seq', 29, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: channels channels_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channels
    ADD CONSTRAINT channels_name_key UNIQUE (name);


--
-- Name: channels channels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: idx_messages_channel_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_messages_channel_time ON public.messages USING btree (channel_id, created_at DESC, id DESC);


--
-- Name: idx_messages_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_messages_user ON public.messages USING btree (user_id);


--
-- Name: messages messages_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES public.channels(id);


--
-- Name: messages messages_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

\unrestrict noD1JaiS1aQJpf8Fg7p9g1FR0s2TRghFRTo26u4DAcFOaWIti2epGnJHTy27H3g

