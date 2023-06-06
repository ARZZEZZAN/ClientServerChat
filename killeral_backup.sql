--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.3

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
-- Name: chat; Type: SCHEMA; Schema: -; Owner: killeral
--

CREATE SCHEMA chat;


ALTER SCHEMA chat OWNER TO killeral;

--
-- Name: email; Type: SCHEMA; Schema: -; Owner: killeral
--

CREATE SCHEMA email;


ALTER SCHEMA email OWNER TO killeral;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: message; Type: TABLE; Schema: chat; Owner: killeral
--

CREATE TABLE chat.message (
    id integer NOT NULL,
    ownerid integer NOT NULL,
    messagetext text NOT NULL,
    datetime timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE chat.message OWNER TO killeral;

--
-- Name: message_id_seq; Type: SEQUENCE; Schema: chat; Owner: killeral
--

CREATE SEQUENCE chat.message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE chat.message_id_seq OWNER TO killeral;

--
-- Name: message_id_seq; Type: SEQUENCE OWNED BY; Schema: chat; Owner: killeral
--

ALTER SEQUENCE chat.message_id_seq OWNED BY chat.message.id;


--
-- Name: user; Type: TABLE; Schema: chat; Owner: killeral
--

CREATE TABLE chat."user" (
    id integer NOT NULL,
    login character varying(50) NOT NULL,
    password character varying(100) NOT NULL
);


ALTER TABLE chat."user" OWNER TO killeral;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: chat; Owner: killeral
--

CREATE SEQUENCE chat.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE chat.user_id_seq OWNER TO killeral;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: chat; Owner: killeral
--

ALTER SEQUENCE chat.user_id_seq OWNED BY chat."user".id;


--
-- Name: user; Type: TABLE; Schema: email; Owner: killeral
--

CREATE TABLE email."user" (
    id integer NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(50) NOT NULL
);


ALTER TABLE email."user" OWNER TO killeral;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: email; Owner: killeral
--

CREATE SEQUENCE email.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE email.user_id_seq OWNER TO killeral;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: email; Owner: killeral
--

ALTER SEQUENCE email.user_id_seq OWNED BY email."user".id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: killeral
--

CREATE TABLE public.users (
    id integer NOT NULL,
    firstname character varying(30),
    lastname character varying(30),
    age integer
);


ALTER TABLE public.users OWNER TO killeral;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: killeral
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO killeral;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: killeral
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: v_generated_dates; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_generated_dates AS
 SELECT date(generate_series(('2022-01-01'::date)::timestamp with time zone, ('2022-01-31'::date)::timestamp with time zone, '1 day'::interval)) AS generated_date
  ORDER BY (date(generate_series(('2022-01-01'::date)::timestamp with time zone, ('2022-01-31'::date)::timestamp with time zone, '1 day'::interval)));


ALTER TABLE public.v_generated_dates OWNER TO postgres;

--
-- Name: message id; Type: DEFAULT; Schema: chat; Owner: killeral
--

ALTER TABLE ONLY chat.message ALTER COLUMN id SET DEFAULT nextval('chat.message_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: chat; Owner: killeral
--

ALTER TABLE ONLY chat."user" ALTER COLUMN id SET DEFAULT nextval('chat.user_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: email; Owner: killeral
--

ALTER TABLE ONLY email."user" ALTER COLUMN id SET DEFAULT nextval('email.user_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: killeral
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: message; Type: TABLE DATA; Schema: chat; Owner: killeral
--

COPY chat.message (id, ownerid, messagetext, datetime) FROM stdin;
1	1	aa	2023-06-03 17:43:47.946785
2	1	a	2023-06-03 17:44:46.053418
3	1	a	2023-06-03 17:44:48.603599
4	1	a	2023-06-03 17:44:49.133585
5	1	a	2023-06-03 17:44:49.595271
6	1	a	2023-06-03 17:44:50.06003
7	1	gefg2r\t	2023-06-03 17:45:04.444083
8	1	aa	2023-06-05 08:59:00.137364
9	1	a	2023-06-05 08:59:00.639681
10	1	a	2023-06-05 08:59:01.064557
11	1	a	2023-06-05 08:59:01.408624
12	1	a	2023-06-05 08:59:01.783828
13	1	a	2023-06-05 08:59:02.224662
14	1	a	2023-06-05 08:59:02.656541
15	1	a	2023-06-05 08:59:03.240858
16	1	a	2023-06-05 08:59:03.679693
17	1	assasasasas	2023-06-05 08:59:05.233339
18	1	asa	2023-06-05 08:59:05.792892
19	1	sa	2023-06-05 08:59:05.968716
20	1	s	2023-06-05 08:59:06.103739
21	1	asasasa	2023-06-05 08:59:06.88116
22	1	sasa	2023-06-05 08:59:07.537151
23	1	sa	2023-06-05 08:59:07.77664
24	1	sa	2023-06-05 08:59:08.000343
25	1	ssa	2023-06-05 08:59:09.281212
26	1	aaa	2023-06-05 09:08:07.192957
27	1	aa	2023-06-05 09:08:08.543382
28	1	sadaf	2023-06-05 09:08:09.479426
29	1	dad	2023-06-05 09:08:09.839153
30	1	f	2023-06-05 09:08:09.966919
31	1	af	2023-06-05 09:08:10.15898
32	1	afd	2023-06-05 09:08:10.511124
33	1	asd	2023-06-05 09:08:10.647161
34	1	s	2023-06-05 09:08:10.774953
35	1	dsa	2023-06-05 09:08:10.904304
36	1	df	2023-06-05 09:08:11.021967
37	1	sa	2023-06-05 09:08:11.143042
38	1	d	2023-06-05 09:08:11.271144
39	1	asd	2023-06-05 09:08:11.415135
40	1	asdasdsadsadasdsadsadas	2023-06-05 09:08:13.558599
41	1	dsdadsa	2023-06-05 09:08:14.735101
42	1	sda	2023-06-05 09:08:15.198367
43	1	dsa	2023-06-05 09:08:15.454188
44	1	dsa	2023-06-05 09:08:15.630208
45	1	aa	2023-06-05 09:35:32.031477
46	1	a	2023-06-05 09:35:32.662003
47	1	a	2023-06-05 09:35:50.838504
48	1	a	2023-06-05 09:35:51.982407
49	1	a	2023-06-05 09:35:52.878448
50	1	a	2023-06-05 09:35:53.510159
51	1	a	2023-06-05 09:35:54.077496
52	1	a	2023-06-05 09:35:54.56603
53	1	a	2023-06-05 09:35:55.038333
54	1	wewqeqe	2023-06-05 09:35:56.110547
55	1	aaa	2023-06-05 09:46:08.33356
56	1	aa	2023-06-05 09:51:58.437179
57	1	fdfa	2023-06-05 10:20:24.511344
58	1	sdvd	2023-06-05 10:43:24.743548
59	1	qwfwq	2023-06-05 10:43:25.942034
60	1	a	2023-06-05 11:09:21.848254
61	1	a	2023-06-05 11:09:32.206992
62	1	sasasasa	2023-06-05 11:09:35.830892
63	1	sasasa	2023-06-05 11:09:36.974932
64	1	sasa	2023-06-05 11:09:37.76667
65	1	sasa	2023-06-05 11:09:38.263075
66	1	sa	2023-06-05 11:09:38.799772
67	1	sas	2023-06-05 11:09:39.206755
68	1	as	2023-06-05 11:09:39.446743
69	1	asa	2023-06-05 11:09:39.766235
70	1	sa	2023-06-05 11:09:40.061871
71	1	sa	2023-06-05 11:09:40.325749
72	1	s	2023-06-05 11:09:40.541787
73	1	as	2023-06-05 11:09:40.749794
74	1	a	2023-06-05 11:09:40.901815
75	1	s	2023-06-05 11:09:41.065458
76	1	as	2023-06-05 11:09:41.311233
77	1	as	2023-06-05 11:09:41.478713
78	1	a	2023-06-05 11:09:41.629791
79	1	s	2023-06-05 11:09:41.862875
80	1	a	2023-06-05 11:09:42.06283
81	1	s	2023-06-05 11:09:42.478818
82	1	s	2023-06-05 11:09:42.734698
83	1		2023-06-05 11:09:43.051259
84	1	sa	2023-06-05 11:09:43.302765
85	1	sa	2023-06-05 11:09:43.502876
86	1		2023-06-05 11:09:43.737457
87	1	fqfeq	2023-06-05 12:00:07.843175
88	1	fqefeq	2023-06-05 12:00:08.937052
89	1	fqe	2023-06-05 12:00:09.136722
90	1	feq	2023-06-05 12:00:09.31259
91	1	feq	2023-06-05 12:00:09.480591
92	1	fe	2023-06-05 12:00:09.672638
93	1	qfeq	2023-06-05 12:00:09.880486
94	1	feq	2023-06-05 12:00:10.087057
95	1	feq	2023-06-05 12:00:10.288144
96	1	f	2023-06-05 12:00:10.495929
97	1	qf	2023-06-05 12:00:10.74379
98	1	eqf	2023-06-05 12:00:10.959828
99	1	eqf	2023-06-05 12:00:11.159836
100	1	eqf	2023-06-05 12:00:11.375333
101	1	eq	2023-06-05 12:00:11.567238
102	1	feq	2023-06-05 12:00:11.759204
103	1	feq	2023-06-05 12:00:11.966999
104	1		2023-06-05 12:00:12.402904
105	1	feq	2023-06-05 12:00:12.974965
106	1	feq	2023-06-05 12:00:13.431472
107	1	fq	2023-06-05 12:00:13.941503
108	1	feq	2023-06-05 12:00:14.405929
109	1	feq	2023-06-05 12:00:14.926161
110	1	feq	2023-06-05 12:00:15.462114
111	1	ef	2023-06-05 12:00:15.998743
112	1	qfe	2023-06-05 12:00:16.477208
113	1	feqq	2023-06-05 12:00:17.005469
114	1	feq	2023-06-05 12:00:17.540132
115	1	qef	2023-06-05 12:00:18.069401
116	1	qfe	2023-06-05 12:00:18.580604
117	1	feq	2023-06-05 12:00:19.06835
118	1	feq	2023-06-05 12:00:19.54012
119	1	fe	2023-06-05 12:00:20.035283
120	1	fe	2023-06-05 12:00:20.539758
121	1	dfqfwq	2023-06-05 12:00:52.771734
122	1	feqfeq	2023-06-05 12:00:53.984827
123	1	fq	2023-06-05 12:00:55.832741
124	1	caca	2023-06-05 12:04:33.964357
125	1	dssdada	2023-06-05 12:04:35.049907
126	1	dsadas	2023-06-05 12:04:35.873676
127	1	da	2023-06-05 12:04:36.297447
128	1	sd	2023-06-05 12:04:37.130974
129	1		2023-06-05 12:04:37.629678
130	1	d	2023-06-05 12:04:38.569886
131	1	a	2023-06-05 12:04:45.953801
132	1	a	2023-06-05 12:04:46.617471
133	1	fqwfqw	2023-06-05 12:04:47.401664
134	1		2023-06-05 12:04:48.406219
135	1	dwq\t	2023-06-05 12:04:49.209721
136	1	dw	2023-06-05 12:04:49.76977
137	1	dwq	2023-06-05 12:04:50.241511
138	1	dwq	2023-06-05 12:04:50.817759
139	1	dwq	2023-06-05 12:04:51.234441
140	1	fwq	2023-06-05 12:04:51.689471
141	1	dwq	2023-06-05 12:04:52.20173
142	1	Привет , я гей	2023-06-05 12:05:01.162133
143	1	Я тоже!	2023-06-05 12:05:08.778138
144	1	учше	2023-06-05 12:05:32.490318
145	1	d	2023-06-05 12:12:01.19053
146	1	d	2023-06-05 12:12:01.372605
147	1	d	2023-06-05 12:12:01.540683
148	1	d	2023-06-05 12:12:01.708813
149	1	d	2023-06-05 12:12:01.860755
150	1	dd	2023-06-05 12:12:02.004758
151	1		2023-06-05 12:12:02.14492
152	1	d	2023-06-05 12:12:02.269087
153	1	dd	2023-06-05 12:12:02.396623
154	1		2023-06-05 12:12:02.54518
155	1	d	2023-06-05 12:12:02.660736
156	1	d	2023-06-05 12:12:02.780893
157	1	d	2023-06-05 12:12:02.916821
158	1	d	2023-06-05 12:12:03.03577
159	1	d	2023-06-05 12:12:03.163561
160	1		2023-06-05 12:12:03.289112
161	1	d	2023-06-05 12:12:03.436521
162	1	d	2023-06-05 12:12:03.580741
163	1	d	2023-06-05 12:12:03.732862
164	1	dd	2023-06-05 12:12:03.885918
165	1		2023-06-05 12:12:04.00897
166	1	d	2023-06-05 12:12:06.22089
167	1	fqf	2023-06-05 12:12:13.173206
168	1	\\fqefqe	2023-06-05 12:12:15.197203
169	1	f	2023-06-05 12:12:17.909173
170	1	f	2023-06-05 12:12:18.621039
171	1	Ghbdtn	2023-06-05 12:12:21.221312
172	1	Привет, я ш�гей	2023-06-05 12:12:26.925423
173	1	z pyf.	2023-06-05 12:12:32.373412
174	1	я знаю	2023-06-05 12:12:34.757573
175	1	yes i know	2023-06-05 12:12:55.372328
176	1	dwqdwqdwq	2023-06-05 12:12:58.27748
177	1	dfeq	2023-06-05 14:16:21.812904
178	1	 Я марк, я гей	2023-06-05 14:18:33.111896
179	1	я армен, я натура�л	2023-06-05 14:18:42.736111
180	1	учexit	2023-06-05 14:19:29.441388
181	1	aaaaaa	2023-06-05 15:24:41.156084
182	1	geqgqegefzvrASZX	2023-06-05 15:24:57.934129
183	2	aa	2023-06-05 15:28:31.6145
184	2	a	2023-06-05 15:28:32.492641
185	2	a	2023-06-05 15:28:32.996501
186	1	dqfqfeqfqe	2023-06-05 15:28:53.749542
187	2	cdefqfeq	2023-06-05 15:32:22.287643
188	2	fqedqafedFVRAFWE	2023-06-05 15:32:24.872274
189	2	FE	2023-06-05 15:32:25.326451
190	2		2023-06-05 15:32:25.499296
191	2	WDWQDQW	2023-06-05 15:32:26.231621
192	2	DQDQSWQ	2023-06-05 15:32:27.263747
193	2	DADSFAFGRGRWGQFA	2023-06-05 15:32:29.463881
194	2	DQWDWQDWQDWQ	2023-06-05 15:32:30.624198
195	2	DWQGLOJ\tPJ8JHJHQGEIQGOQEG[Q]QE	2023-06-05 15:32:34.480034
196	2	aaa	2023-06-05 15:38:14.396092
197	2	Hello!	2023-06-05 15:38:27.01872
198	6	aa	2023-06-05 16:03:56.46596
199	2	aa	2023-06-05 16:05:08.458474
200	6	Armen	2023-06-05 16:05:11.058525
201	6	Hello	2023-06-05 16:05:14.746637
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: chat; Owner: killeral
--

COPY chat."user" (id, login, password) FROM stdin;
1	aaa	$2a$10$c.F5QK01MSiHUJ9WLZ8/lO9JwGOh34QyZHOL0u3eI65Pvw3MCdPom
2	Markus	$2a$10$J2ey6nQSHiEKsFwBTA.fWuybY30yesoFGZ/zhhbWnY695EeSlj3s2
5	aa	$2a$10$RWlpKErLKDP7H5bSA0hA9eqa64DguL5pAzE43cHavHXLIczUctVym
6	Armen	$2a$10$z8NE6u.73HyQ7RMu9yOgBOPvGMi/CA5FcRPWtNLe8ZwVfApWii8bC
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: email; Owner: killeral
--

COPY email."user" (id, email, password) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: killeral
--

COPY public.users (id, firstname, lastname, age) FROM stdin;
2	Vardan	Arzumanyan	170
3	Temirkan	Abitov	180
1	Armen	Arzumanyan	170
\.


--
-- Name: message_id_seq; Type: SEQUENCE SET; Schema: chat; Owner: killeral
--

SELECT pg_catalog.setval('chat.message_id_seq', 201, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: chat; Owner: killeral
--

SELECT pg_catalog.setval('chat.user_id_seq', 6, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: email; Owner: killeral
--

SELECT pg_catalog.setval('email.user_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: killeral
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: message message_pkey; Type: CONSTRAINT; Schema: chat; Owner: killeral
--

ALTER TABLE ONLY chat.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);


--
-- Name: user user_login_key; Type: CONSTRAINT; Schema: chat; Owner: killeral
--

ALTER TABLE ONLY chat."user"
    ADD CONSTRAINT user_login_key UNIQUE (login);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: chat; Owner: killeral
--

ALTER TABLE ONLY chat."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user user_email_key; Type: CONSTRAINT; Schema: email; Owner: killeral
--

ALTER TABLE ONLY email."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: email; Owner: killeral
--

ALTER TABLE ONLY email."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: killeral
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: message message_ownerid_fkey; Type: FK CONSTRAINT; Schema: chat; Owner: killeral
--

ALTER TABLE ONLY chat.message
    ADD CONSTRAINT message_ownerid_fkey FOREIGN KEY (ownerid) REFERENCES chat."user"(id);


--
-- PostgreSQL database dump complete
--

