--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "user";

--
-- Name: categorie_cvs; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.categorie_cvs (
    id bigint NOT NULL,
    categorie character varying,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.categorie_cvs OWNER TO "user";

--
-- Name: categorie_cvs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.categorie_cvs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorie_cvs_id_seq OWNER TO "user";

--
-- Name: categorie_cvs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.categorie_cvs_id_seq OWNED BY public.categorie_cvs.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    commentaire text,
    user_id character varying,
    cv_id character varying,
    lu character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO "user";

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO "user";

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: cvs; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.cvs (
    id bigint NOT NULL,
    "nomPrenom" character varying,
    nom character varying,
    prenom character varying,
    email character varying,
    telephone character varying,
    age character varying,
    adresse character varying,
    facebook character varying,
    linkedin character varying,
    "aExperience" character varying,
    nationalite character varying,
    "descriptionProfile" text,
    contrat text,
    "national" text,
    pretention character varying,
    status boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    categorie_cv_id integer,
    photo text,
    disponibility character varying,
    sous_category_id integer,
    resume text,
    telephone1 character varying,
    telephone2 character varying,
    datedispo character varying
);


ALTER TABLE public.cvs OWNER TO "user";

--
-- Name: cvs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.cvs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cvs_id_seq OWNER TO "user";

--
-- Name: cvs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.cvs_id_seq OWNED BY public.cvs.id;


--
-- Name: demand_logins; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.demand_logins (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    object character varying,
    numero character varying,
    description text,
    pays text,
    adresse text,
    ip text,
    prenom character varying,
    site character varying,
    priorisation character varying,
    post character varying,
    lu boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.demand_logins OWNER TO "user";

--
-- Name: demand_logins_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.demand_logins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demand_logins_id_seq OWNER TO "user";

--
-- Name: demand_logins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.demand_logins_id_seq OWNED BY public.demand_logins.id;


--
-- Name: diplomes; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.diplomes (
    id bigint NOT NULL,
    ecole character varying,
    datecole character varying,
    datefinecole character varying,
    descriptionecole text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cv_id integer
);


ALTER TABLE public.diplomes OWNER TO "user";

--
-- Name: diplomes_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.diplomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.diplomes_id_seq OWNER TO "user";

--
-- Name: diplomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.diplomes_id_seq OWNED BY public.diplomes.id;


--
-- Name: entretiens; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.entretiens (
    id bigint NOT NULL,
    user_id integer,
    cv_id integer,
    drdv character varying,
    hrdv character varying,
    lu boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.entretiens OWNER TO "user";

--
-- Name: entretiens_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.entretiens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entretiens_id_seq OWNER TO "user";

--
-- Name: entretiens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.entretiens_id_seq OWNED BY public.entretiens.id;


--
-- Name: experiences; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.experiences (
    id bigint NOT NULL,
    societe character varying,
    datexp character varying,
    datefin character varying,
    descriptionexp text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cv_id integer
);


ALTER TABLE public.experiences OWNER TO "user";

--
-- Name: experiences_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.experiences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.experiences_id_seq OWNER TO "user";

--
-- Name: experiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.experiences_id_seq OWNED BY public.experiences.id;


--
-- Name: favorites; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.favorites (
    id bigint NOT NULL,
    user_id integer,
    cv_id integer,
    lu boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.favorites OWNER TO "user";

--
-- Name: favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.favorites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favorites_id_seq OWNER TO "user";

--
-- Name: favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.favorites_id_seq OWNED BY public.favorites.id;


--
-- Name: informatiques; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.informatiques (
    id bigint NOT NULL,
    logiciel character varying,
    progressinfo integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cv_id integer
);


ALTER TABLE public.informatiques OWNER TO "user";

--
-- Name: informatiques_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.informatiques_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.informatiques_id_seq OWNER TO "user";

--
-- Name: informatiques_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.informatiques_id_seq OWNED BY public.informatiques.id;


--
-- Name: langages; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.langages (
    id bigint NOT NULL,
    langue character varying,
    progresslangue integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cv_id integer
);


ALTER TABLE public.langages OWNER TO "user";

--
-- Name: langages_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.langages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.langages_id_seq OWNER TO "user";

--
-- Name: langages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.langages_id_seq OWNED BY public.langages.id;


--
-- Name: loisirs; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.loisirs (
    id bigint NOT NULL,
    loisir character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cv_id integer
);


ALTER TABLE public.loisirs OWNER TO "user";

--
-- Name: loisirs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.loisirs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loisirs_id_seq OWNER TO "user";

--
-- Name: loisirs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.loisirs_id_seq OWNED BY public.loisirs.id;


--
-- Name: profil_ideals; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.profil_ideals (
    id bigint NOT NULL,
    description text,
    user_id integer,
    lu boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.profil_ideals OWNER TO "user";

--
-- Name: profil_ideals_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.profil_ideals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profil_ideals_id_seq OWNER TO "user";

--
-- Name: profil_ideals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.profil_ideals_id_seq OWNED BY public.profil_ideals.id;


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.ratings (
    id bigint NOT NULL,
    rate integer,
    user_id integer,
    cv_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ratings OWNER TO "user";

--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_id_seq OWNER TO "user";

--
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "user";

--
-- Name: sous_categories; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.sous_categories (
    id bigint NOT NULL,
    categorie character varying,
    categorie_cv_id integer,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.sous_categories OWNER TO "user";

--
-- Name: sous_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.sous_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sous_categories_id_seq OWNER TO "user";

--
-- Name: sous_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.sous_categories_id_seq OWNED BY public.sous_categories.id;


--
-- Name: user_categorie_cvs; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.user_categorie_cvs (
    id bigint NOT NULL,
    user_id integer,
    categorie_cv_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.user_categorie_cvs OWNER TO "user";

--
-- Name: user_categorie_cvs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.user_categorie_cvs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_categorie_cvs_id_seq OWNER TO "user";

--
-- Name: user_categorie_cvs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.user_categorie_cvs_id_seq OWNED BY public.user_categorie_cvs.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    prenom character varying,
    notifier boolean DEFAULT true,
    email character varying,
    role character varying,
    phone character varying,
    societe character varying,
    site character varying,
    post character varying,
    priorisation character varying,
    pass character varying,
    expire date,
    pays character varying,
    adresse text,
    account boolean DEFAULT false,
    password_digest character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    authentication_token text
);


ALTER TABLE public.users OWNER TO "user";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "user";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: views; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.views (
    id bigint NOT NULL,
    cv_id integer,
    user_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.views OWNER TO "user";

--
-- Name: views_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.views_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.views_id_seq OWNER TO "user";

--
-- Name: views_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.views_id_seq OWNED BY public.views.id;


--
-- Name: categorie_cvs id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.categorie_cvs ALTER COLUMN id SET DEFAULT nextval('public.categorie_cvs_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: cvs id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.cvs ALTER COLUMN id SET DEFAULT nextval('public.cvs_id_seq'::regclass);


--
-- Name: demand_logins id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.demand_logins ALTER COLUMN id SET DEFAULT nextval('public.demand_logins_id_seq'::regclass);


--
-- Name: diplomes id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.diplomes ALTER COLUMN id SET DEFAULT nextval('public.diplomes_id_seq'::regclass);


--
-- Name: entretiens id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.entretiens ALTER COLUMN id SET DEFAULT nextval('public.entretiens_id_seq'::regclass);


--
-- Name: experiences id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.experiences ALTER COLUMN id SET DEFAULT nextval('public.experiences_id_seq'::regclass);


--
-- Name: favorites id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.favorites ALTER COLUMN id SET DEFAULT nextval('public.favorites_id_seq'::regclass);


--
-- Name: informatiques id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.informatiques ALTER COLUMN id SET DEFAULT nextval('public.informatiques_id_seq'::regclass);


--
-- Name: langages id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.langages ALTER COLUMN id SET DEFAULT nextval('public.langages_id_seq'::regclass);


--
-- Name: loisirs id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.loisirs ALTER COLUMN id SET DEFAULT nextval('public.loisirs_id_seq'::regclass);


--
-- Name: profil_ideals id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.profil_ideals ALTER COLUMN id SET DEFAULT nextval('public.profil_ideals_id_seq'::regclass);


--
-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- Name: sous_categories id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.sous_categories ALTER COLUMN id SET DEFAULT nextval('public.sous_categories_id_seq'::regclass);


--
-- Name: user_categorie_cvs id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_categorie_cvs ALTER COLUMN id SET DEFAULT nextval('public.user_categorie_cvs_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: views id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.views ALTER COLUMN id SET DEFAULT nextval('public.views_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-10-18 13:43:22.042298	2023-10-18 13:43:22.042298
schema_sha1	5136930c37371605408e48bf346639fb1dcff30a	2024-03-19 08:42:02.050428	2024-03-19 10:49:12.703935
\.


--
-- Data for Name: categorie_cvs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.categorie_cvs (id, categorie, description, created_at, updated_at) FROM stdin;
1	Télésecretaire Médical	Poste de télésecretaire médical	2024-03-19 10:58:44.612809	2024-03-19 10:58:44.612809
2	Secrétaire de Direction	Secrétaire de Direction	2024-06-06 08:29:47.168866	2024-06-06 08:29:47.168866
3	Finance et Comptabilité	Finance et Comptabilité	2024-06-06 08:29:59.348062	2024-06-06 08:29:59.348062
4	Ressources Humaines	Ressources Humaines	2024-06-06 08:30:44.956526	2024-06-06 08:30:44.956526
5	Marketing et Communication	Marketing et Communication	2024-06-06 08:31:38.973148	2024-06-06 08:31:38.973148
6	Ventes et Commercial	Ventes et Commercial	2024-06-06 08:32:40.125884	2024-06-06 08:32:40.125884
7	Informatique et Systèmes d'Information	Informatique et Systèmes d'Information	2024-06-06 08:33:17.351301	2024-06-06 08:33:17.351301
8	Production et Logistique	Production et Logistique	2024-06-06 08:34:08.228923	2024-06-06 08:34:08.228923
9	Qualité et Contrôle	Qualité et Contrôle	2024-06-06 08:34:43.604854	2024-06-06 08:34:43.604854
10	Service Client	Service Client	2024-06-06 08:35:22.965703	2024-06-06 08:35:22.965703
11	Stratégie et Développement	Stratégie et Développement	2024-06-06 08:36:03.812243	2024-06-06 08:36:03.812243
12	Rédaction web	Rédaction web	2024-06-06 08:38:37.446313	2024-06-06 08:38:37.446313
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.comments (id, commentaire, user_id, cv_id, lu, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: cvs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.cvs (id, "nomPrenom", nom, prenom, email, telephone, age, adresse, facebook, linkedin, "aExperience", nationalite, "descriptionProfile", contrat, "national", pretention, status, created_at, updated_at, categorie_cv_id, photo, disponibility, sous_category_id, resume, telephone1, telephone2, datedispo) FROM stdin;
1302	Nirina Voahirana	\N	\N	voahiranaeko@yahoo.fr	034 14 719 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:49.562997	2024-06-12 11:42:49.562997	\N	\N	\N	\N	activ__resume_1718192569.pdf	\N	\N	\N
2	RALAIMIHOATR	\N	Nambinina	nambininaralaimihoatra@gmail.com	+261.327696088	1995				3 ans	Madagascar	Les   dates de valeur afférentes aux virements émis et reçus,  -   Le   montant de l’opération effectuée,  -   Des   frais et commissions, ainsi que les procédures et voies de recours  disponibles en cas de contestation.  Les   banques   doivent   aussi   communique r   à   leurs   clients,   après   chaque  transfert de fonds   :  -   Le   montant de l’opération effectuée.	CDI	Malgache	800000 Ariary	f	2024-06-10 10:51:21.435784	2024-06-10 10:56:40.460835	12	\N	Disponible immédiat	\N	activ__resume_1718016681.pdf			
14	Madagascar Call	\N	\N	rojoromaine@gmail.com	034 08 102 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:23:00.707541	2024-06-12 11:23:00.707541	\N	\N	\N	\N	activ__resume_1718191380.pdf	\N	\N	\N
15	Inconnu	\N	\N	miandrirazaa@gmail.com	032 65 624 09	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:23:01.237685	2024-06-12 11:23:01.237685	\N	\N	\N	\N	activ__resume_1718191381.pdf	\N	\N	\N
16	Satelia Fanantenana	\N	\N	satelia.fanant@gmail.com	034 80 708 59	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:23:01.519289	2024-06-12 11:23:01.519289	\N	\N	\N	\N	activ__resume_1718191381.pdf	\N	\N	\N
17	Madagascar Call	\N	\N	rojoromaine@gmail.com	034 08 102 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:07.495496	2024-06-12 11:34:07.495496	\N	\N	\N	\N	activ__resume_1718192047.pdf	\N	\N	\N
18	Inconnu	\N	\N	miandrirazaa@gmail.com	032 65 624 09	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:08.011121	2024-06-12 11:34:08.011121	\N	\N	\N	\N	activ__resume_1718192048.pdf	\N	\N	\N
19	Satelia Fanantenana	\N	\N	satelia.fanant@gmail.com	034 80 708 59	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:08.307096	2024-06-12 11:34:08.307096	\N	\N	\N	\N	activ__resume_1718192048.pdf	\N	\N	\N
20	Public Ivato	\N	\N	sm.nirina1987@gmail.com	032 80 283 00	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:08.836132	2024-06-12 11:34:08.836132	\N	\N	\N	\N	activ__resume_1718192048.pdf	\N	\N	\N
21	Inconnu	\N	\N	mainoy@ao.om	21352659	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:09.084215	2024-06-12 11:34:09.084215	\N	\N	\N	\N	activ__resume_1718192049.pdf	\N	\N	\N
22	Tahiana Malala	\N	\N	malalapinksandria@gmail.com	034 74 092 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:09.383865	2024-06-12 11:34:09.383865	\N	\N	\N	\N	activ__resume_1718192049.pdf	\N	\N	\N
23	Hautes Etudes	\N	\N	ravaka.rajoelina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:09.72906	2024-06-12 11:34:09.72906	\N	\N	\N	\N	activ__resume_1718192049.pdf	\N	\N	\N
24	Antananarivo Madagascar	\N	\N	narsa.vahiny@gmail.com	261327844748	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:10.207393	2024-06-12 11:34:10.207393	\N	\N	\N	\N	activ__resume_1718192050.pdf	\N	\N	\N
25	Andoniaina Njara	\N	\N	andoniainanjara@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:10.474307	2024-06-12 11:34:10.474307	\N	\N	\N	\N	activ__resume_1718192050.pdf	\N	\N	\N
26	Momanirina Christiana	\N	\N	\N	034 42 379 53	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:10.766382	2024-06-12 11:34:10.766382	\N	\N	\N	\N	activ__resume_1718192050.pdf	\N	\N	\N
27	Ignite Program	\N	\N	mamyranto.raz@gmail.com	032 92 498 31	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:11.228731	2024-06-12 11:34:11.228731	\N	\N	\N	\N	activ__resume_1718192051.pdf	\N	\N	\N
28	Rakotonindrainy Toky	\N	\N	tokyrakotonindrainy@gmail.com	\n\n033 03	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:11.930934	2024-06-12 11:34:11.930934	\N	\N	\N	\N	activ__resume_1718192051.pdf	\N	\N	\N
29	Heritina Leonnette	\N	\N	leonnetterasolondraibe.2412@gmail.com	032 51 176 38	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:12.298314	2024-06-12 11:34:12.298314	\N	\N	\N	\N	activ__resume_1718192052.pdf	\N	\N	\N
30	Tsaraniaina Lucas	\N	\N	verenakolucas@gmail.com	\n034 46 581 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:12.633237	2024-06-12 11:34:12.633237	\N	\N	\N	\N	activ__resume_1718192052.pdf	\N	\N	\N
31	Saint Joseph	\N	\N	toavimpitiavanamaria@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:12.941097	2024-06-12 11:34:12.941097	\N	\N	\N	\N	activ__resume_1718192052.pdf	\N	\N	\N
32	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:13.127208	2024-06-12 11:34:13.127208	\N	\N	\N	\N	activ__resume_1718192053.pdf	\N	\N	\N
1303	Christianah Soniah	\N	\N	\N	\n038 52 502 04	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:49.816118	2024-06-12 11:42:49.816118	\N	\N	\N	\N	activ__resume_1718192569.pdf	\N	\N	\N
1304	Date De	\N	\N	mialisoarakotonirina88@gmail.com	0324193968	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:50.16395	2024-06-12 11:42:50.16395	\N	\N	\N	\N	activ__resume_1718192570.pdf	\N	\N	\N
1305	Minosoa Ny	\N	\N	mino.raveloarison@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:50.529613	2024-06-12 11:42:50.529613	\N	\N	\N	\N	activ__resume_1718192570.pdf	\N	\N	\N
1306	Nosy Varika	\N	\N	rosemagic1986@gmail.com	209 012 029 634	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:51.28968	2024-06-12 11:42:51.28968	\N	\N	\N	\N	activ__resume_1718192571.pdf	\N	\N	\N
1307	Nantenaina Olivia	\N	\N	nantenainaoliviaranaivoson@yahoo.fr	033 25 244 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:51.660455	2024-06-12 11:42:51.660455	\N	\N	\N	\N	activ__resume_1718192571.pdf	\N	\N	\N
33	Clermont Justin	\N	\N	\N	\n\n034 13	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:13.429554	2024-06-12 11:34:13.429554	\N	\N	\N	\N	activ__resume_1718192053.pdf	\N	\N	\N
34	Miarantsoa Olihaingo	\N	\N	OlyhaingoRakotoson@gmail.com	2020-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:14.00595	2024-06-12 11:34:14.00595	\N	\N	\N	\N	activ__resume_1718192054.pdf	\N	\N	\N
35	Ressources Humaines	\N	\N	nyhobyrandria@gmail.com	261346233781	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:14.610816	2024-06-12 11:34:14.610816	\N	\N	\N	\N	activ__resume_1718192054.pdf	\N	\N	\N
36	Sarah Aurelie	\N	\N	sarah.aurelie@yahoo.fr	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:15.020456	2024-06-12 11:34:15.020456	\N	\N	\N	\N	activ__resume_1718192055.pdf	\N	\N	\N
37	Mandialaza Ambodivona	\N	\N	\N	101 231 154 719	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:15.314263	2024-06-12 11:34:15.314263	\N	\N	\N	\N	activ__resume_1718192055.pdf	\N	\N	\N
38	Andavamamba Antananarivo	\N	\N	nathirahari@gmail.com	2021-2023	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:15.629636	2024-06-12 11:34:15.629636	\N	\N	\N	\N	activ__resume_1718192055.pdf	\N	\N	\N
39	Institut National	\N	\N	soa.noarimialy@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:15.998409	2024-06-12 11:34:15.998409	\N	\N	\N	\N	activ__resume_1718192055.pdf	\N	\N	\N
40	Inconnu	\N	\N	\N	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:16.251491	2024-06-12 11:34:16.251491	\N	\N	\N	\N	activ__resume_1718192056.pdf	\N	\N	\N
41	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:16.455029	2024-06-12 11:34:16.455029	\N	\N	\N	\N	activ__resume_1718192056.pdf	\N	\N	\N
42	Community Managment	\N	\N	tkjtoavina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:16.801586	2024-06-12 11:34:16.801586	\N	\N	\N	\N	activ__resume_1718192056.pdf	\N	\N	\N
43	Bis Androhibe	\N	\N	\N	033 76 138 66	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:17.045837	2024-06-12 11:34:17.045837	\N	\N	\N	\N	activ__resume_1718192057.pdf	\N	\N	\N
44	Voary Vatosoa	\N	\N	\N	117 152 027 109	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:17.390136	2024-06-12 11:34:17.390136	\N	\N	\N	\N	activ__resume_1718192057.pdf	\N	\N	\N
45	Bank Of	\N	\N	Allanrafano@gmail.com	034 65 539 14	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:17.908397	2024-06-12 11:34:17.908397	\N	\N	\N	\N	activ__resume_1718192057.pdf	\N	\N	\N
46	Bis Andohaniato	\N	\N	razafimaherylahinirina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:18.29387	2024-06-12 11:34:18.29387	\N	\N	\N	\N	activ__resume_1718192058.pdf	\N	\N	\N
47	Tantely Fitia	\N	\N	fitiarakoto969@gmail.com	261344043243	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:18.729187	2024-06-12 11:34:18.729187	\N	\N	\N	\N	activ__resume_1718192058.pdf	\N	\N	\N
48	Bis Andranoro	\N	\N	severinesarika@gmail.com	0325595519	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:19.134431	2024-06-12 11:34:19.134431	\N	\N	\N	\N	activ__resume_1718192059.pdf	\N	\N	\N
49	Sirina Rabah	\N	\N	rabahsirinarandrianarison@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:19.475418	2024-06-12 11:34:19.475418	\N	\N	\N	\N	activ__resume_1718192059.pdf	\N	\N	\N
50	Ony Nirina	\N	\N	\N	0345095734	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:19.881893	2024-06-12 11:34:19.881893	\N	\N	\N	\N	activ__resume_1718192059.pdf	\N	\N	\N
51	Conseiller Technique	\N	\N	nirinamanantenarajernerson@gmail.com	034 40 962 35	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:20.190459	2024-06-12 11:34:20.190459	\N	\N	\N	\N	activ__resume_1718192060.pdf	\N	\N	\N
52	Haingovololona Chantal	\N	\N	\N	0341870769	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:20.456155	2024-06-12 11:34:20.456155	\N	\N	\N	\N	activ__resume_1718192060.pdf	\N	\N	\N
53	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:20.647113	2024-06-12 11:34:20.647113	\N	\N	\N	\N	activ__resume_1718192060.pdf	\N	\N	\N
54	Ny Onintsoa	\N	\N	ramandaharijaonaKim@gmail.com	0322492061	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:20.941298	2024-06-12 11:34:20.941298	\N	\N	\N	\N	activ__resume_1718192060.pdf	\N	\N	\N
55	Henintsoa Murielle	\N	\N	bhmuriellerasolofoson@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:21.343865	2024-06-12 11:34:21.343865	\N	\N	\N	\N	activ__resume_1718192061.pdf	\N	\N	\N
56	Holimalala Nadia	\N	\N	nadiaholimalala@gmail.com	32 35 840 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:21.838903	2024-06-12 11:34:21.838903	\N	\N	\N	\N	activ__resume_1718192061.pdf	\N	\N	\N
57	Service Finances	\N	\N	elysamahefa@gmail.com	034 16 741 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:22.299178	2024-06-12 11:34:22.299178	\N	\N	\N	\N	activ__resume_1718192062.pdf	\N	\N	\N
58	Odity Galaxy	\N	\N	vanilla93000@gmail.com	0347989785	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:22.522201	2024-06-12 11:34:22.522201	\N	\N	\N	\N	activ__resume_1718192062.pdf	\N	\N	\N
59	Antsahondra Haute	\N	\N	cynthiaarintsoa55@gmail.com	038 23 901 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:22.804065	2024-06-12 11:34:22.804065	\N	\N	\N	\N	activ__resume_1718192062.pdf	\N	\N	\N
60	Nirintsoa Diamondra	\N	\N	jaodiary0@gmail.com	034 52 386 18	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:23.068197	2024-06-12 11:34:23.068197	\N	\N	\N	\N	activ__resume_1718192063.pdf	\N	\N	\N
61	Inconnu	\N	\N	Ando9103@gmail.com	034 81 959 47	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:23.510945	2024-06-12 11:34:23.510945	\N	\N	\N	\N	activ__resume_1718192063.pdf	\N	\N	\N
62	Fenosoa Tanya	\N	\N	andriamiadanatanya@gmail.com	0342754332	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:23.730604	2024-06-12 11:34:23.730604	\N	\N	\N	\N	activ__resume_1718192063.pdf	\N	\N	\N
63	Claude Rolland	\N	\N	Ongtama202@gmail.com	038 30 942 77	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:24.053675	2024-06-12 11:34:24.053675	\N	\N	\N	\N	activ__resume_1718192064.pdf	\N	\N	\N
64	Marketing Digital	\N	\N	aly.wdta@gmail.com	2011-2013	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:24.576813	2024-06-12 11:34:24.576813	\N	\N	\N	\N	activ__resume_1718192064.pdf	\N	\N	\N
65	Moderne Ampefiloha	\N	\N	joycealvin174@gmail.com	0343639283	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:24.862891	2024-06-12 11:34:24.862891	\N	\N	\N	\N	activ__resume_1718192064.pdf	\N	\N	\N
66	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:25.058716	2024-06-12 11:34:25.058716	\N	\N	\N	\N	activ__resume_1718192065.pdf	\N	\N	\N
67	Area Andohatapenaka	\N	\N	\N	\n034 67 966 87	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:25.84521	2024-06-12 11:34:25.84521	\N	\N	\N	\N	activ__resume_1718192065.pdf	\N	\N	\N
68	Inconnu	\N	\N	thifannieramamonjisoa@gmail.co	034 71 413 70	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:26.158062	2024-06-12 11:34:26.158062	\N	\N	\N	\N	activ__resume_1718192066.pdf	\N	\N	\N
69	Inconnu	\N	\N	joanorh@gmail.com	0329146402	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:26.681897	2024-06-12 11:34:26.681897	\N	\N	\N	\N	activ__resume_1718192066.pdf	\N	\N	\N
70	Yulie Morgane	\N	\N	morganeyulie1@gmail.com	261344122936	\N	II Y 13 C	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:27.059984	2024-06-12 11:34:27.059984	\N	\N	\N	\N	activ__resume_1718192067.pdf	\N	\N	\N
71	Digital Marketing	\N	\N	mahefatianaherizo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:27.794184	2024-06-12 11:34:27.794184	\N	\N	\N	\N	activ__resume_1718192067.pdf	\N	\N	\N
72	Annick Volatiana	\N	\N	ratovomandimby@gmail.com	0344967325	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:28.058669	2024-06-12 11:34:28.058669	\N	\N	\N	\N	activ__resume_1718192068.pdf	\N	\N	\N
73	Stagiaire Ressources	\N	\N	ramahandrynyhasina20@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:28.503356	2024-06-12 11:34:28.503356	\N	\N	\N	\N	activ__resume_1718192068.pdf	\N	\N	\N
74	Inconnu	\N	\N	ramatsiry8@gmail.com	038 55 908 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:28.887148	2024-06-12 11:34:28.887148	\N	\N	\N	\N	activ__resume_1718192068.pdf	\N	\N	\N
75	Ando Soa	\N	\N	rasolohenintsoa03@gmail.com	034 12 336 97	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:29.26589	2024-06-12 11:34:29.26589	\N	\N	\N	\N	activ__resume_1718192069.pdf	\N	\N	\N
76	Miarisoa Anja	\N	\N	anjafyrandrianarison@gmail.com	0341996095	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:29.586639	2024-06-12 11:34:29.586639	\N	\N	\N	\N	activ__resume_1718192069.pdf	\N	\N	\N
77	Fetra Arivelo	\N	\N	randriamiharison.christian@gmail.com	261331806190	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:30.073909	2024-06-12 11:34:30.073909	\N	\N	\N	\N	activ__resume_1718192070.pdf	\N	\N	\N
78	Andranonahoatra Itaosy	\N	\N	\N	0341423711	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:30.377236	2024-06-12 11:34:30.377236	\N	\N	\N	\N	activ__resume_1718192070.pdf	\N	\N	\N
79	Kantoniaina Manoa	\N	\N	andriamiandrymanoa@gmail.com	0347452086	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:30.605736	2024-06-12 11:34:30.605736	\N	\N	\N	\N	activ__resume_1718192070.pdf	\N	\N	\N
80	Toky Jafeta	\N	\N	trasolomanitra@gmail.com	38 90 016 79	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:31.22437	2024-06-12 11:34:31.22437	\N	\N	\N	\N	activ__resume_1718192071.pdf	\N	\N	\N
81	Ter Angarangarana	\N	\N	herizo523@gmail.com	034 38 611 75	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:31.642185	2024-06-12 11:34:31.642185	\N	\N	\N	\N	activ__resume_1718192071.pdf	\N	\N	\N
82	Fara Razafindrabe	\N	\N	fmamonjiariseheno@gmail.com	034 18 764 47	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:32.374717	2024-06-12 11:34:32.374717	\N	\N	\N	\N	activ__resume_1718192072.pdf	\N	\N	\N
83	Carole Wanda	\N	\N	carolerktb@gmail.com	034 62 189 00	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:32.836677	2024-06-12 11:34:32.836677	\N	\N	\N	\N	activ__resume_1718192072.pdf	\N	\N	\N
84	Conseiller Client	\N	\N	nerafrancel@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:33.212211	2024-06-12 11:34:33.212211	\N	\N	\N	\N	activ__resume_1718192073.pdf	\N	\N	\N
85	Ressources Humaines	\N	\N	nyhobyrandria@gmail.com	261346233781	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:33.854459	2024-06-12 11:34:33.854459	\N	\N	\N	\N	activ__resume_1718192073.pdf	\N	\N	\N
86	Ressources Humaines	\N	\N	nyhobyrandria@gmail.com	261346233781	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:34.495637	2024-06-12 11:34:34.495637	\N	\N	\N	\N	activ__resume_1718192074.pdf	\N	\N	\N
87	Intelligence Artificielle	\N	\N	d.rakotozandriny@gmail.com	\n034 90 092 24	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:35.002729	2024-06-12 11:34:35.002729	\N	\N	\N	\N	activ__resume_1718192075.pdf	\N	\N	\N
88	Zo Finaritra	\N	\N	rakotoarimbolazo19@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:35.342182	2024-06-12 11:34:35.342182	\N	\N	\N	\N	activ__resume_1718192075.pdf	\N	\N	\N
89	Bodo Nandrianina	\N	\N	mahadevynanah@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:35.865907	2024-06-12 11:34:35.865907	\N	\N	\N	\N	activ__resume_1718192075.pdf	\N	\N	\N
90	Nomentsoa Ny	\N	\N	nomentsoa.raobelison@gmail.com	261327204665	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:36.239043	2024-06-12 11:34:36.239043	\N	\N	\N	\N	activ__resume_1718192076.pdf	\N	\N	\N
91	Inconnu	\N	\N	ramatsiry8@gmail.com	038 55 908 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:36.618716	2024-06-12 11:34:36.618716	\N	\N	\N	\N	activ__resume_1718192076.pdf	\N	\N	\N
92	Lanto Maherisoa	\N	\N	andriamarosandyhanitriniavo@gmail.com	034 68 703 02	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:36.987384	2024-06-12 11:34:36.987384	\N	\N	\N	\N	activ__resume_1718192076.pdf	\N	\N	\N
93	Diary Nokoloina	\N	\N	\N	0327840191	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:37.846483	2024-06-12 11:34:37.846483	\N	\N	\N	\N	activ__resume_1718192077.pdf	\N	\N	\N
94	Inconnu	\N	\N	miandrirazaa@gmail.com	032 65 624 09	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:38.220679	2024-06-12 11:34:38.220679	\N	\N	\N	\N	activ__resume_1718192078.pdf	\N	\N	\N
95	Malalatiana Lanja	\N	\N	ranaivomanantsoamalalatianalan@gmail.com	2011-2012	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:38.619902	2024-06-12 11:34:38.619902	\N	\N	\N	\N	activ__resume_1718192078.pdf	\N	\N	\N
96	Aina Patrick	\N	\N	\N	034 08 157 06	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:39.036549	2024-06-12 11:34:39.036549	\N	\N	\N	\N	activ__resume_1718192079.pdf	\N	\N	\N
97	Nomena Fanantenana	\N	\N	\N	2017-2018	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:39.783085	2024-06-12 11:34:39.783085	\N	\N	\N	\N	activ__resume_1718192079.pdf	\N	\N	\N
98	Maminirina Fanja	\N	\N	maminirinafanja@gmail.com	034 93 767 82	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:40.163312	2024-06-12 11:34:40.163312	\N	\N	\N	\N	activ__resume_1718192080.pdf	\N	\N	\N
99	Relation Client	\N	\N	milantean@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:40.47153	2024-06-12 11:34:40.47153	\N	\N	\N	\N	activ__resume_1718192080.pdf	\N	\N	\N
100	Monte Cristo	\N	\N	tsilavinaraza25@yahoo.com	0322983773	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:40.809552	2024-06-12 11:34:40.809552	\N	\N	\N	\N	activ__resume_1718192080.pdf	\N	\N	\N
101	Razanatsimba Jenny	\N	\N	tiffanylady70@yahoo.com	0345266074	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:41.071281	2024-06-12 11:34:41.071281	\N	\N	\N	\N	activ__resume_1718192081.pdf	\N	\N	\N
102	St Jean	\N	\N	raoilisonharimino@gmail.com	034 42 397 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:41.531056	2024-06-12 11:34:41.531056	\N	\N	\N	\N	activ__resume_1718192081.pdf	\N	\N	\N
103	Data Studio	\N	\N	Jolexy25@gmail.com	034 94 528 15	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:41.948645	2024-06-12 11:34:41.948645	\N	\N	\N	\N	activ__resume_1718192081.pdf	\N	\N	\N
104	Volaina Rova	\N	\N	rova.riina@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:42.273919	2024-06-12 11:34:42.273919	\N	\N	\N	\N	activ__resume_1718192082.pdf	\N	\N	\N
105	Redaction Web	\N	\N	andriarimananam@yahoo.com	261 34	\N	VT 55	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:43.137649	2024-06-12 11:34:43.137649	\N	\N	\N	\N	activ__resume_1718192083.pdf	\N	\N	\N
106	Fetra Arivelo	\N	\N	randriamiharison.christian@gmail.com	261331806190	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:43.552692	2024-06-12 11:34:43.552692	\N	\N	\N	\N	activ__resume_1718192083.pdf	\N	\N	\N
107	Premier Cycle	\N	\N	Tesssandra3@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:44.019261	2024-06-12 11:34:44.019261	\N	\N	\N	\N	activ__resume_1718192084.pdf	\N	\N	\N
108	Assistante Virtuelle	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:44.859857	2024-06-12 11:34:44.859857	\N	\N	\N	\N	activ__resume_1718192084.pdf	\N	\N	\N
109	Droit Public	\N	\N	anthoniavoniary@gmail.com	038 94 395 49	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:45.369629	2024-06-12 11:34:45.369629	\N	\N	\N	\N	activ__resume_1718192085.pdf	\N	\N	\N
110	Sabotsy Namehana	\N	\N	manitramalalaniaina3@gmail.com	0347406958	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:45.630722	2024-06-12 11:34:45.630722	\N	\N	\N	\N	activ__resume_1718192085.pdf	\N	\N	\N
111	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:45.815533	2024-06-12 11:34:45.815533	\N	\N	\N	\N	activ__resume_1718192085.pdf	\N	\N	\N
191	English Public	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:18.961585	2024-06-12 11:35:18.961585	\N	\N	\N	\N	activ__resume_1718192118.pdf	\N	\N	\N
120	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:49.025385	2024-06-12 11:34:49.025385	\N	\N	\N	\N	activ__resume_1718192089.pdf	\N	\N	\N
121	Benja Philippe	\N	\N	lionbenja@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:49.778994	2024-06-12 11:34:49.778994	\N	\N	\N	\N	activ__resume_1718192089.pdf	\N	\N	\N
122	Tinah Christelle	\N	\N	tinahchristelle62@gmail.com	261327691297	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:50.41856	2024-06-12 11:34:50.41856	\N	\N	\N	\N	activ__resume_1718192090.pdf	\N	\N	\N
123	Helimanoa Andomahanina	\N	\N	manoaandomahanina@gmail.com	 101\n\n034 77	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:50.763533	2024-06-12 11:34:50.763533	\N	\N	\N	\N	activ__resume_1718192090.pdf	\N	\N	\N
124	Jean Oilly	\N	\N	tsiorinirina3@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:51.568503	2024-06-12 11:34:51.568503	\N	\N	\N	\N	activ__resume_1718192091.pdf	\N	\N	\N
125	Date De	\N	\N	mialisoarakotonirina88@gmail.com	0324193968	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:52.141061	2024-06-12 11:34:52.141061	\N	\N	\N	\N	activ__resume_1718192092.pdf	\N	\N	\N
126	Inconnu	\N	\N	\N	 034 54 575 44	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:52.406898	2024-06-12 11:34:52.406898	\N	\N	\N	\N	activ__resume_1718192092.pdf	\N	\N	\N
127	Maholy Jessica	\N	\N	\N	117 152 021 341	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:52.743381	2024-06-12 11:34:52.743381	\N	\N	\N	\N	activ__resume_1718192092.pdf	\N	\N	\N
128	Toky Vahatra	\N	\N	rtokyv@gmail.com	0349392192	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:53.08727	2024-06-12 11:34:53.08727	\N	\N	\N	\N	activ__resume_1718192093.pdf	\N	\N	\N
129	Soavimasoandro Antananarivo	\N	\N	tiatiavina.ras@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:53.415083	2024-06-12 11:34:53.415083	\N	\N	\N	\N	activ__resume_1718192093.pdf	\N	\N	\N
130	Chefde Projet	\N	\N	\N	034 95 182 96	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:53.95241	2024-06-12 11:34:53.95241	\N	\N	\N	\N	activ__resume_1718192093.pdf	\N	\N	\N
131	Niritiana Sandrinah	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:54.225089	2024-06-12 11:34:54.225089	\N	\N	\N	\N	activ__resume_1718192094.pdf	\N	\N	\N
132	Venteet Prospectionclient	\N	\N	andrianaivosoairina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:54.691243	2024-06-12 11:34:54.691243	\N	\N	\N	\N	activ__resume_1718192094.pdf	\N	\N	\N
133	Bis Andranoro	\N	\N	severinesarika@gmail.com	0325595519	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:55.081305	2024-06-12 11:34:55.081305	\N	\N	\N	\N	activ__resume_1718192095.pdf	\N	\N	\N
134	Odity Madagascar	\N	\N	\N	344568133	\N	VW 64 Ambohipotsy, 05	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:55.431907	2024-06-12 11:34:55.431907	\N	\N	\N	\N	activ__resume_1718192095.pdf	\N	\N	\N
135	Maminiaina Williams	\N	\N	\N	101 982 095 281	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:55.721664	2024-06-12 11:34:55.721664	\N	\N	\N	\N	activ__resume_1718192095.pdf	\N	\N	\N
136	Inconnu	\N	\N	ifanyaian04@gmail.com	034 82 999 28	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:56.128664	2024-06-12 11:34:56.128664	\N	\N	\N	\N	activ__resume_1718192096.pdf	\N	\N	\N
137	Fara Mbolaniaina	\N	\N	mbolarambelo@gmail.com	033 81 787 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:56.435396	2024-06-12 11:34:56.435396	\N	\N	\N	\N	activ__resume_1718192096.pdf	\N	\N	\N
138	Njiva Ary	\N	\N	aryjoda@gmail.com	033 86 469 01	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:56.789662	2024-06-12 11:34:56.789662	\N	\N	\N	\N	activ__resume_1718192096.pdf	\N	\N	\N
139	United Call	\N	\N	anjaratiana777@gmail.com	117 172 023 847	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:57.253359	2024-06-12 11:34:57.253359	\N	\N	\N	\N	activ__resume_1718192097.pdf	\N	\N	\N
140	Marketing Digital	\N	\N	aly.wdta@gmail.com	2011-2013	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:57.807812	2024-06-12 11:34:57.807812	\N	\N	\N	\N	activ__resume_1718192097.pdf	\N	\N	\N
141	Anjara Nandrianina	\N	\N	nandrianina277@gmail.com	034 51 803 95	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:58.076936	2024-06-12 11:34:58.076936	\N	\N	\N	\N	activ__resume_1718192098.pdf	\N	\N	\N
142	Rado Albert	\N	\N	radoandriamiadantsoa@gmail.com	034 43 613 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:58.472712	2024-06-12 11:34:58.472712	\N	\N	\N	\N	activ__resume_1718192098.pdf	\N	\N	\N
143	Ressources Humaines	\N	\N	nyhobyrandria@gmail.com	261346233781	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:59.081514	2024-06-12 11:34:59.081514	\N	\N	\N	\N	activ__resume_1718192099.pdf	\N	\N	\N
144	Inconnu	\N	\N	miandrirazaa@gmail.com	032 65 624 09	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:34:59.481411	2024-06-12 11:34:59.481411	\N	\N	\N	\N	activ__resume_1718192099.pdf	\N	\N	\N
145	Institute Of	\N	\N	felanarajo55@gmail.com	034 28 605 10	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:34:59.84379	2024-06-12 11:34:59.84379	\N	\N	\N	\N	activ__resume_1718192099.pdf	\N	\N	\N
146	Voahary Rafalimiarintsoa	\N	\N	vr.miarintsoa@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:00.15431	2024-06-12 11:35:00.15431	\N	\N	\N	\N	activ__resume_1718192100.pdf	\N	\N	\N
147	Personne Responsable	\N	\N	laharivelo@gmail.com	2013-2014	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:00.60283	2024-06-12 11:35:00.60283	\N	\N	\N	\N	activ__resume_1718192100.pdf	\N	\N	\N
148	Tojoniaina Marc	\N	\N	randrianarisontm@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:00.926708	2024-06-12 11:35:00.926708	\N	\N	\N	\N	activ__resume_1718192100.pdf	\N	\N	\N
149	Ambohijafy Itaosy	\N	\N	raoulravomampiandra@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:01.30292	2024-06-12 11:35:01.30292	\N	\N	\N	\N	activ__resume_1718192101.pdf	\N	\N	\N
150	Andoniaina Njara	\N	\N	andoniainanjara@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:01.720151	2024-06-12 11:35:01.720151	\N	\N	\N	\N	activ__resume_1718192101.pdf	\N	\N	\N
151	Les Rossignols	\N	\N	kantorakotobe16@gmail.com	0347554220	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:02.197827	2024-06-12 11:35:02.197827	\N	\N	\N	\N	activ__resume_1718192102.pdf	\N	\N	\N
117	 RABEMANANJARA	\N	Claude Rolland	Ongtama202@gmail.com	038 30 942 77	\N	Inconnue	\N	\N	1 an	Madagascar	Désireux de donner un changement définitif à ma carrière professionnelle, j’ai le plaisir de vous\r\nproposer mes services pour le poste de téléconseiller au sein de votre entreprise.	CDI	Malgache	Non spécifiée	t	2024-06-12 11:34:48.262055	2024-06-25 12:02:17.04102	10	\N	Disponible immediat	\N	activ__resume_1718192088.pdf	\N	\N	\N
115	ANDRIAMANANDAZA	\N	Sophie christianna	sophie.andriamanandaza@gmail.com	329778651	\N	Avaratsena ITAOSY	\N	\N	+ de 5 ans	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 11:34:47.752586	2024-06-25 12:19:01.704041	\N	\N	\N	\N	activ__resume_1718192087.pdf	\N	\N	\N
114	RAHOLIARISOA	\N	Hanitriniaina Sylvia	\N	034 42 435 81	\N	Lot IVD 153K Ambohimanandray Ambohimanarina ( Tana 101)	\N	\N	3 ans	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 11:34:47.25092	2024-06-25 12:20:43.808344	6	\N	Disponible immediat	\N	activ__resume_1718192087.pdf	\N	\N	\N
152	Ny Hasina	\N	\N	\N	0342965725	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:02.528249	2024-06-12 11:35:02.528249	\N	\N	\N	\N	activ__resume_1718192102.pdf	\N	\N	\N
153	Logia Studios	\N	\N	koloinachristel@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:02.871911	2024-06-12 11:35:02.871911	\N	\N	\N	\N	activ__resume_1718192102.pdf	\N	\N	\N
154	Inconnu	\N	\N	\N	0336350096	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:03.242444	2024-06-12 11:35:03.242444	\N	\N	\N	\N	activ__resume_1718192103.pdf	\N	\N	\N
155	Faniry Nantenaina	\N	\N	rktrsfaniry@gmail.com	034 27 472 81	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:03.723094	2024-06-12 11:35:03.723094	\N	\N	\N	\N	activ__resume_1718192103.pdf	\N	\N	\N
156	Volaina Rova	\N	\N	rova.riina@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:04.043364	2024-06-12 11:35:04.043364	\N	\N	\N	\N	activ__resume_1718192104.pdf	\N	\N	\N
157	Nantie Raharijaona	\N	\N	nantie2000@gmail.com	 2020\n032 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:04.814552	2024-06-12 11:35:04.814552	\N	\N	\N	\N	activ__resume_1718192104.pdf	\N	\N	\N
158	Hantasoa Dina	\N	\N	\N	103 012 009 182	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:05.086732	2024-06-12 11:35:05.086732	\N	\N	\N	\N	activ__resume_1718192105.pdf	\N	\N	\N
159	Nomenjanahary Nambinina	\N	\N	randriantsoa.nambinina.nanah@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:05.524877	2024-06-12 11:35:05.524877	\N	\N	\N	\N	activ__resume_1718192105.pdf	\N	\N	\N
160	Tinasoa Marie	\N	\N	Caroleraharinomena@gmail.com	0349882749	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:05.865168	2024-06-12 11:35:05.865168	\N	\N	\N	\N	activ__resume_1718192105.pdf	\N	\N	\N
161	Tahiry Anja	\N	\N	ralijaonatahiry@gmail.com	032 48 497 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:06.333046	2024-06-12 11:35:06.333046	\N	\N	\N	\N	activ__resume_1718192106.pdf	\N	\N	\N
162	Sylvio Raedouard	\N	\N	\N	261341676134	\N	IIE 2 YWI Ambohimirary	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:06.678104	2024-06-12 11:35:06.678104	\N	\N	\N	\N	activ__resume_1718192106.pdf	\N	\N	\N
163	Pierrot Rodrigue	\N	\N	rafenopex@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:07.071219	2024-06-12 11:35:07.071219	\N	\N	\N	\N	activ__resume_1718192107.pdf	\N	\N	\N
164	Antananarivo Madagascar	\N	\N	rovanantsoa@gmail.com	261322148086	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:07.628772	2024-06-12 11:35:07.628772	\N	\N	\N	\N	activ__resume_1718192107.pdf	\N	\N	\N
165	Inconnu	\N	\N	rtsirym@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:08.168819	2024-06-12 11:35:08.168819	\N	\N	\N	\N	activ__resume_1718192108.pdf	\N	\N	\N
166	Technique Marketing	\N	\N	sedrarabe@gmail.com	261 34	\N	Inconnue	https://www.facebook.com/mi	https://www.linkedin.com/in/d	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:08.685399	2024-06-12 11:35:08.685399	\N	\N	\N	\N	activ__resume_1718192108.pdf	\N	\N	\N
167	Management Commercial	\N	\N	tiananirina.ramaroson@gmail.com	034 17 305 50	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:09.368264	2024-06-12 11:35:09.368264	\N	\N	\N	\N	activ__resume_1718192109.pdf	\N	\N	\N
168	Tojoniaina Sylvie	\N	\N	tojomananjara94@gmail.com	034 96 338 50	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:09.673286	2024-06-12 11:35:09.673286	\N	\N	\N	\N	activ__resume_1718192109.pdf	\N	\N	\N
169	Jules Ferry	\N	\N	rmbolanirina@gmail.com	2011-2012	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:09.981783	2024-06-12 11:35:09.981783	\N	\N	\N	\N	activ__resume_1718192109.pdf	\N	\N	\N
170	Ketsia Call	\N	\N	niainamanitriniaina@gmail.com	0345402810	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:10.8251	2024-06-12 11:35:10.8251	\N	\N	\N	\N	activ__resume_1718192110.pdf	\N	\N	\N
171	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:11.024879	2024-06-12 11:35:11.024879	\N	\N	\N	\N	activ__resume_1718192111.pdf	\N	\N	\N
172	Maria Henri	\N	\N	louisrafaby@gmail.com	034 42 398 62	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:11.473	2024-06-12 11:35:11.473	\N	\N	\N	\N	activ__resume_1718192111.pdf	\N	\N	\N
173	Voahary Rafalimiarintsoa	\N	\N	vr.miarintsoa@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:11.761802	2024-06-12 11:35:11.761802	\N	\N	\N	\N	activ__resume_1718192111.pdf	\N	\N	\N
174	Curriculum Vitae	\N	\N	\N	034 43 544 59	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:12.213957	2024-06-12 11:35:12.213957	\N	\N	\N	\N	activ__resume_1718192112.pdf	\N	\N	\N
175	Assistante Virtuelle	\N	\N	Ssandyliantsoarak@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:12.75591	2024-06-12 11:35:12.75591	\N	\N	\N	\N	activ__resume_1718192112.pdf	\N	\N	\N
176	Antanetibe Itaosy	\N	\N	tolotrataylor@gmail.com	261328747581	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:13.293517	2024-06-12 11:35:13.293517	\N	\N	\N	\N	activ__resume_1718192113.pdf	\N	\N	\N
177	Mitahiry Jessycah	\N	\N	jessyrasamiah@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:13.560556	2024-06-12 11:35:13.560556	\N	\N	\N	\N	activ__resume_1718192113.pdf	\N	\N	\N
178	Curriculum Vitae	\N	\N	omr.pers.0369@gmail.com	117 172 020 913	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:13.863792	2024-06-12 11:35:13.863792	\N	\N	\N	\N	activ__resume_1718192113.pdf	\N	\N	\N
179	Data Owner	\N	\N	numbus88@gmail.com	034 59 516 85	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:14.432548	2024-06-12 11:35:14.432548	\N	\N	\N	\N	activ__resume_1718192114.pdf	\N	\N	\N
180	Anjara Fitiavana	\N	\N	anjarafitiavana1993@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:14.80105	2024-06-12 11:35:14.80105	\N	\N	\N	\N	activ__resume_1718192114.pdf	\N	\N	\N
181	Toky Nantenaina	\N	\N	mctoky@gmail.com	032 91 063 78	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:15.11414	2024-06-12 11:35:15.11414	\N	\N	\N	\N	activ__resume_1718192115.pdf	\N	\N	\N
182	Conseiller Client	\N	\N	michaelmcprincio@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:15.515991	2024-06-12 11:35:15.515991	\N	\N	\N	\N	activ__resume_1718192115.pdf	\N	\N	\N
183	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:15.831585	2024-06-12 11:35:15.831585	\N	\N	\N	\N	activ__resume_1718192115.pdf	\N	\N	\N
184	Inconnu	\N	\N	natahrakt@gmail.com	261 38	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:16.062219	2024-06-12 11:35:16.062219	\N	\N	\N	\N	activ__resume_1718192116.pdf	\N	\N	\N
185	Back Office	\N	\N	rzhanitra30@gmail.com	033 12 117 52	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:16.521763	2024-06-12 11:35:16.521763	\N	\N	\N	\N	activ__resume_1718192116.pdf	\N	\N	\N
186	Rantoniaina Tsiorintsoa	\N	\N	tsiorintsoarambelo@gmail.com	034 40 942 96	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:16.819883	2024-06-12 11:35:16.819883	\N	\N	\N	\N	activ__resume_1718192116.pdf	\N	\N	\N
187	Inconnu	\N	\N	sterafearivo@gmail.com	034 42 771 24	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:17.136322	2024-06-12 11:35:17.136322	\N	\N	\N	\N	activ__resume_1718192117.pdf	\N	\N	\N
188	Bis Ter	\N	\N	rmarinah.mr@gmail.com	261 34	\N	Inconnue	\N	https://www.linkedin.com/in/marinah-ravoavonjy-	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:17.611934	2024-06-12 11:35:17.611934	\N	\N	\N	\N	activ__resume_1718192117.pdf	\N	\N	\N
189	Ando Lalaina	\N	\N	andolalainafamonjena@gmail.com	261 38	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:18.07719	2024-06-12 11:35:18.07719	\N	\N	\N	\N	activ__resume_1718192118.pdf	\N	\N	\N
190	English Speaking	\N	\N	\N	2020-2021	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:18.521649	2024-06-12 11:35:18.521649	\N	\N	\N	\N	activ__resume_1718192118.pdf	\N	\N	\N
192	Data Studio	\N	\N	Jolexy25@gmail.com	034 94 528 15	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:19.399082	2024-06-12 11:35:19.399082	\N	\N	\N	\N	activ__resume_1718192119.pdf	\N	\N	\N
193	Andriantsiory Herlande	\N	\N	tsioriandrianina1@gmail.com	032 04 761 29	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:20.369161	2024-06-12 11:35:20.369161	\N	\N	\N	\N	activ__resume_1718192120.pdf	\N	\N	\N
194	Etat Civil	\N	\N	miaritianarasendrason@gmail.com	0343958661	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:20.662373	2024-06-12 11:35:20.662373	\N	\N	\N	\N	activ__resume_1718192120.pdf	\N	\N	\N
195	Daniel Brunot	\N	\N	rakotoarisond@gmail.com	032 42 381 68	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:21.21155	2024-06-12 11:35:21.21155	\N	\N	\N	\N	activ__resume_1718192121.pdf	\N	\N	\N
196	Saisie Polyvalent	\N	\N	joharitinajonathan02@gmail.com	034 80 519 44	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:21.482583	2024-06-12 11:35:21.482583	\N	\N	\N	\N	activ__resume_1718192121.pdf	\N	\N	\N
197	Rabena Soary	\N	\N	mikeelina22@gmail.com	034 38 586 55	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:21.790305	2024-06-12 11:35:21.790305	\N	\N	\N	\N	activ__resume_1718192121.pdf	\N	\N	\N
198	Rojo Miarisoa	\N	\N	rakotoniainrojomiarisoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:22.278822	2024-06-12 11:35:22.278822	\N	\N	\N	\N	activ__resume_1718192122.pdf	\N	\N	\N
199	Ressources Humaines	\N	\N	adorson.marius@gmail.com	034 86 708 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:22.890896	2024-06-12 11:35:22.890896	\N	\N	\N	\N	activ__resume_1718192122.pdf	\N	\N	\N
201	Bundestag Allemagne	\N	\N	fitiajunior28@gmail.com	0343949026	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:23.617025	2024-06-12 11:35:23.617025	\N	\N	\N	\N	activ__resume_1718192123.pdf	\N	\N	\N
202	Bis Anosivavaka	\N	\N	raphaelnathan1994@gmail.com	034 77 086 27	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:24.194921	2024-06-12 11:35:24.194921	\N	\N	\N	\N	activ__resume_1718192124.pdf	\N	\N	\N
203	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:24.400026	2024-06-12 11:35:24.400026	\N	\N	\N	\N	activ__resume_1718192124.pdf	\N	\N	\N
204	Jumbo Score	\N	\N	\N	0346149844	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:24.691683	2024-06-12 11:35:24.691683	\N	\N	\N	\N	activ__resume_1718192124.pdf	\N	\N	\N
205	Pack Office	\N	\N	elianerasoarivelo80@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:25.022337	2024-06-12 11:35:25.022337	\N	\N	\N	\N	activ__resume_1718192125.pdf	\N	\N	\N
206	Total Direct	\N	\N	gaaralddohughuesnamikaze@gmail.com	261 322427604	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:25.42334	2024-06-12 11:35:25.42334	\N	\N	\N	\N	activ__resume_1718192125.pdf	\N	\N	\N
207	Betsileo Miray	\N	\N	noelyramami@gmail.com	034 71 200 30	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:25.834026	2024-06-12 11:35:25.834026	\N	\N	\N	\N	activ__resume_1718192125.pdf	\N	\N	\N
208	Stack Web	\N	\N	franras18@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:26.409966	2024-06-12 11:35:26.409966	\N	\N	\N	\N	activ__resume_1718192126.pdf	\N	\N	\N
209	Hanitra Sylvie	\N	\N	hanitraravaoharivelo@yahoo.fr	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:26.785992	2024-06-12 11:35:26.785992	\N	\N	\N	\N	activ__resume_1718192126.pdf	\N	\N	\N
210	Hub Communautaire	\N	\N	manjakamike@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:27.229003	2024-06-12 11:35:27.229003	\N	\N	\N	\N	activ__resume_1718192127.pdf	\N	\N	\N
211	Tojonirina Ambinintsoa	\N	\N	andriamananjaratojonirina@gmail.com	034 59 798 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:27.717497	2024-06-12 11:35:27.717497	\N	\N	\N	\N	activ__resume_1718192127.pdf	\N	\N	\N
212	Sabotsy Namehana	\N	\N	manitramalalaniaina3@gmail.com	0347406958	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:27.982394	2024-06-12 11:35:27.982394	\N	\N	\N	\N	activ__resume_1718192127.pdf	\N	\N	\N
213	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:28.382143	2024-06-12 11:35:28.382143	\N	\N	\N	\N	activ__resume_1718192128.pdf	\N	\N	\N
214	Ankadifotsy Ambatomitsangana	\N	\N	anjaratefiarivelo@gmail.com	 101\n\n034 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:28.904377	2024-06-12 11:35:28.904377	\N	\N	\N	\N	activ__resume_1718192128.pdf	\N	\N	\N
215	Rindra Lalaina	\N	\N	irinah.morgane@gmail.com	034 05 757 47	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:29.208444	2024-06-12 11:35:29.208444	\N	\N	\N	\N	activ__resume_1718192129.pdf	\N	\N	\N
216	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:29.421539	2024-06-12 11:35:29.421539	\N	\N	\N	\N	activ__resume_1718192129.pdf	\N	\N	\N
217	Grand Melis	\N	\N	\N	103 071 008 353	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:29.977827	2024-06-12 11:35:29.977827	\N	\N	\N	\N	activ__resume_1718192129.pdf	\N	\N	\N
218	Aina Miray	\N	\N	andrihmiray@gmail.com	 101\n261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:30.408563	2024-06-12 11:35:30.408563	\N	\N	\N	\N	activ__resume_1718192130.pdf	\N	\N	\N
219	University Andoharanofotsy	\N	\N	salohyandriambololona48@gmail.com	0342546004	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:30.960954	2024-06-12 11:35:30.960954	\N	\N	\N	\N	activ__resume_1718192130.pdf	\N	\N	\N
220	Ressources Humaines	\N	\N	\N	2017-2018	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:31.422581	2024-06-12 11:35:31.422581	\N	\N	\N	\N	activ__resume_1718192131.pdf	\N	\N	\N
221	Lantoarinoro Francia	\N	\N	tinah.valerie@yahoo.com	261347080797	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:31.740021	2024-06-12 11:35:31.740021	\N	\N	\N	\N	activ__resume_1718192131.pdf	\N	\N	\N
222	John Franco	\N	\N	\N	034 31 226 78	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:32.055604	2024-06-12 11:35:32.055604	\N	\N	\N	\N	activ__resume_1718192132.pdf	\N	\N	\N
223	Tsirisoa Nimrod	\N	\N	barytsiry@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:32.435982	2024-06-12 11:35:32.435982	\N	\N	\N	\N	activ__resume_1718192132.pdf	\N	\N	\N
224	Intello Tsimbazaza	\N	\N	carenemara@gmail.com	032 05 412 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:32.939561	2024-06-12 11:35:32.939561	\N	\N	\N	\N	activ__resume_1718192132.pdf	\N	\N	\N
225	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:33.364402	2024-06-12 11:35:33.364402	\N	\N	\N	\N	activ__resume_1718192133.pdf	\N	\N	\N
226	Safidiniaina Mendr	\N	\N	\N	0343097031	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:34.047088	2024-06-12 11:35:34.047088	\N	\N	\N	\N	activ__resume_1718192134.pdf	\N	\N	\N
227	Bis Mahabo	\N	\N	\N	0345080464	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:34.480399	2024-06-12 11:35:34.480399	\N	\N	\N	\N	activ__resume_1718192134.pdf	\N	\N	\N
228	Mikalo Tsanta	\N	\N	antemaraharison4546@gmail.com	32 80 791 23	\N	IVA 21 Bis Ambohimanarina	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:34.835982	2024-06-12 11:35:34.835982	\N	\N	\N	\N	activ__resume_1718192134.pdf	\N	\N	\N
229	Shamir Cassam	\N	\N	fyrajoharitianajessie@gmail.com	0343160071	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:35.371647	2024-06-12 11:35:35.371647	\N	\N	\N	\N	activ__resume_1718192135.pdf	\N	\N	\N
230	Esmeralda Francia	\N	\N	esmerldaanita@gmail.com	032 76	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:35.744768	2024-06-12 11:35:35.744768	\N	\N	\N	\N	activ__resume_1718192135.pdf	\N	\N	\N
231	Hanintriniaina Miora	\N	\N	123mioramiora@gmail.com	301 052 025 011	\N	41B bis p	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:36.090383	2024-06-12 11:35:36.090383	\N	\N	\N	\N	activ__resume_1718192136.pdf	\N	\N	\N
232	Inconnu	\N	\N	Mariorabe248@gmail.com	101 221 144 502	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:36.36915	2024-06-12 11:35:36.36915	\N	\N	\N	\N	activ__resume_1718192136.pdf	\N	\N	\N
233	Webhelp University	\N	\N	ramiarakaranja@gmail.com	0325365100	\N	F 207 Bis AMBOHIJAFY	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:36.785133	2024-06-12 11:35:36.785133	\N	\N	\N	\N	activ__resume_1718192136.pdf	\N	\N	\N
234	Bachelor Manager	\N	\N	rafaralahyanjara@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:37.147437	2024-06-12 11:35:37.147437	\N	\N	\N	\N	activ__resume_1718192137.pdf	\N	\N	\N
235	Yraia Marilla	\N	\N	\N	101 252 200 892	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:37.505279	2024-06-12 11:35:37.505279	\N	\N	\N	\N	activ__resume_1718192137.pdf	\N	\N	\N
236	Carrefour Banque	\N	\N	\N	 1914 67	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:37.847215	2024-06-12 11:35:37.847215	\N	\N	\N	\N	activ__resume_1718192137.pdf	\N	\N	\N
237	Niavoko Fanambinantsoa	\N	\N	niavoko.rakotoarison@gmail.com	261 3303336 03	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:38.424264	2024-06-12 11:35:38.424264	\N	\N	\N	\N	activ__resume_1718192138.pdf	\N	\N	\N
238	Antanetibe Ilafy	\N	\N	zoarihasinarakotoarivony@gmail.com	034 84 589 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:39.301806	2024-06-12 11:35:39.301806	\N	\N	\N	\N	activ__resume_1718192139.pdf	\N	\N	\N
239	Inconnu	\N	\N	\N	034-92-737-91	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:39.644525	2024-06-12 11:35:39.644525	\N	\N	\N	\N	activ__resume_1718192139.pdf	\N	\N	\N
240	Martin Luther	\N	\N	olivianarob@gmail.com	101 222 117 757	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:39.990065	2024-06-12 11:35:39.990065	\N	\N	\N	\N	activ__resume_1718192139.pdf	\N	\N	\N
241	Ressources Humaines	\N	\N	mamitianarafanomezantsoa07@gmail.com	032 45 948 13	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:40.455082	2024-06-12 11:35:40.455082	\N	\N	\N	\N	activ__resume_1718192140.pdf	\N	\N	\N
242	Claude Rolland	\N	\N	Ongtama202@gmail.com	038 30 942 77	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:40.776527	2024-06-12 11:35:40.776527	\N	\N	\N	\N	activ__resume_1718192140.pdf	\N	\N	\N
243	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:41.013991	2024-06-12 11:35:41.013991	\N	\N	\N	\N	activ__resume_1718192141.pdf	\N	\N	\N
244	Cathy Alexia	\N	\N	cathyalexiarasolofonirina@gmail.com	034 92 136 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:41.44007	2024-06-12 11:35:41.44007	\N	\N	\N	\N	activ__resume_1718192141.pdf	\N	\N	\N
245	Power Point	\N	\N	andrimanatena.hobiarisoa@gmail.com	034 50 970 74	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:41.763849	2024-06-12 11:35:41.763849	\N	\N	\N	\N	activ__resume_1718192141.pdf	\N	\N	\N
246	Odity Madagascar	\N	\N	Androantsonatacha82@gmail.com	032 92 904 56	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:42.265792	2024-06-12 11:35:42.265792	\N	\N	\N	\N	activ__resume_1718192142.pdf	\N	\N	\N
247	Umbrella School	\N	\N	tahirintsoaparfait@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:42.83154	2024-06-12 11:35:42.83154	\N	\N	\N	\N	activ__resume_1718192142.pdf	\N	\N	\N
248	Inconnu	\N	\N	emiliennix@gmail.com	0347712867	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:43.150274	2024-06-12 11:35:43.150274	\N	\N	\N	\N	activ__resume_1718192143.pdf	\N	\N	\N
249	Ankadindambo Ambohimangakely	\N	\N	miourafah@gmail.com	32 51 154 41	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:43.444236	2024-06-12 11:35:43.444236	\N	\N	\N	\N	activ__resume_1718192143.pdf	\N	\N	\N
250	Curriculum Vitae	\N	\N	giannisandriner@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:43.856007	2024-06-12 11:35:43.856007	\N	\N	\N	\N	activ__resume_1718192143.pdf	\N	\N	\N
251	Carlton Anosy	\N	\N	holimiraza@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:44.473574	2024-06-12 11:35:44.473574	\N	\N	\N	\N	activ__resume_1718192144.pdf	\N	\N	\N
252	Jamie Patrick	\N	\N	andrianjatojamie@gmail.com	0347048564	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:45.037601	2024-06-12 11:35:45.037601	\N	\N	\N	\N	activ__resume_1718192145.pdf	\N	\N	\N
253	Pack Office	\N	\N	thessaandrianiaina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:45.339322	2024-06-12 11:35:45.339322	\N	\N	\N	\N	activ__resume_1718192145.pdf	\N	\N	\N
254	Communication Publicitaire	\N	\N	felaniainarobonaranaivojaona@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:45.721256	2024-06-12 11:35:45.721256	\N	\N	\N	\N	activ__resume_1718192145.pdf	\N	\N	\N
255	Herinivo Lydie	\N	\N	\N	034 72 415 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:46.055083	2024-06-12 11:35:46.055083	\N	\N	\N	\N	activ__resume_1718192146.pdf	\N	\N	\N
256	Bis Avaradoha	\N	\N	safidyniainarandriamananjara@gmail.com	034 01 968 58	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:46.415648	2024-06-12 11:35:46.415648	\N	\N	\N	\N	activ__resume_1718192146.pdf	\N	\N	\N
257	Elinah Karine	\N	\N	karinemichou@laposte.net	032 95 751 53	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:46.739749	2024-06-12 11:35:46.739749	\N	\N	\N	\N	activ__resume_1718192146.pdf	\N	\N	\N
258	Agent Amazon	\N	\N	juveniadoko@gmail.com	2016-2017	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:47.051427	2024-06-12 11:35:47.051427	\N	\N	\N	\N	activ__resume_1718192147.pdf	\N	\N	\N
259	Flight Ampandrana	\N	\N	ndremba.tafita@gmail.com	034 21 264 41	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:47.431072	2024-06-12 11:35:47.431072	\N	\N	\N	\N	activ__resume_1718192147.pdf	\N	\N	\N
260	Techniques Juridiques	\N	\N	raboanaryandoniainamarc@gmail.com	2020-2022	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:47.838933	2024-06-12 11:35:47.838933	\N	\N	\N	\N	activ__resume_1718192147.pdf	\N	\N	\N
261	Inconnu	\N	\N	Princiarak2@gmail.com	2610329671275	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:48.132625	2024-06-12 11:35:48.132625	\N	\N	\N	\N	activ__resume_1718192148.pdf	\N	\N	\N
262	Marobiby Itaosy	\N	\N	randria.asombola@gmail.com	032 55 525 31	\N	IAK 187 B Marobiby	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:48.548428	2024-06-12 11:35:48.548428	\N	\N	\N	\N	activ__resume_1718192148.pdf	\N	\N	\N
263	Rojonianja Vahatr	\N	\N	strvfona@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:49.287545	2024-06-12 11:35:49.287545	\N	\N	\N	\N	activ__resume_1718192149.pdf	\N	\N	\N
264	Mamitiana Mariah	\N	\N	mariahrakotovao02@gmail.com	32 21 487 92	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:49.681057	2024-06-12 11:35:49.681057	\N	\N	\N	\N	activ__resume_1718192149.pdf	\N	\N	\N
265	Rady Todisoa	\N	\N	raharijaonarady@gmail.com	\n 0341787971	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:49.971636	2024-06-12 11:35:49.971636	\N	\N	\N	\N	activ__resume_1718192149.pdf	\N	\N	\N
266	Cultureet Management	\N	\N	andriahariseheno@gmail.com	2019-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:50.333706	2024-06-12 11:35:50.333706	\N	\N	\N	\N	activ__resume_1718192150.pdf	\N	\N	\N
267	Malalatiana Lanja	\N	\N	ranaivomanantsoamalalatianalan@gmail.com	2011-2012	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:50.563635	2024-06-12 11:35:50.563635	\N	\N	\N	\N	activ__resume_1718192150.pdf	\N	\N	\N
268	Marcelle Ranarison	\N	\N	\N	2020-2020	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:50.927941	2024-06-12 11:35:50.927941	\N	\N	\N	\N	activ__resume_1718192150.pdf	\N	\N	\N
269	Ampanomahitsy Ambohitrimanjaka	\N	\N	hera_hents@yahoo.fr	0342510284	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:51.56074	2024-06-12 11:35:51.56074	\N	\N	\N	\N	activ__resume_1718192151.pdf	\N	\N	\N
270	Henri Fraise	\N	\N	Todisoa.elyse@gmail.com	033 29 311 46	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:51.91415	2024-06-12 11:35:51.91415	\N	\N	\N	\N	activ__resume_1718192151.pdf	\N	\N	\N
271	Lucia Emilie	\N	\N	luciaramarokoto@gmail.com	 - 033 02	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:52.389923	2024-06-12 11:35:52.389923	\N	\N	\N	\N	activ__resume_1718192152.pdf	\N	\N	\N
272	Sherlock Homes	\N	\N	\N	034 08 022 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:52.785978	2024-06-12 11:35:52.785978	\N	\N	\N	\N	activ__resume_1718192152.pdf	\N	\N	\N
273	Herilanto Hasina	\N	\N	rantoherihasina@gmail.com	034 40 248 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:53.10867	2024-06-12 11:35:53.10867	\N	\N	\N	\N	activ__resume_1718192153.pdf	\N	\N	\N
274	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:53.330213	2024-06-12 11:35:53.330213	\N	\N	\N	\N	activ__resume_1718192153.pdf	\N	\N	\N
275	Communication Professionnel	\N	\N	andriantsaramitantsoa@hotmail.com	261 343 729 112	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:53.841271	2024-06-12 11:35:53.841271	\N	\N	\N	\N	activ__resume_1718192153.pdf	\N	\N	\N
276	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:54.047262	2024-06-12 11:35:54.047262	\N	\N	\N	\N	activ__resume_1718192154.pdf	\N	\N	\N
277	Marissa Ramanantsoa	\N	\N	andriasarrah@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:54.335658	2024-06-12 11:35:54.335658	\N	\N	\N	\N	activ__resume_1718192154.pdf	\N	\N	\N
278	Andriantiana Malala	\N	\N	\N	034 45 655 56	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:54.645893	2024-06-12 11:35:54.645893	\N	\N	\N	\N	activ__resume_1718192154.pdf	\N	\N	\N
279	Ambodivona Ambohimanarina	\N	\N	vanialazandrainy@gmail.com	2019-2020	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:55.040729	2024-06-12 11:35:55.040729	\N	\N	\N	\N	activ__resume_1718192155.pdf	\N	\N	\N
280	Ankatso Antananarivo	\N	\N	\N	261342555392	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:55.363931	2024-06-12 11:35:55.363931	\N	\N	\N	\N	activ__resume_1718192155.pdf	\N	\N	\N
281	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:55.570059	2024-06-12 11:35:55.570059	\N	\N	\N	\N	activ__resume_1718192155.pdf	\N	\N	\N
282	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:55.78285	2024-06-12 11:35:55.78285	\N	\N	\N	\N	activ__resume_1718192155.pdf	\N	\N	\N
283	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:55.984266	2024-06-12 11:35:55.984266	\N	\N	\N	\N	activ__resume_1718192155.pdf	\N	\N	\N
284	Sitrakiniaina Liliane	\N	\N	fanaja.wendy@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:56.310354	2024-06-12 11:35:56.310354	\N	\N	\N	\N	activ__resume_1718192156.pdf	\N	\N	\N
285	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:56.517655	2024-06-12 11:35:56.517655	\N	\N	\N	\N	activ__resume_1718192156.pdf	\N	\N	\N
286	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:56.742093	2024-06-12 11:35:56.742093	\N	\N	\N	\N	activ__resume_1718192156.pdf	\N	\N	\N
287	Valisoa Hajaina	\N	\N	\N	117172025665	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:57.345299	2024-06-12 11:35:57.345299	\N	\N	\N	\N	activ__resume_1718192157.pdf	\N	\N	\N
288	Droit Public	\N	\N	Rojolovasoa099@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:57.627483	2024-06-12 11:35:57.627483	\N	\N	\N	\N	activ__resume_1718192157.pdf	\N	\N	\N
289	Pavillon Kanto	\N	\N	anjarakant@gmail.com	0347278204	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:35:57.957927	2024-06-12 11:35:57.957927	\N	\N	\N	\N	activ__resume_1718192157.pdf	\N	\N	\N
290	Kilonga Tafita	\N	\N	andrianoelisoamenabe@gmail.com	2018-2019	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:58.506171	2024-06-12 11:35:58.506171	\N	\N	\N	\N	activ__resume_1718192158.pdf	\N	\N	\N
291	Ny Aina	\N	\N	nyainaraf1@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:59.01481	2024-06-12 11:35:59.01481	\N	\N	\N	\N	activ__resume_1718192159.pdf	\N	\N	\N
292	Community Management	\N	\N	rabehasainavero@gmail.com	261 32	\N	467 Ter	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:35:59.670512	2024-06-12 11:35:59.670512	\N	\N	\N	\N	activ__resume_1718192159.pdf	\N	\N	\N
293	Naivosoa Lucien	\N	\N	judirazaka26@gmail.com	034 64 420 86	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:00.246422	2024-06-12 11:36:00.246422	\N	\N	\N	\N	activ__resume_1718192160.pdf	\N	\N	\N
294	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:00.455263	2024-06-12 11:36:00.455263	\N	\N	\N	\N	activ__resume_1718192160.pdf	\N	\N	\N
295	Les Rossignols	\N	\N	kantorakotobe16@gmail.com	0347554220	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:00.927478	2024-06-12 11:36:00.927478	\N	\N	\N	\N	activ__resume_1718192160.pdf	\N	\N	\N
296	Anosizato Est	\N	\N	ratsimisandaeric@gmail.com	034 49 275 79	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:01.50862	2024-06-12 11:36:01.50862	\N	\N	\N	\N	activ__resume_1718192161.pdf	\N	\N	\N
297	Djimmy Lorenzo	\N	\N	\N	261328007661	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:02.494332	2024-06-12 11:36:02.494332	\N	\N	\N	\N	activ__resume_1718192162.pdf	\N	\N	\N
298	Mamy Ny	\N	\N	larelary1@gmail.com	032 54 638 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:02.893472	2024-06-12 11:36:02.893472	\N	\N	\N	\N	activ__resume_1718192162.pdf	\N	\N	\N
299	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:03.096507	2024-06-12 11:36:03.096507	\N	\N	\N	\N	activ__resume_1718192163.pdf	\N	\N	\N
300	Antanetibe Ilafy	\N	\N	sombiniainatojonirina1@gmail.com	0342947367	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:03.484114	2024-06-12 11:36:03.484114	\N	\N	\N	\N	activ__resume_1718192163.pdf	\N	\N	\N
301	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:03.699305	2024-06-12 11:36:03.699305	\N	\N	\N	\N	activ__resume_1718192163.pdf	\N	\N	\N
302	Front End	\N	\N	jeanickrakotondrandria@gmail.com	261345772129	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:04.023504	2024-06-12 11:36:04.023504	\N	\N	\N	\N	activ__resume_1718192164.pdf	\N	\N	\N
303	Relation Client	\N	\N	milantean@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:04.429566	2024-06-12 11:36:04.429566	\N	\N	\N	\N	activ__resume_1718192164.pdf	\N	\N	\N
304	Ter Ambodimita	\N	\N	tiavinaratsimbaha@gmail.com	034 99 967 88	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:04.690946	2024-06-12 11:36:04.690946	\N	\N	\N	\N	activ__resume_1718192164.pdf	\N	\N	\N
305	Tanjona Auguste	\N	\N	tanjonarabearimanana915@gmail.com	0345349452	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:05.000622	2024-06-12 11:36:05.000622	\N	\N	\N	\N	activ__resume_1718192165.pdf	\N	\N	\N
306	Volana Hasina	\N	\N	\N	0342315803	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:05.356792	2024-06-12 11:36:05.356792	\N	\N	\N	\N	activ__resume_1718192165.pdf	\N	\N	\N
307	Mireille Prisca	\N	\N	Fymireilleprisca@gmail.com	 0331479924	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:05.692666	2024-06-12 11:36:05.692666	\N	\N	\N	\N	activ__resume_1718192165.pdf	\N	\N	\N
308	Commissariat Mahabibo	\N	\N	comptaboeny@gmail.com	26134 25	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:06.073646	2024-06-12 11:36:06.073646	\N	\N	\N	\N	activ__resume_1718192166.pdf	\N	\N	\N
309	Operations Manager	\N	\N	minorarah@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:06.55208	2024-06-12 11:36:06.55208	\N	\N	\N	\N	activ__resume_1718192166.pdf	\N	\N	\N
310	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:06.756394	2024-06-12 11:36:06.756394	\N	\N	\N	\N	activ__resume_1718192166.pdf	\N	\N	\N
311	Miora Faniry	\N	\N	andriantsoamiorafaniry@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:07.219067	2024-06-12 11:36:07.219067	\N	\N	\N	\N	activ__resume_1718192167.pdf	\N	\N	\N
352	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:23.343376	2024-06-12 11:36:23.343376	\N	\N	\N	\N	activ__resume_1718192183.pdf	\N	\N	\N
312	Moderne Ampefiloha	\N	\N	cedric.ralaimi@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:07.682144	2024-06-12 11:36:07.682144	\N	\N	\N	\N	activ__resume_1718192167.pdf	\N	\N	\N
313	Net Webform	\N	\N	tojo.rakotondrabary@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:08.206554	2024-06-12 11:36:08.206554	\N	\N	\N	\N	activ__resume_1718192168.pdf	\N	\N	\N
314	Ter Ambodivona	\N	\N	herimalalasantatra@gmail.com	34 5150731	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:08.600129	2024-06-12 11:36:08.600129	\N	\N	\N	\N	activ__resume_1718192168.pdf	\N	\N	\N
315	Aina Patrick	\N	\N	\N	034 08 157 06	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:09.088008	2024-06-12 11:36:09.088008	\N	\N	\N	\N	activ__resume_1718192169.pdf	\N	\N	\N
316	Voahangivola Ony	\N	\N	ounymahefa@gmail.com	\n\n034 21	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:09.435649	2024-06-12 11:36:09.435649	\N	\N	\N	\N	activ__resume_1718192169.pdf	\N	\N	\N
317	Network Service	\N	\N	yrazafinavalona@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:09.876449	2024-06-12 11:36:09.876449	\N	\N	\N	\N	activ__resume_1718192169.pdf	\N	\N	\N
318	Patrick Cotrelle	\N	\N	boska.bossa@gmail.com	034 62 570 62	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:10.315853	2024-06-12 11:36:10.315853	\N	\N	\N	\N	activ__resume_1718192170.pdf	\N	\N	\N
319	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:10.636205	2024-06-12 11:36:10.636205	\N	\N	\N	\N	activ__resume_1718192170.pdf	\N	\N	\N
320	Anjaratiana Eric	\N	\N	ericanjaratiana66@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:11.065181	2024-06-12 11:36:11.065181	\N	\N	\N	\N	activ__resume_1718192171.pdf	\N	\N	\N
321	Mamitiana Mariah	\N	\N	mariahrakotovao02@gmail.com	32 21 487 92	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:11.447731	2024-06-12 11:36:11.447731	\N	\N	\N	\N	activ__resume_1718192171.pdf	\N	\N	\N
322	Inconnu	\N	\N	annicksoanjara@gmail.com	0327669926	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:11.714738	2024-06-12 11:36:11.714738	\N	\N	\N	\N	activ__resume_1718192171.pdf	\N	\N	\N
323	Purchase Order	\N	\N	welch_ninie@yahoo.fr	034 85 751 87	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:12.23274	2024-06-12 11:36:12.23274	\N	\N	\N	\N	activ__resume_1718192172.pdf	\N	\N	\N
324	Inconnu	\N	\N	phanierazafy@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:12.76601	2024-06-12 11:36:12.76601	\N	\N	\N	\N	activ__resume_1718192172.pdf	\N	\N	\N
325	Ankerana Ankadindramamy	\N	\N	tokytiti02@gmail.com	 2017-2019	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:13.049147	2024-06-12 11:36:13.049147	\N	\N	\N	\N	activ__resume_1718192173.pdf	\N	\N	\N
326	Betongolo Nord	\N	\N	rasolofona@gmail.com	2015-2018	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:13.345898	2024-06-12 11:36:13.345898	\N	\N	\N	\N	activ__resume_1718192173.pdf	\N	\N	\N
327	Ecole La	\N	\N	jrabemahatsara@gmail.com	\n\n\n032 79	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:13.620831	2024-06-12 11:36:13.620831	\N	\N	\N	\N	activ__resume_1718192173.pdf	\N	\N	\N
328	Softwell Ankadindramamy	\N	\N	andreahrazafy@gmail.com	112 442 009 075	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:13.91968	2024-06-12 11:36:13.91968	\N	\N	\N	\N	activ__resume_1718192173.pdf	\N	\N	\N
329	Anderson Gino	\N	\N	andersonginozidane@gmail.com	101-981-101-899	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:14.299483	2024-06-12 11:36:14.299483	\N	\N	\N	\N	activ__resume_1718192174.pdf	\N	\N	\N
330	Kanto Finaritra	\N	\N	\N	034 55 230 89	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:14.577492	2024-06-12 11:36:14.577492	\N	\N	\N	\N	activ__resume_1718192174.pdf	\N	\N	\N
331	Remi Ange	\N	\N	tojoniaina072@gmail.com	0344013286	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:15.253566	2024-06-12 11:36:15.253566	\N	\N	\N	\N	activ__resume_1718192175.pdf	\N	\N	\N
332	Ignite Program	\N	\N	mamyranto.raz@gmail.com	032 92 498 31	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:15.779019	2024-06-12 11:36:15.779019	\N	\N	\N	\N	activ__resume_1718192175.pdf	\N	\N	\N
333	Jouve Madagascar	\N	\N	noelineratovo26@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:16.082427	2024-06-12 11:36:16.082427	\N	\N	\N	\N	activ__resume_1718192176.pdf	\N	\N	\N
334	Logia Studios	\N	\N	koloinachristel@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:16.547203	2024-06-12 11:36:16.547203	\N	\N	\N	\N	activ__resume_1718192176.pdf	\N	\N	\N
335	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:16.739368	2024-06-12 11:36:16.739368	\N	\N	\N	\N	activ__resume_1718192176.pdf	\N	\N	\N
336	Chez Intelcia	\N	\N	\N	034 99 926 10	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:17.10327	2024-06-12 11:36:17.10327	\N	\N	\N	\N	activ__resume_1718192177.pdf	\N	\N	\N
337	Antananarivo Madagascar	\N	\N	narsa.vahiny@gmail.com	261327844748	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:17.596872	2024-06-12 11:36:17.596872	\N	\N	\N	\N	activ__resume_1718192177.pdf	\N	\N	\N
338	Nirina Niaina	\N	\N	rakotonarivom32@gmail.com	\n0383189563	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:17.948034	2024-06-12 11:36:17.948034	\N	\N	\N	\N	activ__resume_1718192177.pdf	\N	\N	\N
339	Call Madagascar	\N	\N	heriniainaadoshine@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:18.364392	2024-06-12 11:36:18.364392	\N	\N	\N	\N	activ__resume_1718192178.pdf	\N	\N	\N
340	Fanomezantsoa Radonandrasana	\N	\N	radofanomezantsoa21@gmail.com	\n\n032 68	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:18.823751	2024-06-12 11:36:18.823751	\N	\N	\N	\N	activ__resume_1718192178.pdf	\N	\N	\N
341	Doria Epiphanie	\N	\N	\N	0327905665	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:19.3335	2024-06-12 11:36:19.3335	\N	\N	\N	\N	activ__resume_1718192179.pdf	\N	\N	\N
342	Silae Expert	\N	\N	andria112@gmail.com	2017-2018	\N	Inconnue	\N	https://www.linkedin.com/in/voary-	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:19.705887	2024-06-12 11:36:19.705887	\N	\N	\N	\N	activ__resume_1718192179.pdf	\N	\N	\N
343	Anosizato Ouest	\N	\N	rna.alice@gmail.com	038 05 761 22	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:20.208481	2024-06-12 11:36:20.208481	\N	\N	\N	\N	activ__resume_1718192180.pdf	\N	\N	\N
344	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:20.407817	2024-06-12 11:36:20.407817	\N	\N	\N	\N	activ__resume_1718192180.pdf	\N	\N	\N
345	Lead Manager	\N	\N	maxmahery65@gmail.com	0329609374	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:20.913147	2024-06-12 11:36:20.913147	\N	\N	\N	\N	activ__resume_1718192180.pdf	\N	\N	\N
346	Joseph Hardy	\N	\N	hardy.gpe.top@gmail.com	26132	\N	23 P	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:21.464351	2024-06-12 11:36:21.464351	\N	\N	\N	\N	activ__resume_1718192181.pdf	\N	\N	\N
347	Manjaka Ilafy	\N	\N	harilanto.rakotoarinjara@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:21.802667	2024-06-12 11:36:21.802667	\N	\N	\N	\N	activ__resume_1718192181.pdf	\N	\N	\N
348	Hanitriniaina Olivia	\N	\N	\N	034 21 519 19	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:22.117307	2024-06-12 11:36:22.117307	\N	\N	\N	\N	activ__resume_1718192182.pdf	\N	\N	\N
349	Saint Louis	\N	\N	idahrandriantahina@gmail.com	038 13 624 11	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:22.473633	2024-06-12 11:36:22.473633	\N	\N	\N	\N	activ__resume_1718192182.pdf	\N	\N	\N
350	Premier Cycle	\N	\N	rambelosonhajaskyline@gmail.co	2014-2017	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:22.82236	2024-06-12 11:36:22.82236	\N	\N	\N	\N	activ__resume_1718192182.pdf	\N	\N	\N
351	Fianara Edith	\N	\N	edithmasizara1993@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:23.135704	2024-06-12 11:36:23.135704	\N	\N	\N	\N	activ__resume_1718192183.pdf	\N	\N	\N
353	Antandrokomby Anosizato	\N	\N	Jeanluc.crasolo@gmail.com	\n\n0329090737	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:23.699363	2024-06-12 11:36:23.699363	\N	\N	\N	\N	activ__resume_1718192183.pdf	\N	\N	\N
354	Zo Mamilalaina	\N	\N	zorivomiarantsoa@gmail.com	032 51 021 05	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:23.974505	2024-06-12 11:36:23.974505	\N	\N	\N	\N	activ__resume_1718192183.pdf	\N	\N	\N
355	Saint Martin	\N	\N	podmoreandria@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:24.316368	2024-06-12 11:36:24.316368	\N	\N	\N	\N	activ__resume_1718192184.pdf	\N	\N	\N
356	Anja Ny	\N	\N	\N	103012006431	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:24.629475	2024-06-12 11:36:24.629475	\N	\N	\N	\N	activ__resume_1718192184.pdf	\N	\N	\N
357	Fanomezana Orima	\N	\N	gael.orima@yahoo.com	033 15 288 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:24.925891	2024-06-12 11:36:24.925891	\N	\N	\N	\N	activ__resume_1718192184.pdf	\N	\N	\N
358	Henitsoa Eliana	\N	\N	elinahramaromisa@gmail.com	0349426936	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:25.463696	2024-06-12 11:36:25.463696	\N	\N	\N	\N	activ__resume_1718192185.pdf	\N	\N	\N
359	Mihaja Lalaina	\N	\N	ramarokotomihaja@gmail.com	101222122922	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:25.809906	2024-06-12 11:36:25.809906	\N	\N	\N	\N	activ__resume_1718192185.pdf	\N	\N	\N
360	Lorenantsoa Koloina	\N	\N	\N	2020-2021	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:26.337592	2024-06-12 11:36:26.337592	\N	\N	\N	\N	activ__resume_1718192186.pdf	\N	\N	\N
361	Clermont Justin	\N	\N	\N	\n\n034 13	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:26.648732	2024-06-12 11:36:26.648732	\N	\N	\N	\N	activ__resume_1718192186.pdf	\N	\N	\N
362	Randriamananjara Mialihanta	\N	\N	mialihantarandria@gmail.com	0340895309	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:26.91842	2024-06-12 11:36:26.91842	\N	\N	\N	\N	activ__resume_1718192186.pdf	\N	\N	\N
363	Andriantsoa Onja	\N	\N	ounjams@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:27.391635	2024-06-12 11:36:27.391635	\N	\N	\N	\N	activ__resume_1718192187.pdf	\N	\N	\N
364	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:27.599965	2024-06-12 11:36:27.599965	\N	\N	\N	\N	activ__resume_1718192187.pdf	\N	\N	\N
365	Mino Harimisy	\N	\N	hhrimis@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:27.902078	2024-06-12 11:36:27.902078	\N	\N	\N	\N	activ__resume_1718192187.pdf	\N	\N	\N
366	Nomentsoa Ny	\N	\N	nomentsoa.raobelison@gmail.com	261327204665	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:28.357999	2024-06-12 11:36:28.357999	\N	\N	\N	\N	activ__resume_1718192188.pdf	\N	\N	\N
367	Valisoa Brigitte	\N	\N	ramandimbinonyvalisoabrigitte@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:28.761167	2024-06-12 11:36:28.761167	\N	\N	\N	\N	activ__resume_1718192188.pdf	\N	\N	\N
368	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:28.959904	2024-06-12 11:36:28.959904	\N	\N	\N	\N	activ__resume_1718192188.pdf	\N	\N	\N
369	Lova Tiana	\N	\N	\N	034 04 568 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:29.190391	2024-06-12 11:36:29.190391	\N	\N	\N	\N	activ__resume_1718192189.pdf	\N	\N	\N
370	Assistante Virtuelle	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:29.598869	2024-06-12 11:36:29.598869	\N	\N	\N	\N	activ__resume_1718192189.pdf	\N	\N	\N
371	Personne Responsable	\N	\N	laharivelo@gmail.com	2013-2014	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:30.116829	2024-06-12 11:36:30.116829	\N	\N	\N	\N	activ__resume_1718192190.pdf	\N	\N	\N
372	Voary Jeannica	\N	\N	voary.jeannica@gmail.com	261326614728	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:30.543366	2024-06-12 11:36:30.543366	\N	\N	\N	\N	activ__resume_1718192190.pdf	\N	\N	\N
373	Inconnu	\N	\N	joanorh@gmail.com	0329146402	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:31.046038	2024-06-12 11:36:31.046038	\N	\N	\N	\N	activ__resume_1718192191.pdf	\N	\N	\N
374	Tanjombato Ankadilalampotsy	\N	\N	ramangalahynico@gmail.com	2013-2014	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:31.444994	2024-06-12 11:36:31.444994	\N	\N	\N	\N	activ__resume_1718192191.pdf	\N	\N	\N
375	Teddy Johannes	\N	\N	tdyj.tex@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:31.938534	2024-06-12 11:36:31.938534	\N	\N	\N	\N	activ__resume_1718192191.pdf	\N	\N	\N
376	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:32.151597	2024-06-12 11:36:32.151597	\N	\N	\N	\N	activ__resume_1718192192.pdf	\N	\N	\N
377	Informatique Bureautique	\N	\N	\N	034 10 517 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:32.540918	2024-06-12 11:36:32.540918	\N	\N	\N	\N	activ__resume_1718192192.pdf	\N	\N	\N
378	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:32.726244	2024-06-12 11:36:32.726244	\N	\N	\N	\N	activ__resume_1718192192.pdf	\N	\N	\N
379	Onjatiana Anjamboahangy	\N	\N	\N	101 252 122 807	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:33.187824	2024-06-12 11:36:33.187824	\N	\N	\N	\N	activ__resume_1718192193.pdf	\N	\N	\N
380	Harivololona Monica	\N	\N	\N	34 47 312 39	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:33.473185	2024-06-12 11:36:33.473185	\N	\N	\N	\N	activ__resume_1718192193.pdf	\N	\N	\N
381	Base Client	\N	\N	rabefitiamialy@yahoo.fr	032 51 497 65	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:33.816999	2024-06-12 11:36:33.816999	\N	\N	\N	\N	activ__resume_1718192193.pdf	\N	\N	\N
382	Andriamamiharizo Tahina	\N	\N	tahirkely77@gmail.com	032 44 517 09	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:34.389871	2024-06-12 11:36:34.389871	\N	\N	\N	\N	activ__resume_1718192194.pdf	\N	\N	\N
383	Relation Client	\N	\N	lijah.raz@gmail.com	261324474960	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:34.762248	2024-06-12 11:36:34.762248	\N	\N	\N	\N	activ__resume_1718192194.pdf	\N	\N	\N
384	Skype Anna	\N	\N	felaniainara08@gmail.com	 038 87 874 90	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:35.053477	2024-06-12 11:36:35.053477	\N	\N	\N	\N	activ__resume_1718192195.pdf	\N	\N	\N
385	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:35.267967	2024-06-12 11:36:35.267967	\N	\N	\N	\N	activ__resume_1718192195.pdf	\N	\N	\N
386	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:35.466878	2024-06-12 11:36:35.466878	\N	\N	\N	\N	activ__resume_1718192195.pdf	\N	\N	\N
387	Falinirina Marc	\N	\N	falyraza12@gmail.com	032 28 752 56	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:36.121677	2024-06-12 11:36:36.121677	\N	\N	\N	\N	activ__resume_1718192196.pdf	\N	\N	\N
388	Ambaniala Itaosy	\N	\N	francoiserah@gmail.com	\n\n034 59	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:36.382627	2024-06-12 11:36:36.382627	\N	\N	\N	\N	activ__resume_1718192196.pdf	\N	\N	\N
389	Ravaka Elinah	\N	\N	ravakarandriana@gmail.com	034 85 520 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:36.707697	2024-06-12 11:36:36.707697	\N	\N	\N	\N	activ__resume_1718192196.pdf	\N	\N	\N
390	Power Point	\N	\N	tiaray25raz@gmail.com	034 36 265 29	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:37.02476	2024-06-12 11:36:37.02476	\N	\N	\N	\N	activ__resume_1718192197.pdf	\N	\N	\N
391	Andrainarivo Ampahibe	\N	\N	nambininarakoto1@gmail.com	\n0329238286	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:37.404258	2024-06-12 11:36:37.404258	\N	\N	\N	\N	activ__resume_1718192197.pdf	\N	\N	\N
392	Langue Communication	\N	\N	dolynaandrianiaina@gmail.com	0326768009	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:37.685558	2024-06-12 11:36:37.685558	\N	\N	\N	\N	activ__resume_1718192197.pdf	\N	\N	\N
393	Digital Marketing	\N	\N	mahefatianaherizo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:38.123293	2024-06-12 11:36:38.123293	\N	\N	\N	\N	activ__resume_1718192198.pdf	\N	\N	\N
394	Diamondra Sabrina	\N	\N	diamondrasabrina@outlook.fr	038 06 988 90	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:38.686219	2024-06-12 11:36:38.686219	\N	\N	\N	\N	activ__resume_1718192198.pdf	\N	\N	\N
395	Nalisoa Nantenaina	\N	\N	nantenaina.naly@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:39.131655	2024-06-12 11:36:39.131655	\N	\N	\N	\N	activ__resume_1718192199.pdf	\N	\N	\N
396	Assistante Administrative	\N	\N	malalalove@live.fr	2016-2023	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:39.607061	2024-06-12 11:36:39.607061	\N	\N	\N	\N	activ__resume_1718192199.pdf	\N	\N	\N
397	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:39.928599	2024-06-12 11:36:39.928599	\N	\N	\N	\N	activ__resume_1718192199.pdf	\N	\N	\N
398	Benja Philippe	\N	\N	lionbenja@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:40.731828	2024-06-12 11:36:40.731828	\N	\N	\N	\N	activ__resume_1718192200.pdf	\N	\N	\N
399	Antsa Nandrianina	\N	\N	araoelison58@gmail.com	034 25 936 84	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:41.137788	2024-06-12 11:36:41.137788	\N	\N	\N	\N	activ__resume_1718192201.pdf	\N	\N	\N
400	Nantenaina Manarivo	\N	\N	nathandriamanantsoa@gmail.com	261345418658	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:42.528999	2024-06-12 11:36:42.528999	\N	\N	\N	\N	activ__resume_1718192202.pdf	\N	\N	\N
401	Tsirifanambinana Ainanomena	\N	\N	\N	034 76 274 00	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:42.90828	2024-06-12 11:36:42.90828	\N	\N	\N	\N	activ__resume_1718192202.pdf	\N	\N	\N
402	Rondrosoa Ginnette	\N	\N	\N	261 38	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:43.227642	2024-06-12 11:36:43.227642	\N	\N	\N	\N	activ__resume_1718192203.pdf	\N	\N	\N
403	Antananarivo Madagascar	\N	\N	andrianina86@gmail.com	034 74 420 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:43.709997	2024-06-12 11:36:43.709997	\N	\N	\N	\N	activ__resume_1718192203.pdf	\N	\N	\N
404	English Course	\N	\N	rjoshnyelle@gmail.com	34799151	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:44.041595	2024-06-12 11:36:44.041595	\N	\N	\N	\N	activ__resume_1718192204.pdf	\N	\N	\N
405	Ranja Livah	\N	\N	ranjassist@gmail.com	261347479292	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:44.392568	2024-06-12 11:36:44.392568	\N	\N	\N	\N	activ__resume_1718192204.pdf	\N	\N	\N
406	Nyaina Rabarison	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:44.673802	2024-06-12 11:36:44.673802	\N	\N	\N	\N	activ__resume_1718192204.pdf	\N	\N	\N
407	Traditionnelle Chinoise	\N	\N	jangatsiverizo@gmail.com	0347533916	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:45.078251	2024-06-12 11:36:45.078251	\N	\N	\N	\N	activ__resume_1718192205.pdf	\N	\N	\N
408	Formation Professionnelle	\N	\N	tinah.mrt@gmail.com	- 2018-2021	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:45.323806	2024-06-12 11:36:45.323806	\N	\N	\N	\N	activ__resume_1718192205.pdf	\N	\N	\N
409	En Freelance	\N	\N	mireillep20.aps1b@gmail.com	261345349875	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:45.994057	2024-06-12 11:36:45.994057	\N	\N	\N	\N	activ__resume_1718192205.pdf	\N	\N	\N
410	Accueil Triage	\N	\N	hardyalbanie@gmail.com	261345165184	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:46.440245	2024-06-12 11:36:46.440245	\N	\N	\N	\N	activ__resume_1718192206.pdf	\N	\N	\N
411	Ankaditany Ampitatafika	\N	\N	razafin.lanto0607@gmail.com	034 08 958 20	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:46.920483	2024-06-12 11:36:46.920483	\N	\N	\N	\N	activ__resume_1718192206.pdf	\N	\N	\N
412	Andriamamiharizo Tahina	\N	\N	tahirkely77@gmail.com	032 44 517 09	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:47.62718	2024-06-12 11:36:47.62718	\N	\N	\N	\N	activ__resume_1718192207.pdf	\N	\N	\N
413	Informatique Risques	\N	\N	Rindra.randriamihajaharimanana@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:48.052482	2024-06-12 11:36:48.052482	\N	\N	\N	\N	activ__resume_1718192208.pdf	\N	\N	\N
414	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:48.24253	2024-06-12 11:36:48.24253	\N	\N	\N	\N	activ__resume_1718192208.pdf	\N	\N	\N
415	Service Finances	\N	\N	elysamahefa@gmail.com	034 16 741 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:48.651618	2024-06-12 11:36:48.651618	\N	\N	\N	\N	activ__resume_1718192208.pdf	\N	\N	\N
416	Ecole Normale	\N	\N	anjaraguy@gmail.com	032 53 357 23	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:49.001345	2024-06-12 11:36:49.001345	\N	\N	\N	\N	activ__resume_1718192209.pdf	\N	\N	\N
417	Ter Androhibe	\N	\N	erickarandrianarison@yahoo.fr	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:49.330653	2024-06-12 11:36:49.330653	\N	\N	\N	\N	activ__resume_1718192209.pdf	\N	\N	\N
418	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:49.540382	2024-06-12 11:36:49.540382	\N	\N	\N	\N	activ__resume_1718192209.pdf	\N	\N	\N
419	Anosivavaka Ambohimanarina	\N	\N	\N	0334546008	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:49.820998	2024-06-12 11:36:49.820998	\N	\N	\N	\N	activ__resume_1718192209.pdf	\N	\N	\N
420	Rasoloarijaona Soafinaritra	\N	\N	fy.rasolo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:50.216192	2024-06-12 11:36:50.216192	\N	\N	\N	\N	activ__resume_1718192210.pdf	\N	\N	\N
421	Ter Ampanotokana	\N	\N	justhenriette24@gmail.com	034 46 478 51	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:50.483395	2024-06-12 11:36:50.483395	\N	\N	\N	\N	activ__resume_1718192210.pdf	\N	\N	\N
422	Coach Production	\N	\N	Nancya.niharinosy@gmail.com	 034 08 423 93	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:50.736419	2024-06-12 11:36:50.736419	\N	\N	\N	\N	activ__resume_1718192210.pdf	\N	\N	\N
423	Comdata Madagascar	\N	\N	ramiarimamonjy.ravaka@gmail.co	0346126326	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:51.251674	2024-06-12 11:36:51.251674	\N	\N	\N	\N	activ__resume_1718192211.pdf	\N	\N	\N
424	Formation Professionnelle	\N	\N	hasinarm16@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:51.665464	2024-06-12 11:36:51.665464	\N	\N	\N	\N	activ__resume_1718192211.pdf	\N	\N	\N
425	Nomempifaliana Volatiana	\N	\N	volatianarafanomezantsoa@gmail.com	033 17 611 89	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:52.081406	2024-06-12 11:36:52.081406	\N	\N	\N	\N	activ__resume_1718192212.pdf	\N	\N	\N
426	Virtual Assistant	\N	\N	kati.assistancevirtuelle@gmail.com	261 33	\N	Inconnue	\N	https://www.linkedin.com/in/kati-	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:52.664511	2024-06-12 11:36:52.664511	\N	\N	\N	\N	activ__resume_1718192212.pdf	\N	\N	\N
427	Sabotsy Namehana	\N	\N	tianaralimanana@gmail.com	 0343363148	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:53.057792	2024-06-12 11:36:53.057792	\N	\N	\N	\N	activ__resume_1718192213.pdf	\N	\N	\N
428	Hasindradahy Miora	\N	\N	ramanantsoa.mioranyainah@gmail.com	032 24 905 88	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:53.417428	2024-06-12 11:36:53.417428	\N	\N	\N	\N	activ__resume_1718192213.pdf	\N	\N	\N
429	Ampandrana Est	\N	\N	andriniainaonintsoa73@gmail.com	  034 88	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:53.821678	2024-06-12 11:36:53.821678	\N	\N	\N	\N	activ__resume_1718192213.pdf	\N	\N	\N
430	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:54.039485	2024-06-12 11:36:54.039485	\N	\N	\N	\N	activ__resume_1718192214.pdf	\N	\N	\N
431	Mandialaza Ankadifotsy	\N	\N	andrianiainaadriano657@gmail.com	038 46 031 38	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:54.308372	2024-06-12 11:36:54.308372	\N	\N	\N	\N	activ__resume_1718192214.pdf	\N	\N	\N
432	Anosivavaka Ambohimanarina	\N	\N	\N	0334546008	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:54.587894	2024-06-12 11:36:54.587894	\N	\N	\N	\N	activ__resume_1718192214.pdf	\N	\N	\N
433	Professionnelle Madagascar	\N	\N	elihmaelle@gmail.com	034 96 797 51	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:55.027448	2024-06-12 11:36:55.027448	\N	\N	\N	\N	activ__resume_1718192215.pdf	\N	\N	\N
434	Customer Success	\N	\N	vatosoando@gmail.com	322811194	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:55.768983	2024-06-12 11:36:55.768983	\N	\N	\N	\N	activ__resume_1718192215.pdf	\N	\N	\N
435	Volaina Rova	\N	\N	rova.riina@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:56.160083	2024-06-12 11:36:56.160083	\N	\N	\N	\N	activ__resume_1718192216.pdf	\N	\N	\N
436	Situation Familiale	\N	\N	nirina.andriana97@gmail.com	00 261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:56.850706	2024-06-12 11:36:56.850706	\N	\N	\N	\N	activ__resume_1718192216.pdf	\N	\N	\N
437	Irmine Santatriniaina	\N	\N	snttrandrian@gmail.com	034 46 745 96	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:57.23209	2024-06-12 11:36:57.23209	\N	\N	\N	\N	activ__resume_1718192217.pdf	\N	\N	\N
438	Fenosoa Augustine	\N	\N	feno9278@gmail.com	\n\n0341788955	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:57.747367	2024-06-12 11:36:57.747367	\N	\N	\N	\N	activ__resume_1718192217.pdf	\N	\N	\N
439	Annick Volatiana	\N	\N	ratovomandimby@gmail.com	0344967325	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:58.017455	2024-06-12 11:36:58.017455	\N	\N	\N	\N	activ__resume_1718192218.pdf	\N	\N	\N
440	Unity Call	\N	\N	caroleandriamifidy7@gmail.com	032 74 803 89	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:58.376301	2024-06-12 11:36:58.376301	\N	\N	\N	\N	activ__resume_1718192218.pdf	\N	\N	\N
441	Nandrianina Rinah	\N	\N	malia.rakotoarison@gmail.com	0346867576	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:58.640604	2024-06-12 11:36:58.640604	\N	\N	\N	\N	activ__resume_1718192218.pdf	\N	\N	\N
442	Anosizato Ouest	\N	\N	rna.alice@gmail.com	038 05 761 22	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:58.977897	2024-06-12 11:36:58.977897	\N	\N	\N	\N	activ__resume_1718192218.pdf	\N	\N	\N
443	Spring Boot	\N	\N	tojohajarisoa@gmail.com	33 20 480 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:36:59.367469	2024-06-12 11:36:59.367469	\N	\N	\N	\N	activ__resume_1718192219.pdf	\N	\N	\N
444	Juliana Sahy	\N	\N	sedrajuliana@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:36:59.66813	2024-06-12 11:36:59.66813	\N	\N	\N	\N	activ__resume_1718192219.pdf	\N	\N	\N
445	Haingo Harimalala	\N	\N	andriantsilavina17@gmail.com	034 54 857 92	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:00.063368	2024-06-12 11:37:00.063368	\N	\N	\N	\N	activ__resume_1718192220.pdf	\N	\N	\N
446	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:00.243581	2024-06-12 11:37:00.243581	\N	\N	\N	\N	activ__resume_1718192220.pdf	\N	\N	\N
447	Ambohidakana Ambodimita	\N	\N	mbolatianavicky@gmail.com	034 99 071 94	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:00.632752	2024-06-12 11:37:00.632752	\N	\N	\N	\N	activ__resume_1718192220.pdf	\N	\N	\N
448	Licence Professionnelle	\N	\N	nantenainarakoto371@gmail.com	034 23 904 57	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:00.960549	2024-06-12 11:37:00.960549	\N	\N	\N	\N	activ__resume_1718192220.pdf	\N	\N	\N
449	Heriniaina Eddy	\N	\N	eddy.heriniaina@gmail.com	034 31 201 50	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:01.769909	2024-06-12 11:37:01.769909	\N	\N	\N	\N	activ__resume_1718192221.pdf	\N	\N	\N
450	Power Point	\N	\N	tiaray25raz@gmail.com	034 36 265 29	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:02.11163	2024-06-12 11:37:02.11163	\N	\N	\N	\N	activ__resume_1718192222.pdf	\N	\N	\N
451	Xavier Antanimena	\N	\N	harryron97@gmail.com	261345181397	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:02.375551	2024-06-12 11:37:02.375551	\N	\N	\N	\N	activ__resume_1718192222.pdf	\N	\N	\N
452	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:02.564937	2024-06-12 11:37:02.564937	\N	\N	\N	\N	activ__resume_1718192222.pdf	\N	\N	\N
453	Ampandrana Est	\N	\N	andriniainaonintsoa73@gmail.com	  034 88	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:02.942403	2024-06-12 11:37:02.942403	\N	\N	\N	\N	activ__resume_1718192222.pdf	\N	\N	\N
454	Lucie Berthine	\N	\N	lucierazafindrajery@gmail.com	111 012 018 687	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:03.225461	2024-06-12 11:37:03.225461	\N	\N	\N	\N	activ__resume_1718192223.pdf	\N	\N	\N
455	Andriamalala Heriniaina	\N	\N	rbj.heri@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:03.869428	2024-06-12 11:37:03.869428	\N	\N	\N	\N	activ__resume_1718192223.pdf	\N	\N	\N
456	Situation Matrimoniale	\N	\N	\N	410032007980	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:04.226399	2024-06-12 11:37:04.226399	\N	\N	\N	\N	activ__resume_1718192224.pdf	\N	\N	\N
457	Rasoloarijaona Soafinaritra	\N	\N	fy.rasolo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:04.634086	2024-06-12 11:37:04.634086	\N	\N	\N	\N	activ__resume_1718192224.pdf	\N	\N	\N
458	Inconnu	\N	\N	\N	3470933	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:04.901193	2024-06-12 11:37:04.901193	\N	\N	\N	\N	activ__resume_1718192224.pdf	\N	\N	\N
459	Volasoa Indriamaro	\N	\N	\N	101 981 080 648	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:05.241536	2024-06-12 11:37:05.241536	\N	\N	\N	\N	activ__resume_1718192225.pdf	\N	\N	\N
460	Herivao Tahina	\N	\N	\N	101 982 099 548	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:05.522205	2024-06-12 11:37:05.522205	\N	\N	\N	\N	activ__resume_1718192225.pdf	\N	\N	\N
461	Nantie Raharijaona	\N	\N	nantie2000@gmail.com	 2020\n032 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:06.197558	2024-06-12 11:37:06.197558	\N	\N	\N	\N	activ__resume_1718192226.pdf	\N	\N	\N
462	Ambodihady Ambohimanarina	\N	\N	syl4via@gmail.com	261326508078	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:06.789895	2024-06-12 11:37:06.789895	\N	\N	\N	\N	activ__resume_1718192226.pdf	\N	\N	\N
463	Daniellie Fanantenana	\N	\N	fanahopetiana@gmail.com	0341962784	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:07.18291	2024-06-12 11:37:07.18291	\N	\N	\N	\N	activ__resume_1718192227.pdf	\N	\N	\N
464	Webhelp Madagascar	\N	\N	lyndanant@gmail.com	034 56 107 06	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:07.722472	2024-06-12 11:37:07.722472	\N	\N	\N	\N	activ__resume_1718192227.pdf	\N	\N	\N
465	Fara Razafindrabe	\N	\N	fmamonjiariseheno@gmail.com	034 18 764 47	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:08.469433	2024-06-12 11:37:08.469433	\N	\N	\N	\N	activ__resume_1718192228.pdf	\N	\N	\N
466	Tsararay Ampitatafika	\N	\N	myranto1601@gmail.com	\n034 03 844 28	\N	BM 113 Bis	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:09.071542	2024-06-12 11:37:09.071542	\N	\N	\N	\N	activ__resume_1718192229.pdf	\N	\N	\N
467	Saint Joseph	\N	\N	razakanirinastephan@gmail.com	034 06 241 87	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:09.372957	2024-06-12 11:37:09.372957	\N	\N	\N	\N	activ__resume_1718192229.pdf	\N	\N	\N
468	Banque Africaine	\N	\N	\N	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:09.721328	2024-06-12 11:37:09.721328	\N	\N	\N	\N	activ__resume_1718192229.pdf	\N	\N	\N
469	Antsahondra Haute	\N	\N	cynthiaarintsoa55@gmail.com	038 23 901 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:10.13995	2024-06-12 11:37:10.13995	\N	\N	\N	\N	activ__resume_1718192230.pdf	\N	\N	\N
470	Ihary Andriantsihosena	\N	\N	voaraihary@gmail.com	032 22 305 24	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:10.594924	2024-06-12 11:37:10.594924	\N	\N	\N	\N	activ__resume_1718192230.pdf	\N	\N	\N
471	Nomena Fanantenana	\N	\N	\N	2017-2018	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:11.264227	2024-06-12 11:37:11.264227	\N	\N	\N	\N	activ__resume_1718192231.pdf	\N	\N	\N
472	Haingotiana Sabrina	\N	\N	haingotianasabr26@gmail.com	038 54 436 16	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:11.576838	2024-06-12 11:37:11.576838	\N	\N	\N	\N	activ__resume_1718192231.pdf	\N	\N	\N
473	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:11.823743	2024-06-12 11:37:11.823743	\N	\N	\N	\N	activ__resume_1718192231.pdf	\N	\N	\N
474	Fenitra Henitsoa	\N	\N	andriamalalafenitra12@gmail.com	038 13 429 28	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:12.138447	2024-06-12 11:37:12.138447	\N	\N	\N	\N	activ__resume_1718192232.pdf	\N	\N	\N
475	Bis Androhibe	\N	\N	\N	033 76 138 66	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:12.391472	2024-06-12 11:37:12.391472	\N	\N	\N	\N	activ__resume_1718192232.pdf	\N	\N	\N
476	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:12.599878	2024-06-12 11:37:12.599878	\N	\N	\N	\N	activ__resume_1718192232.pdf	\N	\N	\N
477	Banque Nickel	\N	\N	nawrass.ram@gmail.com	034 47 885 48	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:13.187873	2024-06-12 11:37:13.187873	\N	\N	\N	\N	activ__resume_1718192233.pdf	\N	\N	\N
478	Tojoniaina Marc	\N	\N	randrianarisontm@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:13.528209	2024-06-12 11:37:13.528209	\N	\N	\N	\N	activ__resume_1718192233.pdf	\N	\N	\N
479	Jonah Pareseau	\N	\N	r.jonah.cat@gmail.com	032 21 432 53	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:14.131239	2024-06-12 11:37:14.131239	\N	\N	\N	\N	activ__resume_1718192234.pdf	\N	\N	\N
480	Lovamamy Lalanirina	\N	\N	xerahan435@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:14.610306	2024-06-12 11:37:14.610306	\N	\N	\N	\N	activ__resume_1718192234.pdf	\N	\N	\N
481	Projet Client	\N	\N	njaka.andrianasolo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:14.870911	2024-06-12 11:37:14.870911	\N	\N	\N	\N	activ__resume_1718192234.pdf	\N	\N	\N
482	Bis Anatihazo	\N	\N	niaina_rf@yahoo.fr	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:15.862629	2024-06-12 11:37:15.862629	\N	\N	\N	\N	activ__resume_1718192235.pdf	\N	\N	\N
483	Domoina Miarantsoa	\N	\N	Rdomoinamiarantsoa@gmail.com	0324547922	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:16.258378	2024-06-12 11:37:16.258378	\N	\N	\N	\N	activ__resume_1718192236.pdf	\N	\N	\N
484	Curriculum Vitae	\N	\N	naylahhassane7gmail@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:16.651029	2024-06-12 11:37:16.651029	\N	\N	\N	\N	activ__resume_1718192236.pdf	\N	\N	\N
485	Inconnu	\N	\N	rijana77@yahoo.fr	033 29 992 08	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:17.247988	2024-06-12 11:37:17.247988	\N	\N	\N	\N	activ__resume_1718192237.pdf	\N	\N	\N
486	Andohatanjona Itaosy	\N	\N	\N	117 121 021 047	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:17.56867	2024-06-12 11:37:17.56867	\N	\N	\N	\N	activ__resume_1718192237.pdf	\N	\N	\N
487	Madagascar Group	\N	\N	\N	101 221 131 442	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:17.84783	2024-06-12 11:37:17.84783	\N	\N	\N	\N	activ__resume_1718192237.pdf	\N	\N	\N
488	Tolotsoa Mampianina	\N	\N	rtolotsoam@gmail.com	034 55 219 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:18.135262	2024-06-12 11:37:18.135262	\N	\N	\N	\N	activ__resume_1718192238.pdf	\N	\N	\N
489	Customer Manager	\N	\N	jessicarambeloson92@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:18.514914	2024-06-12 11:37:18.514914	\N	\N	\N	\N	activ__resume_1718192238.pdf	\N	\N	\N
490	Ny Aina	\N	\N	nyainakasaina@gmail.com	261341466691	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:19.537056	2024-06-12 11:37:19.537056	\N	\N	\N	\N	activ__resume_1718192239.pdf	\N	\N	\N
491	Rakotoarisoa Sylvain	\N	\N	arnaultrakotoarisoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:19.819597	2024-06-12 11:37:19.819597	\N	\N	\N	\N	activ__resume_1718192239.pdf	\N	\N	\N
492	Ny Onintsoa	\N	\N	ramandaharijaonaKim@gmail.com	0322492061	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:20.188486	2024-06-12 11:37:20.188486	\N	\N	\N	\N	activ__resume_1718192240.pdf	\N	\N	\N
493	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:20.426269	2024-06-12 11:37:20.426269	\N	\N	\N	\N	activ__resume_1718192240.pdf	\N	\N	\N
494	Ravaka Kantoniaina	\N	\N	Kantoniainaravaka00@gmail.com	034 31 758 27	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:20.814711	2024-06-12 11:37:20.814711	\N	\N	\N	\N	activ__resume_1718192240.pdf	\N	\N	\N
495	Ankadivory Ambohijanahary	\N	\N	fenitriniainarasoavololona@gmail.com	\n\n034 73	\N	II	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:21.197291	2024-06-12 11:37:21.197291	\N	\N	\N	\N	activ__resume_1718192241.pdf	\N	\N	\N
496	Microsoft Paint	\N	\N	annitaaurore@gmail.com	032 032 27 560 02	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:21.487854	2024-06-12 11:37:21.487854	\N	\N	\N	\N	activ__resume_1718192241.pdf	\N	\N	\N
497	Nathalie Herilalaina	\N	\N	raboanarielina.nathalie@gmail.com	34 20 149 09	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:22.018315	2024-06-12 11:37:22.018315	\N	\N	\N	\N	activ__resume_1718192242.pdf	\N	\N	\N
498	Freelance Antananarivo	\N	\N	a@gmail.com	261343844647	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:22.413253	2024-06-12 11:37:22.413253	\N	\N	\N	\N	activ__resume_1718192242.pdf	\N	\N	\N
499	Joseph Hardy	\N	\N	hardy.gpe.top@gmail.com	26132	\N	23 P	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:23.100128	2024-06-12 11:37:23.100128	\N	\N	\N	\N	activ__resume_1718192243.pdf	\N	\N	\N
500	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:23.315027	2024-06-12 11:37:23.315027	\N	\N	\N	\N	activ__resume_1718192243.pdf	\N	\N	\N
501	Assistante Back	\N	\N	randoandriantahina@gmail.com	033 78 459 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:23.787155	2024-06-12 11:37:23.787155	\N	\N	\N	\N	activ__resume_1718192243.pdf	\N	\N	\N
502	Entreprise Dovema	\N	\N	nicoleraharinjaka@gmail.co	032 44 261 13	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:24.191616	2024-06-12 11:37:24.191616	\N	\N	\N	\N	activ__resume_1718192244.pdf	\N	\N	\N
503	Ambatomaro Antananarivo	\N	\N	antsa98@yahoo.fr	033 03 031 49	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:24.607781	2024-06-12 11:37:24.607781	\N	\N	\N	\N	activ__resume_1718192244.pdf	\N	\N	\N
504	Njariniaina Romina	\N	\N	marryminah40@gmail.com	0324062135	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:24.897781	2024-06-12 11:37:24.897781	\N	\N	\N	\N	activ__resume_1718192244.pdf	\N	\N	\N
505	Saint Martin	\N	\N	podmoreandria@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:25.247676	2024-06-12 11:37:25.247676	\N	\N	\N	\N	activ__resume_1718192245.pdf	\N	\N	\N
506	Web Marketing	\N	\N	t.razafindramanana@yahoo.com	\n032 81 905 12	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:25.605696	2024-06-12 11:37:25.605696	\N	\N	\N	\N	activ__resume_1718192245.pdf	\N	\N	\N
507	Falinirina Marc	\N	\N	falyraza12@gmail.com	032 28 752 56	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:26.282426	2024-06-12 11:37:26.282426	\N	\N	\N	\N	activ__resume_1718192246.pdf	\N	\N	\N
508	Agent Polyvalent	\N	\N	ralijaonamiora@gmail.com	2020-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:26.746891	2024-06-12 11:37:26.746891	\N	\N	\N	\N	activ__resume_1718192246.pdf	\N	\N	\N
509	Marie Liz	\N	\N	marie.anicaliz@gmail.com	101 222 110 172	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:27.083556	2024-06-12 11:37:27.083556	\N	\N	\N	\N	activ__resume_1718192247.pdf	\N	\N	\N
510	Ny Ando	\N	\N	andorajerinirina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:27.450139	2024-06-12 11:37:27.450139	\N	\N	\N	\N	activ__resume_1718192247.pdf	\N	\N	\N
511	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:27.682533	2024-06-12 11:37:27.682533	\N	\N	\N	\N	activ__resume_1718192247.pdf	\N	\N	\N
512	Solync Ankorondrano	\N	\N	tsiaroandrianarivelo96@gmail.com	032 61 569 28	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:28.075281	2024-06-12 11:37:28.075281	\N	\N	\N	\N	activ__resume_1718192248.pdf	\N	\N	\N
513	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:28.269704	2024-06-12 11:37:28.269704	\N	\N	\N	\N	activ__resume_1718192248.pdf	\N	\N	\N
514	Antananarivo Madagascar	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:28.65712	2024-06-12 11:37:28.65712	\N	\N	\N	\N	activ__resume_1718192248.pdf	\N	\N	\N
515	Inconnu	\N	\N	rakotoantonio.joelina@gmail.com	26134 12	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:28.994435	2024-06-12 11:37:28.994435	\N	\N	\N	\N	activ__resume_1718192248.pdf	\N	\N	\N
516	Noro Ny	\N	\N	joellerobs@gmail.com	034 27 729 19	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:29.318986	2024-06-12 11:37:29.318986	\N	\N	\N	\N	activ__resume_1718192249.pdf	\N	\N	\N
517	Resampa Antsirabe	\N	\N	stephanienotahinjanahary119@gmail.com	034 79 948 55	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:29.747222	2024-06-12 11:37:29.747222	\N	\N	\N	\N	activ__resume_1718192249.pdf	\N	\N	\N
518	Ambatofotsy Gare	\N	\N	tiahstephanie@gmail.com	032 81 092 11	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:30.176055	2024-06-12 11:37:30.176055	\N	\N	\N	\N	activ__resume_1718192250.pdf	\N	\N	\N
519	Sandratra Armandine	\N	\N	daniellah1507@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:30.469672	2024-06-12 11:37:30.469672	\N	\N	\N	\N	activ__resume_1718192250.pdf	\N	\N	\N
520	School Mahajanga	\N	\N	Annierazafindrasoa96@gmail.com	0341685624	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:30.869589	2024-06-12 11:37:30.869589	\N	\N	\N	\N	activ__resume_1718192250.pdf	\N	\N	\N
521	Inconnu	\N	\N	\N	613407559	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:31.240348	2024-06-12 11:37:31.240348	\N	\N	\N	\N	activ__resume_1718192251.pdf	\N	\N	\N
522	Johane Richie	\N	\N	\N	\n034 58 066 01	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:31.901717	2024-06-12 11:37:31.901717	\N	\N	\N	\N	activ__resume_1718192251.pdf	\N	\N	\N
523	Back Office	\N	\N	christellearia8@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:32.213729	2024-06-12 11:37:32.213729	\N	\N	\N	\N	activ__resume_1718192252.pdf	\N	\N	\N
524	Assistante Administrative	\N	\N	malalalove@live.fr	2016-2023	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:32.831955	2024-06-12 11:37:32.831955	\N	\N	\N	\N	activ__resume_1718192252.pdf	\N	\N	\N
525	Haingotiana Radanielina	\N	\N	haingotianaradanielina@gmail.com	032 99 816 09	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:33.256735	2024-06-12 11:37:33.256735	\N	\N	\N	\N	activ__resume_1718192253.pdf	\N	\N	\N
526	Nantie Raharijaona	\N	\N	nantie2000@gmail.com	 2020\n032 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:34.077707	2024-06-12 11:37:34.077707	\N	\N	\N	\N	activ__resume_1718192254.pdf	\N	\N	\N
527	Lala Ny	\N	\N	\N	034 45 543 38	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:34.410352	2024-06-12 11:37:34.410352	\N	\N	\N	\N	activ__resume_1718192254.pdf	\N	\N	\N
528	Banque Baobab	\N	\N	mbolask@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:34.867038	2024-06-12 11:37:34.867038	\N	\N	\N	\N	activ__resume_1718192254.pdf	\N	\N	\N
529	Intelcia Madagascar	\N	\N	njatomanantsoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:35.274595	2024-06-12 11:37:35.274595	\N	\N	\N	\N	activ__resume_1718192255.pdf	\N	\N	\N
530	Ankadifotsy Ambatomitsangana	\N	\N	anjaratefiarivelo@gmail.com	 101\n\n034 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:35.650889	2024-06-12 11:37:35.650889	\N	\N	\N	\N	activ__resume_1718192255.pdf	\N	\N	\N
531	Muriel Sandrine	\N	\N	murisan33@gmail.com	034 10 491 16	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:35.974786	2024-06-12 11:37:35.974786	\N	\N	\N	\N	activ__resume_1718192255.pdf	\N	\N	\N
532	Ampandrana Est	\N	\N	2ox@gmail.com	032 82 556 40	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:36.408053	2024-06-12 11:37:36.408053	\N	\N	\N	\N	activ__resume_1718192256.pdf	\N	\N	\N
533	Louis Armel	\N	\N	libertycenter6@gmail.com	 102\n31	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:36.79992	2024-06-12 11:37:36.79992	\N	\N	\N	\N	activ__resume_1718192256.pdf	\N	\N	\N
534	Suzette Razafindrasoa	\N	\N	suzettekalose@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:37.085802	2024-06-12 11:37:37.085802	\N	\N	\N	\N	activ__resume_1718192257.pdf	\N	\N	\N
535	Webhelp Andraharo	\N	\N	mickaelram17@gmail.com	034 85 133 97	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:37.521403	2024-06-12 11:37:37.521403	\N	\N	\N	\N	activ__resume_1718192257.pdf	\N	\N	\N
536	Ankorondrano Ouest	\N	\N	mackevinferris@gmail.com	034 45 108 91	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:37.861877	2024-06-12 11:37:37.861877	\N	\N	\N	\N	activ__resume_1718192257.pdf	\N	\N	\N
537	Valisoa Eriliva	\N	\N	angela.randrianatoandro19@gmail.com	034 06 138 10	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:38.151347	2024-06-12 11:37:38.151347	\N	\N	\N	\N	activ__resume_1718192258.pdf	\N	\N	\N
538	Fehizoro Erick	\N	\N	Fehizoroerick@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:38.672517	2024-06-12 11:37:38.672517	\N	\N	\N	\N	activ__resume_1718192258.pdf	\N	\N	\N
539	Date De	\N	\N	harimananarivomalala2@gmail.com	0321948166	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:39.259582	2024-06-12 11:37:39.259582	\N	\N	\N	\N	activ__resume_1718192259.pdf	\N	\N	\N
540	Daniellie Fanantenana	\N	\N	fanahopetiana@gmail.com	0341962784	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:39.649362	2024-06-12 11:37:39.649362	\N	\N	\N	\N	activ__resume_1718192259.pdf	\N	\N	\N
541	Harivololona Monica	\N	\N	\N	34 47 312 39	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:39.962066	2024-06-12 11:37:39.962066	\N	\N	\N	\N	activ__resume_1718192259.pdf	\N	\N	\N
542	Tafitasoa Herilanja	\N	\N	herilanja.randrianoelison@gmail.com	034 62 867 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:40.479263	2024-06-12 11:37:40.479263	\N	\N	\N	\N	activ__resume_1718192260.pdf	\N	\N	\N
543	Inconnu	\N	\N	lauriaraharisoa@gmail.com	 20219	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:40.834124	2024-06-12 11:37:40.834124	\N	\N	\N	\N	activ__resume_1718192260.pdf	\N	\N	\N
544	Avec Lifewood	\N	\N	randrianoelinanatacha@gmail.com	261322952145	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:41.248383	2024-06-12 11:37:41.248383	\N	\N	\N	\N	activ__resume_1718192261.pdf	\N	\N	\N
545	Brice Herscheil	\N	\N	herscheil@yahoo.fr	032 80 001 96	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:41.591805	2024-06-12 11:37:41.591805	\N	\N	\N	\N	activ__resume_1718192261.pdf	\N	\N	\N
546	Bel Avenir	\N	\N	arizoely3011@gmail.com	32 48 148 68	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:41.914353	2024-06-12 11:37:41.914353	\N	\N	\N	\N	activ__resume_1718192261.pdf	\N	\N	\N
547	Herizo Orlando	\N	\N	ramilisonorlando@gmail.com	2014-2018	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:42.257604	2024-06-12 11:37:42.257604	\N	\N	\N	\N	activ__resume_1718192262.pdf	\N	\N	\N
548	Mamelantsoa Diariniaina	\N	\N	\N	2014-2019	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:43.215685	2024-06-12 11:37:43.215685	\N	\N	\N	\N	activ__resume_1718192263.pdf	\N	\N	\N
549	Galaxy Andraharo	\N	\N	isaromavik123@gmail.com	0345563605	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:43.517549	2024-06-12 11:37:43.517549	\N	\N	\N	\N	activ__resume_1718192263.pdf	\N	\N	\N
550	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:43.707136	2024-06-12 11:37:43.707136	\N	\N	\N	\N	activ__resume_1718192263.pdf	\N	\N	\N
551	Minosoa Lovatiana	\N	\N	hasiniavolovatina@gmail.com	0344185421	\N	41 AB	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:44.062077	2024-06-12 11:37:44.062077	\N	\N	\N	\N	activ__resume_1718192264.pdf	\N	\N	\N
552	Jo Harivola	\N	\N	harivolajo.dev@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:44.45523	2024-06-12 11:37:44.45523	\N	\N	\N	\N	activ__resume_1718192264.pdf	\N	\N	\N
553	Fianara Edith	\N	\N	edithmasizara1993@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:44.789518	2024-06-12 11:37:44.789518	\N	\N	\N	\N	activ__resume_1718192264.pdf	\N	\N	\N
554	Centre National	\N	\N	tantelisoaalexia@gmail.com	2019-2020	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:45.088518	2024-06-12 11:37:45.088518	\N	\N	\N	\N	activ__resume_1718192265.pdf	\N	\N	\N
555	Conseiller Client	\N	\N	toadn04@gmail.co	0344822559	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:45.482368	2024-06-12 11:37:45.482368	\N	\N	\N	\N	activ__resume_1718192265.pdf	\N	\N	\N
556	Anjara Antonio	\N	\N	anjaramamiherisoa@gmail.com	034 29 488 94	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:45.778389	2024-06-12 11:37:45.778389	\N	\N	\N	\N	activ__resume_1718192265.pdf	\N	\N	\N
557	Anthony Zo	\N	\N	Randriakevin075@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:46.068752	2024-06-12 11:37:46.068752	\N	\N	\N	\N	activ__resume_1718192266.pdf	\N	\N	\N
558	Ecole Le	\N	\N	randria0397@gmail.com	033 31 834 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:46.414059	2024-06-12 11:37:46.414059	\N	\N	\N	\N	activ__resume_1718192266.pdf	\N	\N	\N
559	Niritiana Sandrinah	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:46.673567	2024-06-12 11:37:46.673567	\N	\N	\N	\N	activ__resume_1718192266.pdf	\N	\N	\N
560	Harimamonjy Andrianina	\N	\N	ratovoharimamonjy@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:47.106407	2024-06-12 11:37:47.106407	\N	\N	\N	\N	activ__resume_1718192267.pdf	\N	\N	\N
561	Situation Familiale	\N	\N	\N	0322156272	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:47.371796	2024-06-12 11:37:47.371796	\N	\N	\N	\N	activ__resume_1718192267.pdf	\N	\N	\N
562	Hanitriniony Gabriella	\N	\N	\N	0381401516	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:47.671319	2024-06-12 11:37:47.671319	\N	\N	\N	\N	activ__resume_1718192267.pdf	\N	\N	\N
563	Tolojanahary Andoniaina	\N	\N	natolotrarimalalarak@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:48.13383	2024-06-12 11:37:48.13383	\N	\N	\N	\N	activ__resume_1718192268.pdf	\N	\N	\N
564	Sonia Ernest	\N	\N	ciahernest39@gmail.com	034 90 770 20	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:48.550215	2024-06-12 11:37:48.550215	\N	\N	\N	\N	activ__resume_1718192268.pdf	\N	\N	\N
565	Narindra Prisca	\N	\N	fanomezana.narindra@yahoo.com	261341309447	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:48.887547	2024-06-12 11:37:48.887547	\N	\N	\N	\N	activ__resume_1718192268.pdf	\N	\N	\N
566	Inconnu	\N	\N	mainoy@ao.om	21352659	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:49.149282	2024-06-12 11:37:49.149282	\N	\N	\N	\N	activ__resume_1718192269.pdf	\N	\N	\N
567	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:49.335722	2024-06-12 11:37:49.335722	\N	\N	\N	\N	activ__resume_1718192269.pdf	\N	\N	\N
568	Gestion Relation	\N	\N	\N	   034 40	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:49.760171	2024-06-12 11:37:49.760171	\N	\N	\N	\N	activ__resume_1718192269.pdf	\N	\N	\N
569	Community Manager	\N	\N	jouhaneraz@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:50.222456	2024-06-12 11:37:50.222456	\N	\N	\N	\N	activ__resume_1718192270.pdf	\N	\N	\N
570	Mamitiana Jacky	\N	\N	bobolikely@gmail.com	327129914	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:50.647305	2024-06-12 11:37:50.647305	\N	\N	\N	\N	activ__resume_1718192270.pdf	\N	\N	\N
571	Antananarivo Madagascar	\N	\N	steeveaina07@gmail.com	032 26 145 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:51.086466	2024-06-12 11:37:51.086466	\N	\N	\N	\N	activ__resume_1718192271.pdf	\N	\N	\N
572	Ter Angarangarana	\N	\N	herizo523@gmail.com	034 38 611 75	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:51.494684	2024-06-12 11:37:51.494684	\N	\N	\N	\N	activ__resume_1718192271.pdf	\N	\N	\N
573	Master Professionnel	\N	\N	\N	261349648900	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:52.000679	2024-06-12 11:37:52.000679	\N	\N	\N	\N	activ__resume_1718192272.pdf	\N	\N	\N
574	Deux Mois	\N	\N	RAHERIJAONARADO@GMAIL.COM	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:52.449862	2024-06-12 11:37:52.449862	\N	\N	\N	\N	activ__resume_1718192272.pdf	\N	\N	\N
575	Sariaka Soandry	\N	\N	soandriamirado@gmail.com	034 83 038 87	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:52.994338	2024-06-12 11:37:52.994338	\N	\N	\N	\N	activ__resume_1718192272.pdf	\N	\N	\N
576	Gestion Parcours	\N	\N	patricia12sa@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:53.64858	2024-06-12 11:37:53.64858	\N	\N	\N	\N	activ__resume_1718192273.pdf	\N	\N	\N
577	Harson Fitahiana	\N	\N	firavelomanantsoa@gmail.com	034 33 050 47	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:54.112403	2024-06-12 11:37:54.112403	\N	\N	\N	\N	activ__resume_1718192274.pdf	\N	\N	\N
578	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:37:54.307762	2024-06-12 11:37:54.307762	\N	\N	\N	\N	activ__resume_1718192274.pdf	\N	\N	\N
579	Fenosoa Fanhasina	\N	\N	fenosoa01.fanhasina@gmail.com	\n 034 71	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:54.723824	2024-06-12 11:37:54.723824	\N	\N	\N	\N	activ__resume_1718192274.pdf	\N	\N	\N
580	Hary Avotra	\N	\N	andrianharyavotra@gmail.com	034 95 025 04	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:55.23257	2024-06-12 11:37:55.23257	\N	\N	\N	\N	activ__resume_1718192275.pdf	\N	\N	\N
581	Toavina Harimpeno	\N	\N	toavinarazafi@gmail.com	 117 011 024 673	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:55.529391	2024-06-12 11:37:55.529391	\N	\N	\N	\N	activ__resume_1718192275.pdf	\N	\N	\N
582	Henintsoa Lucia	\N	\N	hentsoarnelle@gmail.com	0341500435	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:55.800447	2024-06-12 11:37:55.800447	\N	\N	\N	\N	activ__resume_1718192275.pdf	\N	\N	\N
583	Curriculum Vitae	\N	\N	manourakotoarivao@gmail.com	033 24 005 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:56.089647	2024-06-12 11:37:56.089647	\N	\N	\N	\N	activ__resume_1718192276.pdf	\N	\N	\N
584	Ricka Miora	\N	\N	loulouneandria20@gmail.com	034 25 453 11	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:56.429399	2024-06-12 11:37:56.429399	\N	\N	\N	\N	activ__resume_1718192276.pdf	\N	\N	\N
585	Soavimasoandro Antananarivo	\N	\N	tiatiavina.ras@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:56.749106	2024-06-12 11:37:56.749106	\N	\N	\N	\N	activ__resume_1718192276.pdf	\N	\N	\N
586	Inconnu	\N	\N	rakotozananyjessica@gmail.com	380878496	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:57.067869	2024-06-12 11:37:57.067869	\N	\N	\N	\N	activ__resume_1718192277.pdf	\N	\N	\N
587	Tsilavo Valisoa	\N	\N	tsilavofaly@gmail.com	038 06 176 87	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:57.395719	2024-06-12 11:37:57.395719	\N	\N	\N	\N	activ__resume_1718192277.pdf	\N	\N	\N
588	Mendrikaja Nirina	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:57.753398	2024-06-12 11:37:57.753398	\N	\N	\N	\N	activ__resume_1718192277.pdf	\N	\N	\N
589	Jhonny Claude	\N	\N	jhonnycla@yahoo.fr	033 06 994 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:58.281655	2024-06-12 11:37:58.281655	\N	\N	\N	\N	activ__resume_1718192278.pdf	\N	\N	\N
590	Lucie Berthine	\N	\N	lucierazafindrajery@gmail.com	111 012 018 687	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:58.543777	2024-06-12 11:37:58.543777	\N	\N	\N	\N	activ__resume_1718192278.pdf	\N	\N	\N
591	Disponible Maintenant	\N	\N	onsmih@gmail.com	261 346 252 267	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:58.92625	2024-06-12 11:37:58.92625	\N	\N	\N	\N	activ__resume_1718192278.pdf	\N	\N	\N
592	Lucky Lalao	\N	\N	fina4ran@gmail.com	0341945996	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:59.401506	2024-06-12 11:37:59.401506	\N	\N	\N	\N	activ__resume_1718192279.pdf	\N	\N	\N
593	Andriamamiharizo Tahina	\N	\N	tahirkely77@gmail.com	032 44 517 09	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:37:59.98682	2024-06-12 11:37:59.98682	\N	\N	\N	\N	activ__resume_1718192279.pdf	\N	\N	\N
594	Nathalie Volahanta	\N	\N	nathalieadeline4@gmail.com	103072016874	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:00.281382	2024-06-12 11:38:00.281382	\N	\N	\N	\N	activ__resume_1718192280.pdf	\N	\N	\N
595	Andriamivalihaja Tiary	\N	\N	tjaona@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:00.90193	2024-06-12 11:38:00.90193	\N	\N	\N	\N	activ__resume_1718192280.pdf	\N	\N	\N
596	Parcours Professionnel	\N	\N	tambyfitiarandrianavalona@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:01.565975	2024-06-12 11:38:01.565975	\N	\N	\N	\N	activ__resume_1718192281.pdf	\N	\N	\N
597	Elysa Viviane	\N	\N	elsamartial8863@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:01.914285	2024-06-12 11:38:01.914285	\N	\N	\N	\N	activ__resume_1718192281.pdf	\N	\N	\N
598	Economie Pubique	\N	\N	\N	3442121	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:02.462706	2024-06-12 11:38:02.462706	\N	\N	\N	\N	activ__resume_1718192282.pdf	\N	\N	\N
599	Sonya Patricia	\N	\N	sonyapatricia3@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:02.865788	2024-06-12 11:38:02.865788	\N	\N	\N	\N	activ__resume_1718192282.pdf	\N	\N	\N
600	Antonella Estelle	\N	\N	antonellaravatsy@gmail.com	261328115848	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:03.34418	2024-06-12 11:38:03.34418	\N	\N	\N	\N	activ__resume_1718192283.pdf	\N	\N	\N
601	Curriculum Vitae	\N	\N	naylahhassane7gmail@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:03.724667	2024-06-12 11:38:03.724667	\N	\N	\N	\N	activ__resume_1718192283.pdf	\N	\N	\N
602	Charlino Edwino	\N	\N	rcharlinoedwino@gmail.com	\n 032 22	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:04.073868	2024-06-12 11:38:04.073868	\N	\N	\N	\N	activ__resume_1718192284.pdf	\N	\N	\N
603	Eva Ny	\N	\N	\N	034 50 200 48	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:04.434625	2024-06-12 11:38:04.434625	\N	\N	\N	\N	activ__resume_1718192284.pdf	\N	\N	\N
604	Iscam Ankadifotsy	\N	\N	\N	0348654354	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:04.739968	2024-06-12 11:38:04.739968	\N	\N	\N	\N	activ__resume_1718192284.pdf	\N	\N	\N
605	Etudes Premier	\N	\N	\N	0349505156	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:05.21211	2024-06-12 11:38:05.21211	\N	\N	\N	\N	activ__resume_1718192285.pdf	\N	\N	\N
606	Claudia Hortensia	\N	\N	hortensia.madi793@gmail.com	230 58	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:05.636236	2024-06-12 11:38:05.636236	\N	\N	\N	\N	activ__resume_1718192285.pdf	\N	\N	\N
607	Hanitriniala Tahinanirina	\N	\N	tahinaniala@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:06.158264	2024-06-12 11:38:06.158264	\N	\N	\N	\N	activ__resume_1718192286.pdf	\N	\N	\N
608	Tolotsoa Mampianina	\N	\N	rtolotsoam@gmail.com	034 55 219 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:06.455359	2024-06-12 11:38:06.455359	\N	\N	\N	\N	activ__resume_1718192286.pdf	\N	\N	\N
609	Tongarivo Tanjombato	\N	\N	bassamlaikah@gmail.com	261346410763	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:06.721807	2024-06-12 11:38:06.721807	\N	\N	\N	\N	activ__resume_1718192286.pdf	\N	\N	\N
610	Sombiniaina Koloina	\N	\N	\N	034 01 415 78	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:07.117172	2024-06-12 11:38:07.117172	\N	\N	\N	\N	activ__resume_1718192287.pdf	\N	\N	\N
611	Satelia Fanantenana	\N	\N	satelia.fanant@gmail.com	034 80 708 59	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:07.403538	2024-06-12 11:38:07.403538	\N	\N	\N	\N	activ__resume_1718192287.pdf	\N	\N	\N
612	Antananarivo Amboditsiry	\N	\N	tsantasolofoaina@gmail.com	033 31 324 23	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:08.072313	2024-06-12 11:38:08.072313	\N	\N	\N	\N	activ__resume_1718192288.pdf	\N	\N	\N
613	Tongarivo Tanjombato	\N	\N	nrtmanoa@gmail.com	261329254771	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:08.374417	2024-06-12 11:38:08.374417	\N	\N	\N	\N	activ__resume_1718192288.pdf	\N	\N	\N
614	Comptable Back	\N	\N	matthewraf1258@gmail.com	032 85 065 58	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:08.941289	2024-06-12 11:38:08.941289	\N	\N	\N	\N	activ__resume_1718192288.pdf	\N	\N	\N
615	Inconnu	\N	\N	rtsirym@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:09.460862	2024-06-12 11:38:09.460862	\N	\N	\N	\N	activ__resume_1718192289.pdf	\N	\N	\N
616	Hanitriniaina Sylvia	\N	\N	\N	034 42 435 81	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:09.772619	2024-06-12 11:38:09.772619	\N	\N	\N	\N	activ__resume_1718192289.pdf	\N	\N	\N
617	Ambohimandroso Antsirabe	\N	\N	randrilafatra@gmail.com	0380699398	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:10.074444	2024-06-12 11:38:10.074444	\N	\N	\N	\N	activ__resume_1718192290.pdf	\N	\N	\N
618	Lanto Fenosoa	\N	\N	rahariniainalantofenosoa@gmail.com	0331463819	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:10.518884	2024-06-12 11:38:10.518884	\N	\N	\N	\N	activ__resume_1718192290.pdf	\N	\N	\N
619	Antso Nasandratra	\N	\N	\N	032 44 932 99	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:10.906025	2024-06-12 11:38:10.906025	\N	\N	\N	\N	activ__resume_1718192290.pdf	\N	\N	\N
620	Lot Ivn	\N	\N	Tiandraycedric@gmail.com	034 26 075 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:11.163619	2024-06-12 11:38:11.163619	\N	\N	\N	\N	activ__resume_1718192291.pdf	\N	\N	\N
621	Miarisoa Anja	\N	\N	anjafyrandrianarison@gmail.com	0341996095	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:11.500218	2024-06-12 11:38:11.500218	\N	\N	\N	\N	activ__resume_1718192291.pdf	\N	\N	\N
622	Ter Ambohinaorina	\N	\N	rijaandria9@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:11.787637	2024-06-12 11:38:11.787637	\N	\N	\N	\N	activ__resume_1718192291.pdf	\N	\N	\N
623	Inconnu	\N	\N	rtsirym@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:12.314736	2024-06-12 11:38:12.314736	\N	\N	\N	\N	activ__resume_1718192292.pdf	\N	\N	\N
624	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:12.522484	2024-06-12 11:38:12.522484	\N	\N	\N	\N	activ__resume_1718192292.pdf	\N	\N	\N
625	Informatique Bureautique	\N	\N	onjaniainamandimbiarison@gmail.com	034 70 796 71	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:12.986131	2024-06-12 11:38:12.986131	\N	\N	\N	\N	activ__resume_1718192292.pdf	\N	\N	\N
626	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:13.174058	2024-06-12 11:38:13.174058	\N	\N	\N	\N	activ__resume_1718192293.pdf	\N	\N	\N
627	Safidiniaina Mendr	\N	\N	\N	0343097031	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:13.797771	2024-06-12 11:38:13.797771	\N	\N	\N	\N	activ__resume_1718192293.pdf	\N	\N	\N
628	Manarintsoa Anatihazo	\N	\N	tianaram1998@gmail.com	261346633001	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:14.39133	2024-06-12 11:38:14.39133	\N	\N	\N	\N	activ__resume_1718192294.pdf	\N	\N	\N
629	Concorde Distribution	\N	\N	alphinerasoazanamparany@gmail.com	117 032 014 554	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:14.759654	2024-06-12 11:38:14.759654	\N	\N	\N	\N	activ__resume_1718192294.pdf	\N	\N	\N
630	Sarah Aurelie	\N	\N	sarah.aurelie@yahoo.fr	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:15.171738	2024-06-12 11:38:15.171738	\N	\N	\N	\N	activ__resume_1718192295.pdf	\N	\N	\N
631	Alain Franco	\N	\N	allanisfk@gmail.com	32 89 847 24	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:15.711115	2024-06-12 11:38:15.711115	\N	\N	\N	\N	activ__resume_1718192295.pdf	\N	\N	\N
632	Masy Mbolatiana	\N	\N	\N	034 51 042 92	\N	III G 124 A	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:16.342341	2024-06-12 11:38:16.342341	\N	\N	\N	\N	activ__resume_1718192296.pdf	\N	\N	\N
633	Contenu Web	\N	\N	farajemimaras@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:17.141439	2024-06-12 11:38:17.141439	\N	\N	\N	\N	activ__resume_1718192297.pdf	\N	\N	\N
634	Claudia Hortensia	\N	\N	hortensia.madi793@gmail.com	230 58	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:17.568593	2024-06-12 11:38:17.568593	\N	\N	\N	\N	activ__resume_1718192297.pdf	\N	\N	\N
635	Dinah Fiononana	\N	\N	dinah.mihantafy@gmail.com	\n\n0345981288	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:18.069995	2024-06-12 11:38:18.069995	\N	\N	\N	\N	activ__resume_1718192298.pdf	\N	\N	\N
636	Curriculum Vitae	\N	\N	joir37@yahoo.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:18.400528	2024-06-12 11:38:18.400528	\N	\N	\N	\N	activ__resume_1718192298.pdf	\N	\N	\N
637	Heriniaina Thierry	\N	\N	thithiraz02@gmail.com	2023-2024	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:19.335644	2024-06-12 11:38:19.335644	\N	\N	\N	\N	activ__resume_1718192299.pdf	\N	\N	\N
638	Nantenaina Harivola	\N	\N	hnantenaina04@gmail.com	 34 24 813 61	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:19.666849	2024-06-12 11:38:19.666849	\N	\N	\N	\N	activ__resume_1718192299.pdf	\N	\N	\N
639	Indrainialisoa Noroariliva	\N	\N	randriariliva@gmail.com	261342291249	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:20.657985	2024-06-12 11:38:20.657985	\N	\N	\N	\N	activ__resume_1718192300.pdf	\N	\N	\N
640	Zoe Delor	\N	\N	zoedelor2@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:20.932671	2024-06-12 11:38:20.932671	\N	\N	\N	\N	activ__resume_1718192300.pdf	\N	\N	\N
641	Herizo Orlando	\N	\N	ramilisonorlando@gmail.com	2014-2018	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:21.250252	2024-06-12 11:38:21.250252	\N	\N	\N	\N	activ__resume_1718192301.pdf	\N	\N	\N
642	Premiers Secours	\N	\N	rinah.nayah@gmail.com	1996-1997	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:21.727935	2024-06-12 11:38:21.727935	\N	\N	\N	\N	activ__resume_1718192301.pdf	\N	\N	\N
643	Ambinintsoa Alarobia	\N	\N	arazanakotoniaina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:22.088165	2024-06-12 11:38:22.088165	\N	\N	\N	\N	activ__resume_1718192302.pdf	\N	\N	\N
644	Inconnu	\N	\N	\N	344289	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:22.490613	2024-06-12 11:38:22.490613	\N	\N	\N	\N	activ__resume_1718192302.pdf	\N	\N	\N
645	Iscam Ankadifotsy	\N	\N	\N	0348654354	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:22.778088	2024-06-12 11:38:22.778088	\N	\N	\N	\N	activ__resume_1718192302.pdf	\N	\N	\N
646	Michel Amparibe	\N	\N	lovaniainalaurencia@gmail.com	034 75 756 68	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:23.114215	2024-06-12 11:38:23.114215	\N	\N	\N	\N	activ__resume_1718192303.pdf	\N	\N	\N
647	Agence Standing	\N	\N	salohy.rabeson@gmail.com	261344039291	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:23.50839	2024-06-12 11:38:23.50839	\N	\N	\N	\N	activ__resume_1718192303.pdf	\N	\N	\N
648	Miora Onenantsoa	\N	\N	rakotoarinaivomiora@gmail.com	117 012 032 873	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:23.788032	2024-06-12 11:38:23.788032	\N	\N	\N	\N	activ__resume_1718192303.pdf	\N	\N	\N
649	Langue Anglaise	\N	\N	r.andrianjafisoa@gmail.com	034 48 541 18	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:24.198648	2024-06-12 11:38:24.198648	\N	\N	\N	\N	activ__resume_1718192304.pdf	\N	\N	\N
650	Ressources Humaines	\N	\N	nyhobyrandria@gmail.com	261346233781	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:24.866482	2024-06-12 11:38:24.866482	\N	\N	\N	\N	activ__resume_1718192304.pdf	\N	\N	\N
651	Zo Raymond	\N	\N	zoraymond.rakotomalala@gmail.com	034 33 861 40	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:25.591196	2024-06-12 11:38:25.591196	\N	\N	\N	\N	activ__resume_1718192305.pdf	\N	\N	\N
652	Inconnu	\N	\N	nadia_rhf@yahoo.fr	034 09 552 57	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:25.897825	2024-06-12 11:38:25.897825	\N	\N	\N	\N	activ__resume_1718192305.pdf	\N	\N	\N
653	Impact Ivandry	\N	\N	\N	034 86 068 98	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:26.269041	2024-06-12 11:38:26.269041	\N	\N	\N	\N	activ__resume_1718192306.pdf	\N	\N	\N
654	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:26.475916	2024-06-12 11:38:26.475916	\N	\N	\N	\N	activ__resume_1718192306.pdf	\N	\N	\N
655	Antanetibe Ilafy	\N	\N	Rsariaka03@gmail.com	 2022 31	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:26.945999	2024-06-12 11:38:26.945999	\N	\N	\N	\N	activ__resume_1718192306.pdf	\N	\N	\N
656	Saint Joseph	\N	\N	toavimpitiavanamaria@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:27.264265	2024-06-12 11:38:27.264265	\N	\N	\N	\N	activ__resume_1718192307.pdf	\N	\N	\N
657	Saint Jean	\N	\N	\N	2020-2023	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:27.757139	2024-06-12 11:38:27.757139	\N	\N	\N	\N	activ__resume_1718192307.pdf	\N	\N	\N
658	Avotriniaina Tony	\N	\N	darkligh32@gmail.com	0348893849	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:28.121963	2024-06-12 11:38:28.121963	\N	\N	\N	\N	activ__resume_1718192308.pdf	\N	\N	\N
659	Haingo Consulting	\N	\N	rakmihaja@gmail.com	 34 29 905 05	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:28.548921	2024-06-12 11:38:28.548921	\N	\N	\N	\N	activ__resume_1718192308.pdf	\N	\N	\N
660	Nantenaina Andriamanalina	\N	\N	nainanante257@gmail.com	261344104447	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:28.887499	2024-06-12 11:38:28.887499	\N	\N	\N	\N	activ__resume_1718192308.pdf	\N	\N	\N
661	Lovamamy Lalanirina	\N	\N	xerahan435@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:29.385423	2024-06-12 11:38:29.385423	\N	\N	\N	\N	activ__resume_1718192309.pdf	\N	\N	\N
662	Ter Ifarihy	\N	\N	MickaelPanalandimby@gmail.com	117151013664	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:29.989253	2024-06-12 11:38:29.989253	\N	\N	\N	\N	activ__resume_1718192309.pdf	\N	\N	\N
663	Ter Androndra	\N	\N	mamialihaja@gmail.com	2020-01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:30.282333	2024-06-12 11:38:30.282333	\N	\N	\N	\N	activ__resume_1718192310.pdf	\N	\N	\N
664	Tantely Fitia	\N	\N	fitiarakoto969@gmail.com	261344043243	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:30.708667	2024-06-12 11:38:30.708667	\N	\N	\N	\N	activ__resume_1718192310.pdf	\N	\N	\N
665	Etude Professionnel	\N	\N	tsilavinanarovana618@gmail.com	 034 42 063 19	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:31.018044	2024-06-12 11:38:31.018044	\N	\N	\N	\N	activ__resume_1718192311.pdf	\N	\N	\N
666	Bel Avenir	\N	\N	arizoely3011@gmail.com	32 48 148 68	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:31.332935	2024-06-12 11:38:31.332935	\N	\N	\N	\N	activ__resume_1718192311.pdf	\N	\N	\N
667	Gestion Commerciale	\N	\N	randriatandrarojoniaina@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:31.802991	2024-06-12 11:38:31.802991	\N	\N	\N	\N	activ__resume_1718192311.pdf	\N	\N	\N
668	Bis Anosibe	\N	\N	\N	509 011 013 311	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:32.088397	2024-06-12 11:38:32.088397	\N	\N	\N	\N	activ__resume_1718192312.pdf	\N	\N	\N
669	Bank Of	\N	\N	Allanrafano@gmail.com	034 65 539 14	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:32.653746	2024-06-12 11:38:32.653746	\N	\N	\N	\N	activ__resume_1718192312.pdf	\N	\N	\N
670	Salohy Ny	\N	\N	razafindrakotosalohynyaina@gmail.com	034 99 794 55	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:33.048843	2024-06-12 11:38:33.048843	\N	\N	\N	\N	activ__resume_1718192313.pdf	\N	\N	\N
671	Niry Hanitra	\N	\N	\N	0341472804	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:33.42821	2024-06-12 11:38:33.42821	\N	\N	\N	\N	activ__resume_1718192313.pdf	\N	\N	\N
672	Noro Mireille	\N	\N	mireille.andriamanantenaa@gmail.com	034 00 146 68	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:33.805693	2024-06-12 11:38:33.805693	\N	\N	\N	\N	activ__resume_1718192313.pdf	\N	\N	\N
673	Saint Jean	\N	\N	lucia_ralaivelo@yahoo.fr	034 28 543 28	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:34.202139	2024-06-12 11:38:34.202139	\N	\N	\N	\N	activ__resume_1718192314.pdf	\N	\N	\N
674	St Jean	\N	\N	raoilisonharimino@gmail.com	034 42 397 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:34.650667	2024-06-12 11:38:34.650667	\N	\N	\N	\N	activ__resume_1718192314.pdf	\N	\N	\N
675	Human Resources	\N	\N	mimich.rlina@gmail.com	032 44 993 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:35.212728	2024-06-12 11:38:35.212728	\N	\N	\N	\N	activ__resume_1718192315.pdf	\N	\N	\N
676	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:35.439397	2024-06-12 11:38:35.439397	\N	\N	\N	\N	activ__resume_1718192315.pdf	\N	\N	\N
677	Momanirina Christiana	\N	\N	\N	034 42 379 53	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:35.822635	2024-06-12 11:38:35.822635	\N	\N	\N	\N	activ__resume_1718192315.pdf	\N	\N	\N
678	Joseph Herman	\N	\N	rjosephberchmans@gmail.com	034 70 548 47	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:36.600062	2024-06-12 11:38:36.600062	\N	\N	\N	\N	activ__resume_1718192316.pdf	\N	\N	\N
679	Inconnu	\N	\N	\N	\n\n034 9893731	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:36.91094	2024-06-12 11:38:36.91094	\N	\N	\N	\N	activ__resume_1718192316.pdf	\N	\N	\N
680	Book News	\N	\N	\N	2010-2012	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:37.351496	2024-06-12 11:38:37.351496	\N	\N	\N	\N	activ__resume_1718192317.pdf	\N	\N	\N
681	Jhonny Claude	\N	\N	jhonnycla@yahoo.fr	033 06 994 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:37.884219	2024-06-12 11:38:37.884219	\N	\N	\N	\N	activ__resume_1718192317.pdf	\N	\N	\N
682	Sitraka Flavien	\N	\N	sitrakaflavienrajao@gmail.com	101 251 199 755	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:38.197751	2024-06-12 11:38:38.197751	\N	\N	\N	\N	activ__resume_1718192318.pdf	\N	\N	\N
683	Ambohibao Ambohijanahary	\N	\N	aswanthimote@gmail.com	034 12 559 50	\N	299 A	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:38.592143	2024-06-12 11:38:38.592143	\N	\N	\N	\N	activ__resume_1718192318.pdf	\N	\N	\N
684	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:38.808197	2024-06-12 11:38:38.808197	\N	\N	\N	\N	activ__resume_1718192318.pdf	\N	\N	\N
685	Service Commercial	\N	\N	raharison.patrick@gmail.com	261 324532083	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:39.166712	2024-06-12 11:38:39.166712	\N	\N	\N	\N	activ__resume_1718192319.pdf	\N	\N	\N
686	Fenohasina Virginie	\N	\N	fenoh213@gmail.com	033 03 190 22	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:39.726023	2024-06-12 11:38:39.726023	\N	\N	\N	\N	activ__resume_1718192319.pdf	\N	\N	\N
687	Secteur Logistique	\N	\N	tahiryratoandromanana@gmail.com	034 08 863 97	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:40.154254	2024-06-12 11:38:40.154254	\N	\N	\N	\N	activ__resume_1718192320.pdf	\N	\N	\N
688	Etudes Premier	\N	\N	\N	0349505156	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:40.611725	2024-06-12 11:38:40.611725	\N	\N	\N	\N	activ__resume_1718192320.pdf	\N	\N	\N
689	Droit Public	\N	\N	natachah.eddie@icloud.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:40.976206	2024-06-12 11:38:40.976206	\N	\N	\N	\N	activ__resume_1718192320.pdf	\N	\N	\N
690	Hanitriniony Sandy	\N	\N	ony.sandy.rabearisoa@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:41.444838	2024-06-12 11:38:41.444838	\N	\N	\N	\N	activ__resume_1718192321.pdf	\N	\N	\N
691	Inconnu	\N	\N	\N	613407559	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:41.801473	2024-06-12 11:38:41.801473	\N	\N	\N	\N	activ__resume_1718192321.pdf	\N	\N	\N
692	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:42.026294	2024-06-12 11:38:42.026294	\N	\N	\N	\N	activ__resume_1718192322.pdf	\N	\N	\N
693	Mialy Dinan	\N	\N	mialyrakotoarisoa2128@gmail.com	   038 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:42.449861	2024-06-12 11:38:42.449861	\N	\N	\N	\N	activ__resume_1718192322.pdf	\N	\N	\N
694	Aina Nirina	\N	\N	randimbisonnilo@gmail.com	261 034 97	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:42.756867	2024-06-12 11:38:42.756867	\N	\N	\N	\N	activ__resume_1718192322.pdf	\N	\N	\N
695	Miandrisoa Fabien	\N	\N	miandrisoa101@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:43.807327	2024-06-12 11:38:43.807327	\N	\N	\N	\N	activ__resume_1718192323.pdf	\N	\N	\N
696	Personne Responsable	\N	\N	laharivelo@gmail.com	2013-2014	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:44.319589	2024-06-12 11:38:44.319589	\N	\N	\N	\N	activ__resume_1718192324.pdf	\N	\N	\N
697	Anosizato Est	\N	\N	ika@gmail.com	034 08 934 99	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:44.769404	2024-06-12 11:38:44.769404	\N	\N	\N	\N	activ__resume_1718192324.pdf	\N	\N	\N
698	Back Office	\N	\N	nexpan786@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:45.14222	2024-06-12 11:38:45.14222	\N	\N	\N	\N	activ__resume_1718192325.pdf	\N	\N	\N
699	Jean Claude	\N	\N	jeanclauderakotoni@gmail.com	34 10 912 23	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:45.773028	2024-06-12 11:38:45.773028	\N	\N	\N	\N	activ__resume_1718192325.pdf	\N	\N	\N
700	Valisoa Brigitte	\N	\N	ramandimbinonyvalisoabrigitte@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:46.131666	2024-06-12 11:38:46.131666	\N	\N	\N	\N	activ__resume_1718192326.pdf	\N	\N	\N
701	Tiana Nantenaina	\N	\N	nantenaina.tix@gmail.com	0325499731	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:46.578017	2024-06-12 11:38:46.578017	\N	\N	\N	\N	activ__resume_1718192326.pdf	\N	\N	\N
702	Saint Michel	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:47.013483	2024-06-12 11:38:47.013483	\N	\N	\N	\N	activ__resume_1718192327.pdf	\N	\N	\N
703	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:47.22307	2024-06-12 11:38:47.22307	\N	\N	\N	\N	activ__resume_1718192327.pdf	\N	\N	\N
704	Ivandry Antananarivo	\N	\N	fabienneramaroson@yahoo.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:47.681003	2024-06-12 11:38:47.681003	\N	\N	\N	\N	activ__resume_1718192327.pdf	\N	\N	\N
705	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:47.960211	2024-06-12 11:38:47.960211	\N	\N	\N	\N	activ__resume_1718192327.pdf	\N	\N	\N
706	Ny Onintsoa	\N	\N	ramandaharijaonaKim@gmail.com	0322492061	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:48.330018	2024-06-12 11:38:48.330018	\N	\N	\N	\N	activ__resume_1718192328.pdf	\N	\N	\N
707	Malala Harisoa	\N	\N	kelly10.harys@gmail.com	\n034 99 101 99	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:48.770268	2024-06-12 11:38:48.770268	\N	\N	\N	\N	activ__resume_1718192328.pdf	\N	\N	\N
708	Andy Tsifaniaina	\N	\N	andy.ranarijaona5@gmail.com	032 29 639 11	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:49.191474	2024-06-12 11:38:49.191474	\N	\N	\N	\N	activ__resume_1718192329.pdf	\N	\N	\N
709	Jeune Artisans	\N	\N	lemenalinda@gmail.com	 034 16 891 43	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:49.504189	2024-06-12 11:38:49.504189	\N	\N	\N	\N	activ__resume_1718192329.pdf	\N	\N	\N
710	Sonya Patricia	\N	\N	sonyapatricia3@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:49.902538	2024-06-12 11:38:49.902538	\N	\N	\N	\N	activ__resume_1718192329.pdf	\N	\N	\N
711	Miarantsoa Jessica	\N	\N	rafehivolamiarantsoa@gmail.com	034 12 433 94	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:50.33136	2024-06-12 11:38:50.33136	\N	\N	\N	\N	activ__resume_1718192330.pdf	\N	\N	\N
712	Assistance Technique	\N	\N	raberavosedra@gmail.com	034 98 341 48	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:50.670865	2024-06-12 11:38:50.670865	\N	\N	\N	\N	activ__resume_1718192330.pdf	\N	\N	\N
713	Orange Madagascar	\N	\N	manantenasoaandonirina@gmail.com	\n\n0327043933	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:51.019304	2024-06-12 11:38:51.019304	\N	\N	\N	\N	activ__resume_1718192331.pdf	\N	\N	\N
714	Diarisoa Fanantenana	\N	\N	andriambolaniaina@yahoo.com	 101 241 160 096	\N	III S 171 Bis	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:51.293342	2024-06-12 11:38:51.293342	\N	\N	\N	\N	activ__resume_1718192331.pdf	\N	\N	\N
715	Voary Vatosoa	\N	\N	\N	117 152 027 109	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:51.629964	2024-06-12 11:38:51.629964	\N	\N	\N	\N	activ__resume_1718192331.pdf	\N	\N	\N
716	Management Culturels	\N	\N	irisoaraharison@gmail.com	261328634197	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:52.115504	2024-06-12 11:38:52.115504	\N	\N	\N	\N	activ__resume_1718192332.pdf	\N	\N	\N
717	Concorde Distribution	\N	\N	alphinerasoazanamparany@gmail.com	117 032 014 554	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:52.460299	2024-06-12 11:38:52.460299	\N	\N	\N	\N	activ__resume_1718192332.pdf	\N	\N	\N
718	Tongarivo Tanjombato	\N	\N	lovarakotoarimanana98@gmail.com	347066730	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:53.180478	2024-06-12 11:38:53.180478	\N	\N	\N	\N	activ__resume_1718192333.pdf	\N	\N	\N
719	Elysa Viviane	\N	\N	elsamartial8863@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:53.532299	2024-06-12 11:38:53.532299	\N	\N	\N	\N	activ__resume_1718192333.pdf	\N	\N	\N
720	Onisoa Hasina	\N	\N	rakotonirinaonisoa2@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:53.89942	2024-06-12 11:38:53.89942	\N	\N	\N	\N	activ__resume_1718192333.pdf	\N	\N	\N
721	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:54.089136	2024-06-12 11:38:54.089136	\N	\N	\N	\N	activ__resume_1718192334.pdf	\N	\N	\N
722	Venteet Prospectionclient	\N	\N	andrianaivosoairina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:54.518444	2024-06-12 11:38:54.518444	\N	\N	\N	\N	activ__resume_1718192334.pdf	\N	\N	\N
723	Easytech Madagascar	\N	\N	melliferahello@gmail.com	032 66 074 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:55.002562	2024-06-12 11:38:55.002562	\N	\N	\N	\N	activ__resume_1718192335.pdf	\N	\N	\N
724	Ambatolampy Avaratra	\N	\N	lionel.cc.spartoo@gmail.com	034 32 653 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:55.373242	2024-06-12 11:38:55.373242	\N	\N	\N	\N	activ__resume_1718192335.pdf	\N	\N	\N
725	Fanirina Sarobidy	\N	\N	\N	038 64 883 60	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:55.663959	2024-06-12 11:38:55.663959	\N	\N	\N	\N	activ__resume_1718192335.pdf	\N	\N	\N
726	Najaina Fanamperana	\N	\N	najaina11@gmail.com	038 11 482 81	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:56.085429	2024-06-12 11:38:56.085429	\N	\N	\N	\N	activ__resume_1718192336.pdf	\N	\N	\N
727	Niritiana Sandrinah	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:56.351384	2024-06-12 11:38:56.351384	\N	\N	\N	\N	activ__resume_1718192336.pdf	\N	\N	\N
728	Natrehana Manampy	\N	\N	rakotoasimbolanatrehana@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:56.767839	2024-06-12 11:38:56.767839	\N	\N	\N	\N	activ__resume_1718192336.pdf	\N	\N	\N
729	Ny Hasina	\N	\N	\N	0342965725	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:57.061301	2024-06-12 11:38:57.061301	\N	\N	\N	\N	activ__resume_1718192337.pdf	\N	\N	\N
730	Human Resources	\N	\N	mimich.rlina@gmail.com	032 44 993 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:57.561513	2024-06-12 11:38:57.561513	\N	\N	\N	\N	activ__resume_1718192337.pdf	\N	\N	\N
731	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:38:57.771952	2024-06-12 11:38:57.771952	\N	\N	\N	\N	activ__resume_1718192337.pdf	\N	\N	\N
732	Business School	\N	\N	diamsramarson@gmail.com	117172023247	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:58.170733	2024-06-12 11:38:58.170733	\N	\N	\N	\N	activ__resume_1718192338.pdf	\N	\N	\N
733	Premier Cycle	\N	\N	Tesssandra3@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:58.692178	2024-06-12 11:38:58.692178	\N	\N	\N	\N	activ__resume_1718192338.pdf	\N	\N	\N
734	Mbolatiana Michel	\N	\N	orlandoandriamamonjisoa@gmail.com	26134 75	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:59.150457	2024-06-12 11:38:59.150457	\N	\N	\N	\N	activ__resume_1718192339.pdf	\N	\N	\N
735	Inconnu	\N	\N	herimampiononaonjamalala@gmail.com	038 85 120 89	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:38:59.579646	2024-06-12 11:38:59.579646	\N	\N	\N	\N	activ__resume_1718192339.pdf	\N	\N	\N
736	Mialy Dinan	\N	\N	mialyrakotoarisoa2128@gmail.com	   038 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:00.036879	2024-06-12 11:39:00.036879	\N	\N	\N	\N	activ__resume_1718192340.pdf	\N	\N	\N
737	Ressources Humaines	\N	\N	harinicole@yahoo.fr	034 24 888 11	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:00.697844	2024-06-12 11:39:00.697844	\N	\N	\N	\N	activ__resume_1718192340.pdf	\N	\N	\N
738	Gestion Commerciale	\N	\N	randriatandrarojoniaina@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:01.34285	2024-06-12 11:39:01.34285	\N	\N	\N	\N	activ__resume_1718192341.pdf	\N	\N	\N
739	Rasoloarijaona Soafinaritra	\N	\N	fy.rasolo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:01.75753	2024-06-12 11:39:01.75753	\N	\N	\N	\N	activ__resume_1718192341.pdf	\N	\N	\N
740	Ny Aina	\N	\N	nyainarazakamanana@gmail.com	032 07 567 93	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:02.155399	2024-06-12 11:39:02.155399	\N	\N	\N	\N	activ__resume_1718192342.pdf	\N	\N	\N
741	Ter Behenjy	\N	\N	rondroelodie@yahoo.fr	038 17 969 79	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:02.557698	2024-06-12 11:39:02.557698	\N	\N	\N	\N	activ__resume_1718192342.pdf	\N	\N	\N
742	Andrononobe Analamahintsy	\N	\N	rndjfy@gmail.com	0346762778	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:03.016761	2024-06-12 11:39:03.016761	\N	\N	\N	\N	activ__resume_1718192343.pdf	\N	\N	\N
743	Nofy Prisca	\N	\N	\N	0345057452	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:03.309667	2024-06-12 11:39:03.309667	\N	\N	\N	\N	activ__resume_1718192343.pdf	\N	\N	\N
744	Gestion Commerciale	\N	\N	randriatandrarojoniaina@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:03.777438	2024-06-12 11:39:03.777438	\N	\N	\N	\N	activ__resume_1718192343.pdf	\N	\N	\N
745	Power Point	\N	\N	vahinynyaina43@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:04.113909	2024-06-12 11:39:04.113909	\N	\N	\N	\N	activ__resume_1718192344.pdf	\N	\N	\N
746	Manitra Edmond	\N	\N	manitra.razafindraibe@gmail.com	101 251 132 316	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:04.732516	2024-06-12 11:39:04.732516	\N	\N	\N	\N	activ__resume_1718192344.pdf	\N	\N	\N
747	Antenaina Iharantsoa	\N	\N	iharantsoa.noum@gmail.com	032 56 547 84	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:05.007208	2024-06-12 11:39:05.007208	\N	\N	\N	\N	activ__resume_1718192345.pdf	\N	\N	\N
748	Ter Ampitatafika	\N	\N	landyredac11@gmail.com	034 89 924 84	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:05.283883	2024-06-12 11:39:05.283883	\N	\N	\N	\N	activ__resume_1718192345.pdf	\N	\N	\N
749	Maria Tatiana	\N	\N	tatiana.maria.raharisoa@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:05.661245	2024-06-12 11:39:05.661245	\N	\N	\N	\N	activ__resume_1718192345.pdf	\N	\N	\N
750	Fara Mbolaniaina	\N	\N	mbolarambelo@gmail.com	033 81 787 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:06.025023	2024-06-12 11:39:06.025023	\N	\N	\N	\N	activ__resume_1718192346.pdf	\N	\N	\N
751	Info Ampandrana	\N	\N	\N	 2019-2020	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:06.363481	2024-06-12 11:39:06.363481	\N	\N	\N	\N	activ__resume_1718192346.pdf	\N	\N	\N
752	Andriantsoa Onja	\N	\N	ounjams@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:06.80792	2024-06-12 11:39:06.80792	\N	\N	\N	\N	activ__resume_1718192346.pdf	\N	\N	\N
753	Digital Training	\N	\N	miharyandrianjafimanana@gmail.com	0343430309	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:07.223525	2024-06-12 11:39:07.223525	\N	\N	\N	\N	activ__resume_1718192347.pdf	\N	\N	\N
754	Ambanja Madagascar	\N	\N	vmireillezarasoa@gmail.com	2015-2018	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:07.50562	2024-06-12 11:39:07.50562	\N	\N	\N	\N	activ__resume_1718192347.pdf	\N	\N	\N
755	Langue Anglaise	\N	\N	r.andrianjafisoa@gmail.com	034 48 541 18	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:07.823063	2024-06-12 11:39:07.823063	\N	\N	\N	\N	activ__resume_1718192347.pdf	\N	\N	\N
756	Harinomena Sitraka	\N	\N	andrianarivonysitraka64@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:08.125271	2024-06-12 11:39:08.125271	\N	\N	\N	\N	activ__resume_1718192348.pdf	\N	\N	\N
757	Mialy Judith	\N	\N	judithmialy73@gmail.com	\n\n117 012 030	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:08.442307	2024-06-12 11:39:08.442307	\N	\N	\N	\N	activ__resume_1718192348.pdf	\N	\N	\N
758	Bouygues Darty	\N	\N	Milantorav23@gmail.com	0327513251	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:08.832366	2024-06-12 11:39:08.832366	\N	\N	\N	\N	activ__resume_1718192348.pdf	\N	\N	\N
759	Hantatiana Diana	\N	\N	ramiandiana27@gmail.com	101 212 233 688	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:09.300296	2024-06-12 11:39:09.300296	\N	\N	\N	\N	activ__resume_1718192349.pdf	\N	\N	\N
760	Informations Personnelles	\N	\N	zotoavina25@gmail.com	0348117144	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:09.892899	2024-06-12 11:39:09.892899	\N	\N	\N	\N	activ__resume_1718192349.pdf	\N	\N	\N
761	Telepeformance Madagascar	\N	\N	palmaryandrower@gmail.com	034 61 910 30	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:10.230118	2024-06-12 11:39:10.230118	\N	\N	\N	\N	activ__resume_1718192350.pdf	\N	\N	\N
762	Inconnu	\N	\N	franciaandrianjafiravaka2@gmail.com	0325841179	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:10.542034	2024-06-12 11:39:10.542034	\N	\N	\N	\N	activ__resume_1718192350.pdf	\N	\N	\N
763	Farah Karina	\N	\N	\N	033 11 487 08	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:10.898131	2024-06-12 11:39:10.898131	\N	\N	\N	\N	activ__resume_1718192350.pdf	\N	\N	\N
764	Le Louvre	\N	\N	steveandriamananjo@gmail.com	  032 92	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:11.421455	2024-06-12 11:39:11.421455	\N	\N	\N	\N	activ__resume_1718192351.pdf	\N	\N	\N
765	Logistique Groupe	\N	\N	natalieraharimalala@gmail.com	\n\n034 93	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:11.906626	2024-06-12 11:39:11.906626	\N	\N	\N	\N	activ__resume_1718192351.pdf	\N	\N	\N
766	Elima Roc	\N	\N	rer.elimaroc@gmail.com	033 75 896 30	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:12.337801	2024-06-12 11:39:12.337801	\N	\N	\N	\N	activ__resume_1718192352.pdf	\N	\N	\N
767	Onjaniaina Joseph	\N	\N	AdenneToky@gmail.com	032 06 796 05	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:12.709778	2024-06-12 11:39:12.709778	\N	\N	\N	\N	activ__resume_1718192352.pdf	\N	\N	\N
768	Claudia Lalaina	\N	\N	rakotondraibeclaudia92@gmail.com	\n 032 81	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:13.138043	2024-06-12 11:39:13.138043	\N	\N	\N	\N	activ__resume_1718192353.pdf	\N	\N	\N
769	Nirina Niaina	\N	\N	rakotonarivom32@gmail.com	\n0383189563	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:13.472883	2024-06-12 11:39:13.472883	\N	\N	\N	\N	activ__resume_1718192353.pdf	\N	\N	\N
770	Amborompotsy Talatamaty	\N	\N	falinirinanyanjarafitia@yahoo.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:13.774469	2024-06-12 11:39:13.774469	\N	\N	\N	\N	activ__resume_1718192353.pdf	\N	\N	\N
771	Digital Marketing	\N	\N	mahefatianaherizo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:14.270571	2024-06-12 11:39:14.270571	\N	\N	\N	\N	activ__resume_1718192354.pdf	\N	\N	\N
772	Centre National	\N	\N	andrainatiah@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:14.618968	2024-06-12 11:39:14.618968	\N	\N	\N	\N	activ__resume_1718192354.pdf	\N	\N	\N
773	Depuis Mai	\N	\N	tahianadebora@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:15.015905	2024-06-12 11:39:15.015905	\N	\N	\N	\N	activ__resume_1718192355.pdf	\N	\N	\N
774	Elodie Sariaka	\N	\N	sariakarahajarison@gmail.com	032 55 955 81	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:15.387075	2024-06-12 11:39:15.387075	\N	\N	\N	\N	activ__resume_1718192355.pdf	\N	\N	\N
775	Ressources Humaine	\N	\N	armance1986@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:16.162498	2024-06-12 11:39:16.162498	\N	\N	\N	\N	activ__resume_1718192356.pdf	\N	\N	\N
776	Service Finances	\N	\N	elysamahefa@gmail.com	034 16 741 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:16.636467	2024-06-12 11:39:16.636467	\N	\N	\N	\N	activ__resume_1718192356.pdf	\N	\N	\N
777	Inconnu	\N	\N	ramatsiry8@gmail.com	038 55 908 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:17.040791	2024-06-12 11:39:17.040791	\N	\N	\N	\N	activ__resume_1718192357.pdf	\N	\N	\N
778	Team Leader	\N	\N	razafindrakototinah@gmail.com	034 40 776 54	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:17.432471	2024-06-12 11:39:17.432471	\N	\N	\N	\N	activ__resume_1718192357.pdf	\N	\N	\N
779	Inconnu	\N	\N	\N	344289	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:17.848961	2024-06-12 11:39:17.848961	\N	\N	\N	\N	activ__resume_1718192357.pdf	\N	\N	\N
780	Institut Universtitaire	\N	\N	rovaniainalalaharison@gmail.com	261346665786	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:18.4797	2024-06-12 11:39:18.4797	\N	\N	\N	\N	activ__resume_1718192358.pdf	\N	\N	\N
781	Saint Jean	\N	\N	almadianeys@gmail.com	0344320433	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:18.768744	2024-06-12 11:39:18.768744	\N	\N	\N	\N	activ__resume_1718192358.pdf	\N	\N	\N
782	Harvin Gilliot	\N	\N	hrvratsiety@gmail.com	26133 92	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:19.220025	2024-06-12 11:39:19.220025	\N	\N	\N	\N	activ__resume_1718192359.pdf	\N	\N	\N
783	Andy Karen	\N	\N	rajoelimalalaandykaren@gmail.com	0337263161	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:19.508174	2024-06-12 11:39:19.508174	\N	\N	\N	\N	activ__resume_1718192359.pdf	\N	\N	\N
784	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:19.724147	2024-06-12 11:39:19.724147	\N	\N	\N	\N	activ__resume_1718192359.pdf	\N	\N	\N
785	Autisme Madagascar	\N	\N	soloforan89@gmail.com	261346238085	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:20.23706	2024-06-12 11:39:20.23706	\N	\N	\N	\N	activ__resume_1718192360.pdf	\N	\N	\N
786	Ambohijafy Itaosy	\N	\N	raoulravomampiandra@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:20.59066	2024-06-12 11:39:20.59066	\N	\N	\N	\N	activ__resume_1718192360.pdf	\N	\N	\N
787	Responsable Administratif	\N	\N	safidynyantso@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:21.059602	2024-06-12 11:39:21.059602	\N	\N	\N	\N	activ__resume_1718192361.pdf	\N	\N	\N
788	Randrianarison Toky	\N	\N	randrianarisontoky15@gmail.com	0340194254	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:21.405379	2024-06-12 11:39:21.405379	\N	\N	\N	\N	activ__resume_1718192361.pdf	\N	\N	\N
789	Ihobiseheno Annicka	\N	\N	annicka.hobiseheno@gmail.com	034 81 464 11	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:21.764066	2024-06-12 11:39:21.764066	\N	\N	\N	\N	activ__resume_1718192361.pdf	\N	\N	\N
790	Behoririka Ankaditapaka	\N	\N	ralambosonlaetitia@gmail.com	2001-2002	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:22.020124	2024-06-12 11:39:22.020124	\N	\N	\N	\N	activ__resume_1718192362.pdf	\N	\N	\N
791	Chinois Mandarin	\N	\N	\N	\n0342563460	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:22.288654	2024-06-12 11:39:22.288654	\N	\N	\N	\N	activ__resume_1718192362.pdf	\N	\N	\N
792	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:22.476844	2024-06-12 11:39:22.476844	\N	\N	\N	\N	activ__resume_1718192362.pdf	\N	\N	\N
793	Consultante Marketing	\N	\N	sandralona93@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:22.91468	2024-06-12 11:39:22.91468	\N	\N	\N	\N	activ__resume_1718192362.pdf	\N	\N	\N
794	Dinah Fiononana	\N	\N	dinah.mihantafy@gmail.com	\n\n0345981288	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:23.247256	2024-06-12 11:39:23.247256	\N	\N	\N	\N	activ__resume_1718192363.pdf	\N	\N	\N
795	Nisiarinavalona Finaritra	\N	\N	finaritranavalona@gmail.com	034 11 454 65	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:23.65763	2024-06-12 11:39:23.65763	\N	\N	\N	\N	activ__resume_1718192363.pdf	\N	\N	\N
796	Barisoa Heriniaina	\N	\N	heriniainarandriamihary75@gmail.com	2019-2021	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:24.160936	2024-06-12 11:39:24.160936	\N	\N	\N	\N	activ__resume_1718192364.pdf	\N	\N	\N
797	Inconnu	\N	\N	\N	 034 54 575 44	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:24.42278	2024-06-12 11:39:24.42278	\N	\N	\N	\N	activ__resume_1718192364.pdf	\N	\N	\N
798	Saint Pierre	\N	\N	sandisonlalie@gmail.com	261341069700	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:24.703118	2024-06-12 11:39:24.703118	\N	\N	\N	\N	activ__resume_1718192364.pdf	\N	\N	\N
799	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:24.901832	2024-06-12 11:39:24.901832	\N	\N	\N	\N	activ__resume_1718192364.pdf	\N	\N	\N
800	Bel Avenir	\N	\N	arizoely3011@gmail.com	32 48 148 68	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:25.20081	2024-06-12 11:39:25.20081	\N	\N	\N	\N	activ__resume_1718192365.pdf	\N	\N	\N
801	Ambohibao Iavoloha	\N	\N	\N	034 58 325 24	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:25.453264	2024-06-12 11:39:25.453264	\N	\N	\N	\N	activ__resume_1718192365.pdf	\N	\N	\N
802	Service Commercial	\N	\N	raharison.patrick@gmail.com	261 324532083	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:25.791023	2024-06-12 11:39:25.791023	\N	\N	\N	\N	activ__resume_1718192365.pdf	\N	\N	\N
803	Nomenjanahary Zo	\N	\N	znomenja@gmail.com	0348795341	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:26.093871	2024-06-12 11:39:26.093871	\N	\N	\N	\N	activ__resume_1718192366.pdf	\N	\N	\N
804	Lanjaniaina Paule	\N	\N	lanjaniainaratsimanosika@gmail.com	101 212 199 145	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:26.458179	2024-06-12 11:39:26.458179	\N	\N	\N	\N	activ__resume_1718192366.pdf	\N	\N	\N
805	Jean Oilly	\N	\N	tsiorinirina3@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:27.232003	2024-06-12 11:39:27.232003	\N	\N	\N	\N	activ__resume_1718192367.pdf	\N	\N	\N
806	Advanced One	\N	\N	\N	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:27.662827	2024-06-12 11:39:27.662827	\N	\N	\N	\N	activ__resume_1718192367.pdf	\N	\N	\N
807	Jinah Annie	\N	\N	\N	261327490588	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:28.027423	2024-06-12 11:39:28.027423	\N	\N	\N	\N	activ__resume_1718192368.pdf	\N	\N	\N
808	Mangalaza Ambohidratrimo	\N	\N	aandrianaris.tiffany@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:28.360256	2024-06-12 11:39:28.360256	\N	\N	\N	\N	activ__resume_1718192368.pdf	\N	\N	\N
809	Gestion Commerciale	\N	\N	randriatandrarojoniaina@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:28.906886	2024-06-12 11:39:28.906886	\N	\N	\N	\N	activ__resume_1718192368.pdf	\N	\N	\N
810	Microsoft Word	\N	\N	reakevine@gmail.com	034 09 146 46	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:29.350378	2024-06-12 11:39:29.350378	\N	\N	\N	\N	activ__resume_1718192369.pdf	\N	\N	\N
811	Herizo Orlando	\N	\N	ramilisonorlando@gmail.com	2014-2018	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:29.661872	2024-06-12 11:39:29.661872	\N	\N	\N	\N	activ__resume_1718192369.pdf	\N	\N	\N
812	Anosivavaka Ambohimanarina	\N	\N	\N	0334546008	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:29.915516	2024-06-12 11:39:29.915516	\N	\N	\N	\N	activ__resume_1718192369.pdf	\N	\N	\N
813	Ad Valorem	\N	\N	oscarevaka@gmail.com	038 66 358 76	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:30.215881	2024-06-12 11:39:30.215881	\N	\N	\N	\N	activ__resume_1718192370.pdf	\N	\N	\N
814	Ressources Humaines	\N	\N	sehnarisoa@gmail.com	034 41 318 28	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:31.205893	2024-06-12 11:39:31.205893	\N	\N	\N	\N	activ__resume_1718192371.pdf	\N	\N	\N
815	Bis Mandriambero	\N	\N	mampirajaonarivelo@gmail.com	034 2644706	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:31.682094	2024-06-12 11:39:31.682094	\N	\N	\N	\N	activ__resume_1718192371.pdf	\N	\N	\N
816	Techniciens Informatiques	\N	\N	brimagnif.jazz@gmail.com	261335499280	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:32.194453	2024-06-12 11:39:32.194453	\N	\N	\N	\N	activ__resume_1718192372.pdf	\N	\N	\N
817	Webhelp Antananarivo	\N	\N	ambinintsoaandriamainty@gmail.com	261328981885	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:32.70655	2024-06-12 11:39:32.70655	\N	\N	\N	\N	activ__resume_1718192372.pdf	\N	\N	\N
818	Projet Client	\N	\N	njaka.andrianasolo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:32.967361	2024-06-12 11:39:32.967361	\N	\N	\N	\N	activ__resume_1718192372.pdf	\N	\N	\N
819	Tsiory Fifaliana	\N	\N	randrianarisoatsiory047@gmail.com	\n 034 92	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:33.325375	2024-06-12 11:39:33.325375	\N	\N	\N	\N	activ__resume_1718192373.pdf	\N	\N	\N
820	Back Office	\N	\N	christellearia8@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:33.644724	2024-06-12 11:39:33.644724	\N	\N	\N	\N	activ__resume_1718192373.pdf	\N	\N	\N
821	Inconnu	\N	\N	mahalymilamina@gmail.com	261347655876	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:34.093545	2024-06-12 11:39:34.093545	\N	\N	\N	\N	activ__resume_1718192374.pdf	\N	\N	\N
822	Ambaniala Itaosy	\N	\N	francoiserah@gmail.com	\n\n034 59	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:34.384559	2024-06-12 11:39:34.384559	\N	\N	\N	\N	activ__resume_1718192374.pdf	\N	\N	\N
823	Personne Responsable	\N	\N	laharivelo@gmail.com	2013-2014	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:34.81697	2024-06-12 11:39:34.81697	\N	\N	\N	\N	activ__resume_1718192374.pdf	\N	\N	\N
824	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:35.101136	2024-06-12 11:39:35.101136	\N	\N	\N	\N	activ__resume_1718192375.pdf	\N	\N	\N
825	Projet Eassy	\N	\N	njarasoa@yahoo.com	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:35.886407	2024-06-12 11:39:35.886407	\N	\N	\N	\N	activ__resume_1718192375.pdf	\N	\N	\N
826	Travailleur Social	\N	\N	nfabioly@gmail.com	2017-2018	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:36.188169	2024-06-12 11:39:36.188169	\N	\N	\N	\N	activ__resume_1718192376.pdf	\N	\N	\N
827	Andy Tsifaniaina	\N	\N	andy.ranarijaona5@gmail.com	032 29 639 11	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:36.616389	2024-06-12 11:39:36.616389	\N	\N	\N	\N	activ__resume_1718192376.pdf	\N	\N	\N
828	Diego Suarez	\N	\N	\N	715 031 025 945	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:37.050164	2024-06-12 11:39:37.050164	\N	\N	\N	\N	activ__resume_1718192377.pdf	\N	\N	\N
829	Zaisoa Nirindra	\N	\N	\N	\n\n034 39	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:37.357171	2024-06-12 11:39:37.357171	\N	\N	\N	\N	activ__resume_1718192377.pdf	\N	\N	\N
830	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:37.592889	2024-06-12 11:39:37.592889	\N	\N	\N	\N	activ__resume_1718192377.pdf	\N	\N	\N
831	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:37.804487	2024-06-12 11:39:37.804487	\N	\N	\N	\N	activ__resume_1718192377.pdf	\N	\N	\N
832	Zo Nandrianina	\N	\N	\N	2007\n26	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:38.069489	2024-06-12 11:39:38.069489	\N	\N	\N	\N	activ__resume_1718192378.pdf	\N	\N	\N
833	Helifanomezantsoa Dinavoahary	\N	\N	diaryratsimbarimanga@gmail.com	261348062051	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:38.417894	2024-06-12 11:39:38.417894	\N	\N	\N	\N	activ__resume_1718192378.pdf	\N	\N	\N
834	Ter Ambatoroka	\N	\N	malalla.rak@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:38.875691	2024-06-12 11:39:38.875691	\N	\N	\N	\N	activ__resume_1718192378.pdf	\N	\N	\N
835	Ambohipanja Ankadike	\N	\N	tiavinajamestoky@gmail.com	261343116537	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:39.177334	2024-06-12 11:39:39.177334	\N	\N	\N	\N	activ__resume_1718192379.pdf	\N	\N	\N
836	Inconnu	\N	\N	thifannieramamonjisoa@gmail.co	034 71 413 70	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:39.474599	2024-06-12 11:39:39.474599	\N	\N	\N	\N	activ__resume_1718192379.pdf	\N	\N	\N
837	Serv Antananarivo	\N	\N	germainrobison@gmail.com	034 83 698 72	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:40.008421	2024-06-12 11:39:40.008421	\N	\N	\N	\N	activ__resume_1718192380.pdf	\N	\N	\N
838	Inconnu	\N	\N	rocksiecindy7@gmail.com	0343662513	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:40.271635	2024-06-12 11:39:40.271635	\N	\N	\N	\N	activ__resume_1718192380.pdf	\N	\N	\N
839	My Smart	\N	\N	r.r.andry.p@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:40.653163	2024-06-12 11:39:40.653163	\N	\N	\N	\N	activ__resume_1718192380.pdf	\N	\N	\N
840	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:40.854913	2024-06-12 11:39:40.854913	\N	\N	\N	\N	activ__resume_1718192380.pdf	\N	\N	\N
841	Tsioriniaina Miora	\N	\N	tsironiainamiora@gmail.com	032 48 436 60	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:41.192253	2024-06-12 11:39:41.192253	\N	\N	\N	\N	activ__resume_1718192381.pdf	\N	\N	\N
842	Public Ivato	\N	\N	sm.nirina1987@gmail.com	032 80 283 00	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:41.582375	2024-06-12 11:39:41.582375	\N	\N	\N	\N	activ__resume_1718192381.pdf	\N	\N	\N
843	Heritina Leonnette	\N	\N	leonnetterasolondraibe.2412@gmail.com	032 51 176 38	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:41.950316	2024-06-12 11:39:41.950316	\N	\N	\N	\N	activ__resume_1718192381.pdf	\N	\N	\N
844	Tafitasoa Mendrika	\N	\N	\N	0330638711	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:42.185364	2024-06-12 11:39:42.185364	\N	\N	\N	\N	activ__resume_1718192382.pdf	\N	\N	\N
845	Mandresy Herilala	\N	\N	mr.mandresy@gmail.com	0346127357	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:42.586926	2024-06-12 11:39:42.586926	\N	\N	\N	\N	activ__resume_1718192382.pdf	\N	\N	\N
846	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:42.773915	2024-06-12 11:39:42.773915	\N	\N	\N	\N	activ__resume_1718192382.pdf	\N	\N	\N
847	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:42.961142	2024-06-12 11:39:42.961142	\N	\N	\N	\N	activ__resume_1718192382.pdf	\N	\N	\N
848	Nekena Ny	\N	\N	nekena.rakotonjatovo@yahoo.com	034 18 662 39	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:43.225168	2024-06-12 11:39:43.225168	\N	\N	\N	\N	activ__resume_1718192383.pdf	\N	\N	\N
849	Responsable Commande	\N	\N	\N	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:43.598941	2024-06-12 11:39:43.598941	\N	\N	\N	\N	activ__resume_1718192383.pdf	\N	\N	\N
850	Inconnu	\N	\N	rakotozananyjessica@gmail.com	380878496	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:43.915332	2024-06-12 11:39:43.915332	\N	\N	\N	\N	activ__resume_1718192383.pdf	\N	\N	\N
851	Administrateur Informatique	\N	\N	anjanirina_2@yahoo.fr	034 70 880 79	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:44.427293	2024-06-12 11:39:44.427293	\N	\N	\N	\N	activ__resume_1718192384.pdf	\N	\N	\N
852	Informatique Bureautique	\N	\N	\N	034 10 517 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:44.846269	2024-06-12 11:39:44.846269	\N	\N	\N	\N	activ__resume_1718192384.pdf	\N	\N	\N
853	Responable Administratifs	\N	\N	Sitrakateby45@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:45.242694	2024-06-12 11:39:45.242694	\N	\N	\N	\N	activ__resume_1718192385.pdf	\N	\N	\N
854	Secteur Logistique	\N	\N	tahiryratoandromanana@gmail.com	034 08 863 97	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:45.661283	2024-06-12 11:39:45.661283	\N	\N	\N	\N	activ__resume_1718192385.pdf	\N	\N	\N
855	Tahiana Malala	\N	\N	malalapinksandria@gmail.com	034 74 092 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:45.949502	2024-06-12 11:39:45.949502	\N	\N	\N	\N	activ__resume_1718192385.pdf	\N	\N	\N
856	Mahamasina Antananarivo	\N	\N	hasinarandrianirina95@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:46.318719	2024-06-12 11:39:46.318719	\N	\N	\N	\N	activ__resume_1718192386.pdf	\N	\N	\N
857	Lalantsoa Dodali	\N	\N	rakotomangadodali@gmail.com	\n032 17 069 83	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:46.875037	2024-06-12 11:39:46.875037	\N	\N	\N	\N	activ__resume_1718192386.pdf	\N	\N	\N
858	Mamitiana Jacky	\N	\N	bobolikely@gmail.com	327129914	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:47.249052	2024-06-12 11:39:47.249052	\N	\N	\N	\N	activ__resume_1718192387.pdf	\N	\N	\N
859	Assistante Back	\N	\N	randoandriantahina@gmail.com	033 78 459 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:47.605654	2024-06-12 11:39:47.605654	\N	\N	\N	\N	activ__resume_1718192387.pdf	\N	\N	\N
860	Avec Lifewood	\N	\N	randrianoelinanatacha@gmail.com	261322952145	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:48.024391	2024-06-12 11:39:48.024391	\N	\N	\N	\N	activ__resume_1718192388.pdf	\N	\N	\N
861	Diamondra Sabrina	\N	\N	diamondrasabrina@outlook.fr	038 06 988 90	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:48.540684	2024-06-12 11:39:48.540684	\N	\N	\N	\N	activ__resume_1718192388.pdf	\N	\N	\N
862	Christianah Soniah	\N	\N	\N	\n038 52 502 04	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:48.907281	2024-06-12 11:39:48.907281	\N	\N	\N	\N	activ__resume_1718192388.pdf	\N	\N	\N
863	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:49.215215	2024-06-12 11:39:49.215215	\N	\N	\N	\N	activ__resume_1718192389.pdf	\N	\N	\N
864	Herilantonirina Marie	\N	\N	samijonja01@yahoo.fr	034 43 103 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:49.815962	2024-06-12 11:39:49.815962	\N	\N	\N	\N	activ__resume_1718192389.pdf	\N	\N	\N
865	Bakoliarisoa Rinah	\N	\N	nomenjanaharybakoliarisoa@gmail.com	2020-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:50.210892	2024-06-12 11:39:50.210892	\N	\N	\N	\N	activ__resume_1718192390.pdf	\N	\N	\N
866	David Jones	\N	\N	mialyalinoro@gmail.com	261 38	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:50.653383	2024-06-12 11:39:50.653383	\N	\N	\N	\N	activ__resume_1718192390.pdf	\N	\N	\N
867	Hanitriniana Volatahiana	\N	\N	tahinaandria23@gmail.com	0322585980	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:50.915507	2024-06-12 11:39:50.915507	\N	\N	\N	\N	activ__resume_1718192390.pdf	\N	\N	\N
868	Suzette Razafindrasoa	\N	\N	suzettekalose@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:51.188701	2024-06-12 11:39:51.188701	\N	\N	\N	\N	activ__resume_1718192391.pdf	\N	\N	\N
869	Catholique St	\N	\N	laetitiabemaroa@gmail.com	0322708786	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:51.605308	2024-06-12 11:39:51.605308	\N	\N	\N	\N	activ__resume_1718192391.pdf	\N	\N	\N
870	Conseiller Client	\N	\N	randriaandy2@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:52.352038	2024-06-12 11:39:52.352038	\N	\N	\N	\N	activ__resume_1718192392.pdf	\N	\N	\N
871	Mandialaza Ankadifotsy	\N	\N	jlramilison@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:52.882604	2024-06-12 11:39:52.882604	\N	\N	\N	\N	activ__resume_1718192392.pdf	\N	\N	\N
872	Ando Soa	\N	\N	rasolohenintsoa03@gmail.com	034 12 336 97	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:53.273532	2024-06-12 11:39:53.273532	\N	\N	\N	\N	activ__resume_1718192393.pdf	\N	\N	\N
873	Verohanta Marcelle	\N	\N	vero.ramanandraisoa@yahoo.fr	034 02 689 10	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:53.726708	2024-06-12 11:39:53.726708	\N	\N	\N	\N	activ__resume_1718192393.pdf	\N	\N	\N
874	Inconnu	\N	\N	adelliotdr@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:54.205382	2024-06-12 11:39:54.205382	\N	\N	\N	\N	activ__resume_1718192394.pdf	\N	\N	\N
875	Etudes Premier	\N	\N	\N	0349505156	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:54.665659	2024-06-12 11:39:54.665659	\N	\N	\N	\N	activ__resume_1718192394.pdf	\N	\N	\N
876	Oasis Nosy	\N	\N	victotrandriamanatsoa@gmail.com	032 51 495 66	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:55.019984	2024-06-12 11:39:55.019984	\N	\N	\N	\N	activ__resume_1718192395.pdf	\N	\N	\N
877	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:55.204611	2024-06-12 11:39:55.204611	\N	\N	\N	\N	activ__resume_1718192395.pdf	\N	\N	\N
878	Webhelp Andraharo	\N	\N	\N	032 66 601 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:55.788177	2024-06-12 11:39:55.788177	\N	\N	\N	\N	activ__resume_1718192395.pdf	\N	\N	\N
879	Fanomezantsoa Florette	\N	\N	Fnoumezantsoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:56.17504	2024-06-12 11:39:56.17504	\N	\N	\N	\N	activ__resume_1718192396.pdf	\N	\N	\N
880	Inconnu	\N	\N	\N	038 33 816 91	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:56.449668	2024-06-12 11:39:56.449668	\N	\N	\N	\N	activ__resume_1718192396.pdf	\N	\N	\N
881	Ambohimanandray Ambohimanarina	\N	\N	\N	0345200382	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:56.838216	2024-06-12 11:39:56.838216	\N	\N	\N	\N	activ__resume_1718192396.pdf	\N	\N	\N
882	Itaosy Soamiampita	\N	\N	Ranjatoarisoamariaa22@gmail.com	\n\n0338775923	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:57.208923	2024-06-12 11:39:57.208923	\N	\N	\N	\N	activ__resume_1718192397.pdf	\N	\N	\N
883	Fenitra Toavina	\N	\N	Fenitrasamisoa@gmail.com	0324810233	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:57.52831	2024-06-12 11:39:57.52831	\N	\N	\N	\N	activ__resume_1718192397.pdf	\N	\N	\N
884	Back Office	\N	\N	nexpan786@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:57.915159	2024-06-12 11:39:57.915159	\N	\N	\N	\N	activ__resume_1718192397.pdf	\N	\N	\N
885	Call Analamahitsy	\N	\N	santaniaina2022@gmail.com	0348317376	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:58.239834	2024-06-12 11:39:58.239834	\N	\N	\N	\N	activ__resume_1718192398.pdf	\N	\N	\N
886	Latii Malalaniaina	\N	\N	latiimalalaniaina29@gmail.co	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:58.588649	2024-06-12 11:39:58.588649	\N	\N	\N	\N	activ__resume_1718192398.pdf	\N	\N	\N
887	Thalia Nandrianina	\N	\N	\N	0325055761	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:58.901684	2024-06-12 11:39:58.901684	\N	\N	\N	\N	activ__resume_1718192398.pdf	\N	\N	\N
888	Sariaka Rafenomanantsoa	\N	\N	sariakarafenomanantsoa@gmail.com	\n\n0348007697	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:39:59.280573	2024-06-12 11:39:59.280573	\N	\N	\N	\N	activ__resume_1718192399.pdf	\N	\N	\N
889	Armelle Harinoro	\N	\N	harinoroamelle@gmail.com	032 75 672 47	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:59.581805	2024-06-12 11:39:59.581805	\N	\N	\N	\N	activ__resume_1718192399.pdf	\N	\N	\N
890	Fanantenana Ny	\N	\N	leana.fano@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:39:59.895597	2024-06-12 11:39:59.895597	\N	\N	\N	\N	activ__resume_1718192399.pdf	\N	\N	\N
891	Fanomezantsoa Norotiana	\N	\N	franciarbc@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:00.305879	2024-06-12 11:40:00.305879	\N	\N	\N	\N	activ__resume_1718192400.pdf	\N	\N	\N
892	Antsa Nandrianina	\N	\N	araoelison58@gmail.com	034 25 936 84	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:00.692658	2024-06-12 11:40:00.692658	\N	\N	\N	\N	activ__resume_1718192400.pdf	\N	\N	\N
893	Inconnu	\N	\N	ifanyaian04@gmail.com	034 82 999 28	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:01.105145	2024-06-12 11:40:01.105145	\N	\N	\N	\N	activ__resume_1718192401.pdf	\N	\N	\N
894	Responsable Commercial	\N	\N	otranaivoson@yahoo.fr	261 38	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:01.955927	2024-06-12 11:40:01.955927	\N	\N	\N	\N	activ__resume_1718192401.pdf	\N	\N	\N
895	Alarobia Amboanjobe	\N	\N	randria.thierry@gmail.com	034 58 530 21	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:02.580852	2024-06-12 11:40:02.580852	\N	\N	\N	\N	activ__resume_1718192402.pdf	\N	\N	\N
896	Orange School	\N	\N	\N	\n0385146498	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:03.044158	2024-06-12 11:40:03.044158	\N	\N	\N	\N	activ__resume_1718192403.pdf	\N	\N	\N
897	Mahery Rajohnson	\N	\N	maheryrajohnson3@gmail.com	0347610501	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:03.37943	2024-06-12 11:40:03.37943	\N	\N	\N	\N	activ__resume_1718192403.pdf	\N	\N	\N
898	Miora Koloina	\N	\N	mikolikelly@gmail.com	 2016-2018	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:03.740914	2024-06-12 11:40:03.740914	\N	\N	\N	\N	activ__resume_1718192403.pdf	\N	\N	\N
899	Serge Tinasoa	\N	\N	\N	0349950450	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:04.081274	2024-06-12 11:40:04.081274	\N	\N	\N	\N	activ__resume_1718192404.pdf	\N	\N	\N
900	Dimby Nambinintsoa	\N	\N	andrianantoaninanambinintsoa@gmail.com	\n\n032 21	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:04.409105	2024-06-12 11:40:04.409105	\N	\N	\N	\N	activ__resume_1718192404.pdf	\N	\N	\N
901	Narindra Prisca	\N	\N	fanomezana.narindra@yahoo.com	261341309447	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:04.798453	2024-06-12 11:40:04.798453	\N	\N	\N	\N	activ__resume_1718192404.pdf	\N	\N	\N
902	Inconnu	\N	\N	\N	0349734032	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:05.22504	2024-06-12 11:40:05.22504	\N	\N	\N	\N	activ__resume_1718192405.pdf	\N	\N	\N
903	Vinany Loharanombato	\N	\N	razafimanjato94@gmail.com	032 57 591 72	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:05.675608	2024-06-12 11:40:05.675608	\N	\N	\N	\N	activ__resume_1718192405.pdf	\N	\N	\N
904	Ressources Humaines	\N	\N	sehnarisoa@gmail.com	034 41 318 28	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:06.624142	2024-06-12 11:40:06.624142	\N	\N	\N	\N	activ__resume_1718192406.pdf	\N	\N	\N
905	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:06.862466	2024-06-12 11:40:06.862466	\N	\N	\N	\N	activ__resume_1718192406.pdf	\N	\N	\N
906	Inconnu	\N	\N	miandrirazaa@gmail.com	032 65 624 09	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:07.337147	2024-06-12 11:40:07.337147	\N	\N	\N	\N	activ__resume_1718192407.pdf	\N	\N	\N
907	Lead Talent	\N	\N	volana.navalona@gmail.com	34 70 201 05	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:07.866008	2024-06-12 11:40:07.866008	\N	\N	\N	\N	activ__resume_1718192407.pdf	\N	\N	\N
908	Tambintsoa Nampoina	\N	\N	tambintsoarabari@gmail.com	34 89 109 58	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:08.258994	2024-06-12 11:40:08.258994	\N	\N	\N	\N	activ__resume_1718192408.pdf	\N	\N	\N
909	Kantoniaina Manoa	\N	\N	andriamiandrymanoa@gmail.com	0347452086	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:08.517224	2024-06-12 11:40:08.517224	\N	\N	\N	\N	activ__resume_1718192408.pdf	\N	\N	\N
910	Management Culturels	\N	\N	irisoaraharison@gmail.com	261328634197	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:09.100786	2024-06-12 11:40:09.100786	\N	\N	\N	\N	activ__resume_1718192409.pdf	\N	\N	\N
911	Inconnu	\N	\N	robionja@gmail.com	\n0346938163	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:09.356675	2024-06-12 11:40:09.356675	\N	\N	\N	\N	activ__resume_1718192409.pdf	\N	\N	\N
912	Formation Professionnelle	\N	\N	tinah.mrt@gmail.com	- 2018-2021	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:09.635472	2024-06-12 11:40:09.635472	\N	\N	\N	\N	activ__resume_1718192409.pdf	\N	\N	\N
913	Cabinet Miaro	\N	\N	ericarazafy@gmail.com	\n034 09 720 21	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:10.204723	2024-06-12 11:40:10.204723	\N	\N	\N	\N	activ__resume_1718192410.pdf	\N	\N	\N
914	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:10.544344	2024-06-12 11:40:10.544344	\N	\N	\N	\N	activ__resume_1718192410.pdf	\N	\N	\N
915	Andrianarison Faratiana	\N	\N	faratianaandrianarison@yahoo.com	034 64 222 90	\N	IVY 398	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:10.924994	2024-06-12 11:40:10.924994	\N	\N	\N	\N	activ__resume_1718192410.pdf	\N	\N	\N
916	Antananarivo Madagascar	\N	\N	valeriearinaval@gmail.com	2017-2018	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:11.320403	2024-06-12 11:40:11.320403	\N	\N	\N	\N	activ__resume_1718192411.pdf	\N	\N	\N
917	Inconnu	\N	\N	rhasimamy@gmail.com	0324941347	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:11.743279	2024-06-12 11:40:11.743279	\N	\N	\N	\N	activ__resume_1718192411.pdf	\N	\N	\N
918	Fanja Ramamonjisoa	\N	\N	l@gmail.com	034 53 511 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:12.500191	2024-06-12 11:40:12.500191	\N	\N	\N	\N	activ__resume_1718192412.pdf	\N	\N	\N
919	Tsanta Ny	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:12.934892	2024-06-12 11:40:12.934892	\N	\N	\N	\N	activ__resume_1718192412.pdf	\N	\N	\N
920	Entreprise Exportateurs	\N	\N	misoarazafy@yahoo.fr	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:13.510403	2024-06-12 11:40:13.510403	\N	\N	\N	\N	activ__resume_1718192413.pdf	\N	\N	\N
921	Service Finances	\N	\N	elysamahefa@gmail.com	034 16 741 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:13.948614	2024-06-12 11:40:13.948614	\N	\N	\N	\N	activ__resume_1718192413.pdf	\N	\N	\N
922	Tsitohaina Sergio	\N	\N	segiorazafindralambo97@gmail.com	032 79 211 68	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:14.501937	2024-06-12 11:40:14.501937	\N	\N	\N	\N	activ__resume_1718192414.pdf	\N	\N	\N
923	Le Louvre	\N	\N	steveandriamananjo@gmail.com	  032 92	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:15.085002	2024-06-12 11:40:15.085002	\N	\N	\N	\N	activ__resume_1718192415.pdf	\N	\N	\N
924	Hantasoa Dina	\N	\N	\N	103 012 009 182	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:15.411805	2024-06-12 11:40:15.411805	\N	\N	\N	\N	activ__resume_1718192415.pdf	\N	\N	\N
925	Planet Finance	\N	\N	aanjalara@yahoo.fr	034 07 777 19	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:15.786005	2024-06-12 11:40:15.786005	\N	\N	\N	\N	activ__resume_1718192415.pdf	\N	\N	\N
926	St Jean	\N	\N	\N	261342723979	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:16.074771	2024-06-12 11:40:16.074771	\N	\N	\N	\N	activ__resume_1718192416.pdf	\N	\N	\N
927	Norah Ariel	\N	\N	noraharieller@gmail.com	034 35 326 71	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:16.409529	2024-06-12 11:40:16.409529	\N	\N	\N	\N	activ__resume_1718192416.pdf	\N	\N	\N
928	Miora Onenantsoa	\N	\N	rakotoarinaivomiora@gmail.com	117 012 032 873	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:16.788712	2024-06-12 11:40:16.788712	\N	\N	\N	\N	activ__resume_1718192416.pdf	\N	\N	\N
929	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:17.020938	2024-06-12 11:40:17.020938	\N	\N	\N	\N	activ__resume_1718192417.pdf	\N	\N	\N
930	Dina Antenaina	\N	\N	rakotonjanaharytsiresy@yahoo.fr	034 10 575 88	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:17.443608	2024-06-12 11:40:17.443608	\N	\N	\N	\N	activ__resume_1718192417.pdf	\N	\N	\N
931	Imprimerie Moderne	\N	\N	ralisoanindrina@yahoo.fr	2016-2022	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:17.828566	2024-06-12 11:40:17.828566	\N	\N	\N	\N	activ__resume_1718192417.pdf	\N	\N	\N
932	Nantenaina Narasy	\N	\N	nantenainanjarasoa@gmail.com	101 242 186 232	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:18.136066	2024-06-12 11:40:18.136066	\N	\N	\N	\N	activ__resume_1718192418.pdf	\N	\N	\N
933	Rinah Constance	\N	\N	rinah4nome@gmail.com	0345562349	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:18.488959	2024-06-12 11:40:18.488959	\N	\N	\N	\N	activ__resume_1718192418.pdf	\N	\N	\N
934	Davida Robinson	\N	\N	\N	101 221 124 225	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:18.80651	2024-06-12 11:40:18.80651	\N	\N	\N	\N	activ__resume_1718192418.pdf	\N	\N	\N
935	Travailleur Social	\N	\N	nfabioly@gmail.com	2017-2018	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:19.130974	2024-06-12 11:40:19.130974	\N	\N	\N	\N	activ__resume_1718192419.pdf	\N	\N	\N
936	Ambohidrapeto Itaosy	\N	\N	brandon.rakotomanga@gmail.com	038 47 339 41	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:19.828679	2024-06-12 11:40:19.828679	\N	\N	\N	\N	activ__resume_1718192419.pdf	\N	\N	\N
937	Miorasoa Gladys	\N	\N	miorafenoo@yahoo.com	101 252 181 276	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:20.148986	2024-06-12 11:40:20.148986	\N	\N	\N	\N	activ__resume_1718192420.pdf	\N	\N	\N
938	Ankadilalampotsy Ankaraobato	\N	\N	genevieve.randy@gmail.com	\n034 63 683 01	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:20.564671	2024-06-12 11:40:20.564671	\N	\N	\N	\N	activ__resume_1718192420.pdf	\N	\N	\N
939	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:20.767406	2024-06-12 11:40:20.767406	\N	\N	\N	\N	activ__resume_1718192420.pdf	\N	\N	\N
940	Social Key	\N	\N	mrahariliarivazo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:21.293471	2024-06-12 11:40:21.293471	\N	\N	\N	\N	activ__resume_1718192421.pdf	\N	\N	\N
941	Bis Ivandry	\N	\N	fabien.leong.5@gmail.com	\n  034 43	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:21.702978	2024-06-12 11:40:21.702978	\N	\N	\N	\N	activ__resume_1718192421.pdf	\N	\N	\N
942	Accueil Triage	\N	\N	hardyalbanie@gmail.com	261345165184	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:22.175403	2024-06-12 11:40:22.175403	\N	\N	\N	\N	activ__resume_1718192422.pdf	\N	\N	\N
943	Felaniaina Jessica	\N	\N	razanamalalajessica.1999@gmail.com	2693438965	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:22.582969	2024-06-12 11:40:22.582969	\N	\N	\N	\N	activ__resume_1718192422.pdf	\N	\N	\N
944	Felana Cynthia	\N	\N	CynthiaRakoto88@gmail.com	0382990508	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:22.992444	2024-06-12 11:40:22.992444	\N	\N	\N	\N	activ__resume_1718192422.pdf	\N	\N	\N
945	Charlino Edwino	\N	\N	rcharlinoedwino@gmail.com	\n 032 22	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:23.342645	2024-06-12 11:40:23.342645	\N	\N	\N	\N	activ__resume_1718192423.pdf	\N	\N	\N
946	Assistant Comptable	\N	\N	\N	0346312177	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:23.991697	2024-06-12 11:40:23.991697	\N	\N	\N	\N	activ__resume_1718192423.pdf	\N	\N	\N
947	Situation Familiale	\N	\N	\N	0322156272	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:24.438828	2024-06-12 11:40:24.438828	\N	\N	\N	\N	activ__resume_1718192424.pdf	\N	\N	\N
948	Anosivavaka Ambohimanarina	\N	\N	\N	0349277092	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:24.813454	2024-06-12 11:40:24.813454	\N	\N	\N	\N	activ__resume_1718192424.pdf	\N	\N	\N
949	Responable Administratifs	\N	\N	Sitrakateby45@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:25.240208	2024-06-12 11:40:25.240208	\N	\N	\N	\N	activ__resume_1718192425.pdf	\N	\N	\N
950	Liantsoa Tahiana	\N	\N	tahianandrianisa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:25.711755	2024-06-12 11:40:25.711755	\N	\N	\N	\N	activ__resume_1718192425.pdf	\N	\N	\N
951	Ampandrana Est	\N	\N	andriniainaonintsoa73@gmail.com	  034 88	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:26.106456	2024-06-12 11:40:26.106456	\N	\N	\N	\N	activ__resume_1718192426.pdf	\N	\N	\N
952	Journaliste Reporter	\N	\N	Fab.invictus@gmail.com	261332041441	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:26.553421	2024-06-12 11:40:26.553421	\N	\N	\N	\N	activ__resume_1718192426.pdf	\N	\N	\N
953	Heriniaina Anthony	\N	\N	\N	\n 032 71	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:27.107002	2024-06-12 11:40:27.107002	\N	\N	\N	\N	activ__resume_1718192427.pdf	\N	\N	\N
954	Mendrikaja Nirina	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:27.437583	2024-06-12 11:40:27.437583	\N	\N	\N	\N	activ__resume_1718192427.pdf	\N	\N	\N
955	Hariniaina Ony	\N	\N	onyh.andrianirina@gmail.com	034 48 232 97	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:27.992984	2024-06-12 11:40:27.992984	\N	\N	\N	\N	activ__resume_1718192427.pdf	\N	\N	\N
956	Manantsoa Arimamy	\N	\N	3manantsoa.a3@gmail.com	034 12 153 61	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:28.509095	2024-06-12 11:40:28.509095	\N	\N	\N	\N	activ__resume_1718192428.pdf	\N	\N	\N
957	Public Ivato	\N	\N	sm.nirina1987@gmail.com	032 80 283 00	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:28.906647	2024-06-12 11:40:28.906647	\N	\N	\N	\N	activ__resume_1718192428.pdf	\N	\N	\N
958	Abraham Emile	\N	\N	Stalinemile@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:29.495812	2024-06-12 11:40:29.495812	\N	\N	\N	\N	activ__resume_1718192429.pdf	\N	\N	\N
959	Mme Tinah	\N	\N	\N	261346199601	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:29.773447	2024-06-12 11:40:29.773447	\N	\N	\N	\N	activ__resume_1718192429.pdf	\N	\N	\N
960	Digital Marketing	\N	\N	mahefatianaherizo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:30.280506	2024-06-12 11:40:30.280506	\N	\N	\N	\N	activ__resume_1718192430.pdf	\N	\N	\N
961	Restaurant Majunga	\N	\N	rlyno24@gmail.com	 2021-19	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:30.663887	2024-06-12 11:40:30.663887	\N	\N	\N	\N	activ__resume_1718192430.pdf	\N	\N	\N
962	Aceem Ivato	\N	\N	andoniaina1912@gmail.com	0348993546	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:30.89275	2024-06-12 11:40:30.89275	\N	\N	\N	\N	activ__resume_1718192430.pdf	\N	\N	\N
963	Indrainialisoa Noroariliva	\N	\N	randriariliva@gmail.com	261342291249	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:31.880625	2024-06-12 11:40:31.880625	\N	\N	\N	\N	activ__resume_1718192431.pdf	\N	\N	\N
964	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:32.130394	2024-06-12 11:40:32.130394	\N	\N	\N	\N	activ__resume_1718192432.pdf	\N	\N	\N
965	Tahinarison Nancye	\N	\N	tahandria26@gmail.com	034 94 832 58	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:32.526955	2024-06-12 11:40:32.526955	\N	\N	\N	\N	activ__resume_1718192432.pdf	\N	\N	\N
966	Mamelantsoa Diariniaina	\N	\N	\N	2014-2019	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:33.549428	2024-06-12 11:40:33.549428	\N	\N	\N	\N	activ__resume_1718192433.pdf	\N	\N	\N
967	Conseiller Client	\N	\N	mihajat03@gmail.com	261340825027	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:34.037878	2024-06-12 11:40:34.037878	\N	\N	\N	\N	activ__resume_1718192434.pdf	\N	\N	\N
968	Hasindradahy Miora	\N	\N	ramanantsoa.mioranyainah@gmail.com	032 24 905 88	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:34.387515	2024-06-12 11:40:34.387515	\N	\N	\N	\N	activ__resume_1718192434.pdf	\N	\N	\N
969	Ambavahaditokana Itaosy	\N	\N	priscarasolonirina13@gmail.com	  0341290098	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:34.811836	2024-06-12 11:40:34.811836	\N	\N	\N	\N	activ__resume_1718192434.pdf	\N	\N	\N
970	Anjara Antonio	\N	\N	anjaramamiherisoa@gmail.com	034 29 488 94	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:35.121004	2024-06-12 11:40:35.121004	\N	\N	\N	\N	activ__resume_1718192435.pdf	\N	\N	\N
971	Mihajatiana Manoa	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:35.661786	2024-06-12 11:40:35.661786	\N	\N	\N	\N	activ__resume_1718192435.pdf	\N	\N	\N
972	Marie Annick	\N	\N	annickrakotoson556@gmail.com	034 59 374 97	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:36.027116	2024-06-12 11:40:36.027116	\N	\N	\N	\N	activ__resume_1718192436.pdf	\N	\N	\N
973	Hantavolahavana Fanilo	\N	\N	faniloh.razafimahaleo@gmail.com	032 85 322 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:36.46042	2024-06-12 11:40:36.46042	\N	\N	\N	\N	activ__resume_1718192436.pdf	\N	\N	\N
974	Andrianaivo Rasandy	\N	\N	moralesfrancky4@gmail.com	0384017692	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:36.82795	2024-06-12 11:40:36.82795	\N	\N	\N	\N	activ__resume_1718192436.pdf	\N	\N	\N
975	Antananarivo Madagascar	\N	\N	arielrakotomalala4@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:37.167775	2024-06-12 11:40:37.167775	\N	\N	\N	\N	activ__resume_1718192437.pdf	\N	\N	\N
976	Inconnu	\N	\N	rafarasoaelisa@yahoo.com	2009-2010	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:37.483093	2024-06-12 11:40:37.483093	\N	\N	\N	\N	activ__resume_1718192437.pdf	\N	\N	\N
977	Morafeno Tamatave	\N	\N	tahianamirana0@gmail.com	301 072 041 210	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:37.87451	2024-06-12 11:40:37.87451	\N	\N	\N	\N	activ__resume_1718192437.pdf	\N	\N	\N
978	Tsitohaina Sergio	\N	\N	segiorazafindralambo97@gmail.com	032 79 211 68	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:38.248336	2024-06-12 11:40:38.248336	\N	\N	\N	\N	activ__resume_1718192438.pdf	\N	\N	\N
979	Serge Tinasoa	\N	\N	\N	0349950450	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:38.559115	2024-06-12 11:40:38.559115	\N	\N	\N	\N	activ__resume_1718192438.pdf	\N	\N	\N
980	Mention Bien	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:39.041351	2024-06-12 11:40:39.041351	\N	\N	\N	\N	activ__resume_1718192439.pdf	\N	\N	\N
981	Inconnu	\N	\N	\N	032 97 222 87	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:39.480345	2024-06-12 11:40:39.480345	\N	\N	\N	\N	activ__resume_1718192439.pdf	\N	\N	\N
982	Miarantsoa Olihaingo	\N	\N	OlyhaingoRakotoson@gmail.com	2020-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:40.092799	2024-06-12 11:40:40.092799	\N	\N	\N	\N	activ__resume_1718192440.pdf	\N	\N	\N
983	Assistante Comptable	\N	\N	\N	032 88 643 41	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:40.49201	2024-06-12 11:40:40.49201	\N	\N	\N	\N	activ__resume_1718192440.pdf	\N	\N	\N
984	Ter Angarangarana	\N	\N	herizo523@gmail.com	034 38 611 75	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:40.972853	2024-06-12 11:40:40.972853	\N	\N	\N	\N	activ__resume_1718192440.pdf	\N	\N	\N
985	Ressources Humaines	\N	\N	harinicole@yahoo.fr	034 24 888 11	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:41.622029	2024-06-12 11:40:41.622029	\N	\N	\N	\N	activ__resume_1718192441.pdf	\N	\N	\N
986	Coach Production	\N	\N	\N	0337032741	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:42.012159	2024-06-12 11:40:42.012159	\N	\N	\N	\N	activ__resume_1718192442.pdf	\N	\N	\N
987	Bis Anosy	\N	\N	hardyandriantsoa@gmail.com	261321877217	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:42.415197	2024-06-12 11:40:42.415197	\N	\N	\N	\N	activ__resume_1718192442.pdf	\N	\N	\N
988	Maminiaina Mariah	\N	\N	mariahpatricia21@gmail.com	101252216519	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:42.744968	2024-06-12 11:40:42.744968	\N	\N	\N	\N	activ__resume_1718192442.pdf	\N	\N	\N
989	Comdata Madagascar	\N	\N	bombercash9@gmail.com	032 45 316 17	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:42.996447	2024-06-12 11:40:42.996447	\N	\N	\N	\N	activ__resume_1718192442.pdf	\N	\N	\N
990	Cadre Financier	\N	\N	nhearsgate@gmail.com	3286 96564	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:44.386828	2024-06-12 11:40:44.386828	\N	\N	\N	\N	activ__resume_1718192444.pdf	\N	\N	\N
991	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:44.61302	2024-06-12 11:40:44.61302	\N	\N	\N	\N	activ__resume_1718192444.pdf	\N	\N	\N
992	Inconnu	\N	\N	\N	034 17 415 42	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:44.985706	2024-06-12 11:40:44.985706	\N	\N	\N	\N	activ__resume_1718192444.pdf	\N	\N	\N
993	Annick Volatiana	\N	\N	ratovomandimby@gmail.com	0344967325	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:45.367699	2024-06-12 11:40:45.367699	\N	\N	\N	\N	activ__resume_1718192445.pdf	\N	\N	\N
994	Date De	\N	\N	anjaandriatinarivo@gmail.com	  0386815003	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:45.758069	2024-06-12 11:40:45.758069	\N	\N	\N	\N	activ__resume_1718192445.pdf	\N	\N	\N
995	Depuis Mars	\N	\N	jmslfoo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:46.461334	2024-06-12 11:40:46.461334	\N	\N	\N	\N	activ__resume_1718192446.pdf	\N	\N	\N
996	Call Madagascar	\N	\N	heriniainaadoshine@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:46.913098	2024-06-12 11:40:46.913098	\N	\N	\N	\N	activ__resume_1718192446.pdf	\N	\N	\N
997	Jean Claude	\N	\N	jeanclauderakotoni@gmail.com	34 10 912 23	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:47.542311	2024-06-12 11:40:47.542311	\N	\N	\N	\N	activ__resume_1718192447.pdf	\N	\N	\N
998	Ony Nirina	\N	\N	\N	0345095734	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:47.978431	2024-06-12 11:40:47.978431	\N	\N	\N	\N	activ__resume_1718192447.pdf	\N	\N	\N
999	Front Office	\N	\N	rafanoharanahasina@gmail.com	032 73 897 53	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:48.347278	2024-06-12 11:40:48.347278	\N	\N	\N	\N	activ__resume_1718192448.pdf	\N	\N	\N
1000	Ambohimanala Andoharanofotsy	\N	\N	rabe.henin@gmail.com	\n\n034 61	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:48.698481	2024-06-12 11:40:48.698481	\N	\N	\N	\N	activ__resume_1718192448.pdf	\N	\N	\N
1001	Agence Pro	\N	\N	\N	2019-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:49.030489	2024-06-12 11:40:49.030489	\N	\N	\N	\N	activ__resume_1718192449.pdf	\N	\N	\N
1002	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:49.232471	2024-06-12 11:40:49.232471	\N	\N	\N	\N	activ__resume_1718192449.pdf	\N	\N	\N
1003	Conseiller Client	\N	\N	rabaryzanakolona@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:49.720741	2024-06-12 11:40:49.720741	\N	\N	\N	\N	activ__resume_1718192449.pdf	\N	\N	\N
1004	Anosizato Ouest	\N	\N	ericpny982@gmail.com	0341533028	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:50.140024	2024-06-12 11:40:50.140024	\N	\N	\N	\N	activ__resume_1718192450.pdf	\N	\N	\N
1005	Imanoela Esther	\N	\N	soniamuriel5@gmail.com	0380633067	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:50.467179	2024-06-12 11:40:50.467179	\N	\N	\N	\N	activ__resume_1718192450.pdf	\N	\N	\N
1006	Johary Sharel	\N	\N	sharelandriamanantena@gmail.com	034 19 029 26	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:50.747896	2024-06-12 11:40:50.747896	\N	\N	\N	\N	activ__resume_1718192450.pdf	\N	\N	\N
1007	Inconnu	\N	\N	\N	0324960865	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:51.067754	2024-06-12 11:40:51.067754	\N	\N	\N	\N	activ__resume_1718192451.pdf	\N	\N	\N
1008	Ambanilalana Itaosy	\N	\N	\N	0336762824	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:51.438824	2024-06-12 11:40:51.438824	\N	\N	\N	\N	activ__resume_1718192451.pdf	\N	\N	\N
1009	Muriel Sandrine	\N	\N	murisan33@gmail.com	034 10 491 16	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:51.773574	2024-06-12 11:40:51.773574	\N	\N	\N	\N	activ__resume_1718192451.pdf	\N	\N	\N
1010	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:51.969739	2024-06-12 11:40:51.969739	\N	\N	\N	\N	activ__resume_1718192451.pdf	\N	\N	\N
1011	Virtual Assistant	\N	\N	kati.assistancevirtuelle@gmail.com	261 33	\N	Inconnue	\N	https://www.linkedin.com/in/kati-	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:52.583511	2024-06-12 11:40:52.583511	\N	\N	\N	\N	activ__resume_1718192452.pdf	\N	\N	\N
1012	Rojo Fitiavana	\N	\N	fifyandria626@gmail.com	034 43 026 44	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:52.976622	2024-06-12 11:40:52.976622	\N	\N	\N	\N	activ__resume_1718192452.pdf	\N	\N	\N
1013	Traditionnelle Chinoise	\N	\N	jangatsiverizo@gmail.com	0347533916	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:53.36558	2024-06-12 11:40:53.36558	\N	\N	\N	\N	activ__resume_1718192453.pdf	\N	\N	\N
1014	Galaxy Andraharo	\N	\N	tinahrafanambinantsoa@gmail.com	\n0340937302	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:53.918153	2024-06-12 11:40:53.918153	\N	\N	\N	\N	activ__resume_1718192453.pdf	\N	\N	\N
1015	Hasimbola Nomenjanahary	\N	\N	momousyh@gmail.com	261331497881	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:54.321875	2024-06-12 11:40:54.321875	\N	\N	\N	\N	activ__resume_1718192454.pdf	\N	\N	\N
1016	Antananarivo Madagascar	\N	\N	andrianina86@gmail.com	034 74 420 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:54.876095	2024-06-12 11:40:54.876095	\N	\N	\N	\N	activ__resume_1718192454.pdf	\N	\N	\N
1017	Etude Para	\N	\N	gehjaniaina@gmail.com	322994531	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:55.582058	2024-06-12 11:40:55.582058	\N	\N	\N	\N	activ__resume_1718192455.pdf	\N	\N	\N
1018	Saint Louis	\N	\N	idahrandriantahina@gmail.com	038 13 624 11	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:55.964083	2024-06-12 11:40:55.964083	\N	\N	\N	\N	activ__resume_1718192455.pdf	\N	\N	\N
1019	Lanto Maherisoa	\N	\N	andriamarosandyhanitriniavo@gmail.com	034 68 703 02	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:56.350513	2024-06-12 11:40:56.350513	\N	\N	\N	\N	activ__resume_1718192456.pdf	\N	\N	\N
1020	Anatihazo Isotry	\N	\N	arisonmamisoajohanna65@gmail.com	0338005838	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:56.756632	2024-06-12 11:40:56.756632	\N	\N	\N	\N	activ__resume_1718192456.pdf	\N	\N	\N
1021	Pomme Ambatonakanga	\N	\N	\N	\n\n032 69	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:57.035123	2024-06-12 11:40:57.035123	\N	\N	\N	\N	activ__resume_1718192457.pdf	\N	\N	\N
1022	Iharimahefa Itokiana	\N	\N	m.itokiana.ra@gmail.com	034 72 494 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:57.682437	2024-06-12 11:40:57.682437	\N	\N	\N	\N	activ__resume_1718192457.pdf	\N	\N	\N
1023	Financial Legarec	\N	\N	alicelivanina@gmail.com	032 86 443 53	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:58.158619	2024-06-12 11:40:58.158619	\N	\N	\N	\N	activ__resume_1718192458.pdf	\N	\N	\N
1024	Inconnu	\N	\N	lovatianaranaivoson0@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:58.503201	2024-06-12 11:40:58.503201	\N	\N	\N	\N	activ__resume_1718192458.pdf	\N	\N	\N
1025	Tojoniaina Marc	\N	\N	randrianarisontm@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:58.845968	2024-06-12 11:40:58.845968	\N	\N	\N	\N	activ__resume_1718192458.pdf	\N	\N	\N
1026	Antananarivo Ankadindramamy	\N	\N	lovadonnah@gmail.com	038 80 687 00	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:40:59.305539	2024-06-12 11:40:59.305539	\N	\N	\N	\N	activ__resume_1718192459.pdf	\N	\N	\N
1027	Bis Andohaniato	\N	\N	razafimaherylahinirina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:40:59.66955	2024-06-12 11:40:59.66955	\N	\N	\N	\N	activ__resume_1718192459.pdf	\N	\N	\N
1028	Marie Stopes	\N	\N	abigaellerabes@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:00.000501	2024-06-12 11:41:00.000501	\N	\N	\N	\N	activ__resume_1718192460.pdf	\N	\N	\N
1029	Dimbisoa Malala	\N	\N	dbsmalala@gmail.com	032 46 235 16	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:00.295939	2024-06-12 11:41:00.295939	\N	\N	\N	\N	activ__resume_1718192460.pdf	\N	\N	\N
1030	Safidiniaina Rommy	\N	\N	\N	032 22 504 80	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:00.731723	2024-06-12 11:41:00.731723	\N	\N	\N	\N	activ__resume_1718192460.pdf	\N	\N	\N
1031	Cynthia Wilson	\N	\N	mendrikarijaona7@gmail.com	034 09 236 03	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:01.341205	2024-06-12 11:41:01.341205	\N	\N	\N	\N	activ__resume_1718192461.pdf	\N	\N	\N
1032	Randriamananjara Mialihanta	\N	\N	mialihantarandria@gmail.com	0340895309	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:01.619478	2024-06-12 11:41:01.619478	\N	\N	\N	\N	activ__resume_1718192461.pdf	\N	\N	\N
1033	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:01.843056	2024-06-12 11:41:01.843056	\N	\N	\N	\N	activ__resume_1718192461.pdf	\N	\N	\N
1034	Inconnu	\N	\N	rindra.ralambonavalona@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:02.247078	2024-06-12 11:41:02.247078	\N	\N	\N	\N	activ__resume_1718192462.pdf	\N	\N	\N
1035	Disponible Maintenant	\N	\N	onsmih@gmail.com	261 346 252 267	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:02.685446	2024-06-12 11:41:02.685446	\N	\N	\N	\N	activ__resume_1718192462.pdf	\N	\N	\N
1036	My Com	\N	\N	diamondramisariaka@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:03.045484	2024-06-12 11:41:03.045484	\N	\N	\N	\N	activ__resume_1718192463.pdf	\N	\N	\N
1037	Ny Hasina	\N	\N	\N	0342965725	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:03.389732	2024-06-12 11:41:03.389732	\N	\N	\N	\N	activ__resume_1718192463.pdf	\N	\N	\N
1038	Rondro Nadiah	\N	\N	rondronadiah@gmail.com	\n 034 12	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:03.786465	2024-06-12 11:41:03.786465	\N	\N	\N	\N	activ__resume_1718192463.pdf	\N	\N	\N
1039	Itaosy Lot	\N	\N	thierry.tovonanahary@gmail.com	2015-2016	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:04.293585	2024-06-12 11:41:04.293585	\N	\N	\N	\N	activ__resume_1718192464.pdf	\N	\N	\N
1040	Assistante Technique	\N	\N	njarasoa204@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:04.656784	2024-06-12 11:41:04.656784	\N	\N	\N	\N	activ__resume_1718192464.pdf	\N	\N	\N
1041	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:04.888139	2024-06-12 11:41:04.888139	\N	\N	\N	\N	activ__resume_1718192464.pdf	\N	\N	\N
1042	Autisme Madagascar	\N	\N	soloforan89@gmail.com	261346238085	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:05.606799	2024-06-12 11:41:05.606799	\N	\N	\N	\N	activ__resume_1718192465.pdf	\N	\N	\N
1043	Fanja Nomena	\N	\N	\N	 102\n\n034 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:05.952186	2024-06-12 11:41:05.952186	\N	\N	\N	\N	activ__resume_1718192465.pdf	\N	\N	\N
1044	Jean Hilarion	\N	\N	hilarionrml@gmail.com	034 95 288 60	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:06.322746	2024-06-12 11:41:06.322746	\N	\N	\N	\N	activ__resume_1718192466.pdf	\N	\N	\N
1045	Langue Communication	\N	\N	dolynaandrianiaina@gmail.com	0326768009	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:06.606434	2024-06-12 11:41:06.606434	\N	\N	\N	\N	activ__resume_1718192466.pdf	\N	\N	\N
1046	Curriculum Vitae	\N	\N	manourakotoarivao@gmail.com	033 24 005 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:07.05387	2024-06-12 11:41:07.05387	\N	\N	\N	\N	activ__resume_1718192467.pdf	\N	\N	\N
1047	David Jones	\N	\N	mialyalinoro@gmail.com	261 38	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:07.496298	2024-06-12 11:41:07.496298	\N	\N	\N	\N	activ__resume_1718192467.pdf	\N	\N	\N
1048	Arikanto Miatatiana	\N	\N	\N	\n\n\n034 60	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:08.470096	2024-06-12 11:41:08.470096	\N	\N	\N	\N	activ__resume_1718192468.pdf	\N	\N	\N
1049	Ny Andry	\N	\N	leonieramilinjatovo@gmail.com	261332065565	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:08.796972	2024-06-12 11:41:08.796972	\N	\N	\N	\N	activ__resume_1718192468.pdf	\N	\N	\N
1050	Don Siriphile	\N	\N	larmalzaisteff@gmail.com	034 82 453 42	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:09.522123	2024-06-12 11:41:09.522123	\N	\N	\N	\N	activ__resume_1718192469.pdf	\N	\N	\N
1051	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:09.730624	2024-06-12 11:41:09.730624	\N	\N	\N	\N	activ__resume_1718192469.pdf	\N	\N	\N
1052	Miarifitia Zonekena	\N	\N	nekk0806@gmail.com	\n\n032 58	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:09.997034	2024-06-12 11:41:09.997034	\N	\N	\N	\N	activ__resume_1718192469.pdf	\N	\N	\N
1053	Suzette Razafindrasoa	\N	\N	suzettekalose@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:10.2706	2024-06-12 11:41:10.2706	\N	\N	\N	\N	activ__resume_1718192470.pdf	\N	\N	\N
1054	Inconnu	\N	\N	ratovonjanaharyfanambinantsoa@yahoo.fr	032 62	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:10.545129	2024-06-12 11:41:10.545129	\N	\N	\N	\N	activ__resume_1718192470.pdf	\N	\N	\N
1055	Directeur Administratif	\N	\N	ss.totalmazavaloha@gmail.com	261380583187	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:11.38302	2024-06-12 11:41:11.38302	\N	\N	\N	\N	activ__resume_1718192471.pdf	\N	\N	\N
1056	Johane Richie	\N	\N	\N	\n034 58 066 01	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:12.031529	2024-06-12 11:41:12.031529	\N	\N	\N	\N	activ__resume_1718192472.pdf	\N	\N	\N
1057	Antanetibe Ilafy	\N	\N	zoarihasinarakotoarivony@gmail.com	034 84 589 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:12.804387	2024-06-12 11:41:12.804387	\N	\N	\N	\N	activ__resume_1718192472.pdf	\N	\N	\N
1058	Randriamananjara Mialihanta	\N	\N	mialihantarandria@gmail.com	0340895309	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:13.077838	2024-06-12 11:41:13.077838	\N	\N	\N	\N	activ__resume_1718192473.pdf	\N	\N	\N
1059	Inconnu	\N	\N	randrianarison.nlmj@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:13.489504	2024-06-12 11:41:13.489504	\N	\N	\N	\N	activ__resume_1718192473.pdf	\N	\N	\N
1060	Appel Sortant	\N	\N	Cecileniaina@gmail.com	0321544467	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:13.830621	2024-06-12 11:41:13.830621	\N	\N	\N	\N	activ__resume_1718192473.pdf	\N	\N	\N
1061	Nirina Niaina	\N	\N	rakotonarivom32@gmail.com	\n0383189563	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:14.187251	2024-06-12 11:41:14.187251	\N	\N	\N	\N	activ__resume_1718192474.pdf	\N	\N	\N
1062	Anatihazo Isotry	\N	\N	rina.razafindrakoto@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:14.76188	2024-06-12 11:41:14.76188	\N	\N	\N	\N	activ__resume_1718192474.pdf	\N	\N	\N
1063	Nirina Patricia	\N	\N	rnirinapatricia28@gmail.com	034 39 279 81	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:15.148396	2024-06-12 11:41:15.148396	\N	\N	\N	\N	activ__resume_1718192475.pdf	\N	\N	\N
1064	St Jean	\N	\N	\N	261342723979	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:15.463239	2024-06-12 11:41:15.463239	\N	\N	\N	\N	activ__resume_1718192475.pdf	\N	\N	\N
1065	Groupe Scolaire	\N	\N	housnatim39@gmail.com	0345883945	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:15.771168	2024-06-12 11:41:15.771168	\N	\N	\N	\N	activ__resume_1718192475.pdf	\N	\N	\N
1066	Area Andohatapenaka	\N	\N	\N	\n034 67 966 87	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:16.564463	2024-06-12 11:41:16.564463	\N	\N	\N	\N	activ__resume_1718192476.pdf	\N	\N	\N
1067	Elyah Tefiniaina	\N	\N	tefi.elyah@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:16.984365	2024-06-12 11:41:16.984365	\N	\N	\N	\N	activ__resume_1718192476.pdf	\N	\N	\N
1068	Galaxy Andraharo	\N	\N	tinahrafanambinantsoa@gmail.com	\n0340937302	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:17.375523	2024-06-12 11:41:17.375523	\N	\N	\N	\N	activ__resume_1718192477.pdf	\N	\N	\N
1069	Pati Menica	\N	\N	patimenica2@gmail.com	0343855722	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:17.652935	2024-06-12 11:41:17.652935	\N	\N	\N	\N	activ__resume_1718192477.pdf	\N	\N	\N
1070	Votre Assistante	\N	\N	tolotramailpro@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:18.419519	2024-06-12 11:41:18.419519	\N	\N	\N	\N	activ__resume_1718192478.pdf	\N	\N	\N
1071	Solonirina Tahina	\N	\N	\N	\n032 80 285 17	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:18.685011	2024-06-12 11:41:18.685011	\N	\N	\N	\N	activ__resume_1718192478.pdf	\N	\N	\N
1072	Tokiniaina Roger	\N	\N	rambotiana@gmail.com	034 38 073 56	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:18.983745	2024-06-12 11:41:18.983745	\N	\N	\N	\N	activ__resume_1718192478.pdf	\N	\N	\N
1073	Mialy Nirina	\N	\N	Miahsoleil@gmail.com	034 40 186 62	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:19.273107	2024-06-12 11:41:19.273107	\N	\N	\N	\N	activ__resume_1718192479.pdf	\N	\N	\N
1074	Madame Bodo	\N	\N	\N	034 27 444 17	\N	449	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:19.80573	2024-06-12 11:41:19.80573	\N	\N	\N	\N	activ__resume_1718192479.pdf	\N	\N	\N
1075	Jean Marc	\N	\N	\N	034 55 928 45	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:20.145066	2024-06-12 11:41:20.145066	\N	\N	\N	\N	activ__resume_1718192480.pdf	\N	\N	\N
1076	Fara Razafindrabe	\N	\N	fmamonjiariseheno@gmail.com	034 18 764 47	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:20.866578	2024-06-12 11:41:20.866578	\N	\N	\N	\N	activ__resume_1718192480.pdf	\N	\N	\N
1077	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:21.081605	2024-06-12 11:41:21.081605	\N	\N	\N	\N	activ__resume_1718192481.pdf	\N	\N	\N
1078	Anosizato Ouest	\N	\N	ericpny982@gmail.com	0341533028	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:21.466524	2024-06-12 11:41:21.466524	\N	\N	\N	\N	activ__resume_1718192481.pdf	\N	\N	\N
1079	Maya Asmina	\N	\N	mayarobinson000@gmail.com	261328799841	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:21.844716	2024-06-12 11:41:21.844716	\N	\N	\N	\N	activ__resume_1718192481.pdf	\N	\N	\N
1080	Behoririka Ankaditapaka	\N	\N	ralambosonlaetitia@gmail.com	2001-2002	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:22.0969	2024-06-12 11:41:22.0969	\N	\N	\N	\N	activ__resume_1718192482.pdf	\N	\N	\N
1081	Situation Familiale	\N	\N	\N	0322156272	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:22.350043	2024-06-12 11:41:22.350043	\N	\N	\N	\N	activ__resume_1718192482.pdf	\N	\N	\N
1082	Lova Niaina	\N	\N	rjmlova@gmail.com	101 211 218 704	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:22.64299	2024-06-12 11:41:22.64299	\N	\N	\N	\N	activ__resume_1718192482.pdf	\N	\N	\N
1083	Science Technique	\N	\N	tiana00995@gmail.com	 2012-2014	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:23.129724	2024-06-12 11:41:23.129724	\N	\N	\N	\N	activ__resume_1718192483.pdf	\N	\N	\N
1084	Alarobia Amboanjobe	\N	\N	randria.thierry@gmail.com	034 58 530 21	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:23.741229	2024-06-12 11:41:23.741229	\N	\N	\N	\N	activ__resume_1718192483.pdf	\N	\N	\N
1085	Ambohimanarina Antananarivo	\N	\N	\N	033 03 730 62	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:24.251345	2024-06-12 11:41:24.251345	\N	\N	\N	\N	activ__resume_1718192484.pdf	\N	\N	\N
1086	Ambatofotsy Gare	\N	\N	tiahstephanie@gmail.com	032 81 092 11	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:24.654042	2024-06-12 11:41:24.654042	\N	\N	\N	\N	activ__resume_1718192484.pdf	\N	\N	\N
1087	Randreth Sabrina	\N	\N	randrethsabrina@gmail.com	032 62 785 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:25.029705	2024-06-12 11:41:25.029705	\N	\N	\N	\N	activ__resume_1718192485.pdf	\N	\N	\N
1088	Emilson Xavier	\N	\N	ranaivo.xav@gmail.com	034 56 684 67	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:25.504165	2024-06-12 11:41:25.504165	\N	\N	\N	\N	activ__resume_1718192485.pdf	\N	\N	\N
1089	Inconnu	\N	\N	mma06y@ma.om	3413275	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:26.019156	2024-06-12 11:41:26.019156	\N	\N	\N	\N	activ__resume_1718192486.pdf	\N	\N	\N
1090	Inconnu	\N	\N	sophie.andriamanandaza@gmail.com	2021-2022	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:26.31135	2024-06-12 11:41:26.31135	\N	\N	\N	\N	activ__resume_1718192486.pdf	\N	\N	\N
1091	Bloc Rose	\N	\N	mamibrinda99@gmail.com	261380518040	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:26.570427	2024-06-12 11:41:26.570427	\N	\N	\N	\N	activ__resume_1718192486.pdf	\N	\N	\N
1092	Xavier Antanimena	\N	\N	harryron97@gmail.com	261345181397	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:26.811348	2024-06-12 11:41:26.811348	\N	\N	\N	\N	activ__resume_1718192486.pdf	\N	\N	\N
1093	Lot Ivn	\N	\N	Tiandraycedric@gmail.com	034 26 075 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:27.08532	2024-06-12 11:41:27.08532	\N	\N	\N	\N	activ__resume_1718192487.pdf	\N	\N	\N
1094	Campagne Carventura	\N	\N	mirapriscaraz@hotmail.com	34 84 497 47	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:27.573892	2024-06-12 11:41:27.573892	\N	\N	\N	\N	activ__resume_1718192487.pdf	\N	\N	\N
1095	Benja Philippe	\N	\N	lionbenja@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:28.297923	2024-06-12 11:41:28.297923	\N	\N	\N	\N	activ__resume_1718192488.pdf	\N	\N	\N
1096	Harson Fitahiana	\N	\N	firavelomanantsoa@gmail.com	034 33 050 47	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:28.781205	2024-06-12 11:41:28.781205	\N	\N	\N	\N	activ__resume_1718192488.pdf	\N	\N	\N
1097	Ravaka Kantoniaina	\N	\N	Kantoniainaravaka00@gmail.com	034 31 758 27	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:29.17616	2024-06-12 11:41:29.17616	\N	\N	\N	\N	activ__resume_1718192489.pdf	\N	\N	\N
1098	Lucia Rasoamananjara	\N	\N	yisraelsarah740@gmail.com	0388597471	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:29.39391	2024-06-12 11:41:29.39391	\N	\N	\N	\N	activ__resume_1718192489.pdf	\N	\N	\N
1099	Jean Marc	\N	\N	\N	034 55 928 45	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:29.710479	2024-06-12 11:41:29.710479	\N	\N	\N	\N	activ__resume_1718192489.pdf	\N	\N	\N
1100	Inconnu	\N	\N	vololoniaina.r@yahoo.com	 2008-2010	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:30.018771	2024-06-12 11:41:30.018771	\N	\N	\N	\N	activ__resume_1718192490.pdf	\N	\N	\N
1101	Johane Richie	\N	\N	\N	\n034 58 066 01	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:30.698475	2024-06-12 11:41:30.698475	\N	\N	\N	\N	activ__resume_1718192490.pdf	\N	\N	\N
1102	Vivetic Madagascar	\N	\N	zandryniaina@yahoo.fr	261343679475	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:30.997683	2024-06-12 11:41:30.997683	\N	\N	\N	\N	activ__resume_1718192490.pdf	\N	\N	\N
1103	Ter Androndra	\N	\N	mamialihaja@gmail.com	2020-01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:31.30271	2024-06-12 11:41:31.30271	\N	\N	\N	\N	activ__resume_1718192491.pdf	\N	\N	\N
1104	Start In	\N	\N	tchristelsoraya@gmail.com	034 20 368 94	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:31.795395	2024-06-12 11:41:31.795395	\N	\N	\N	\N	activ__resume_1718192491.pdf	\N	\N	\N
1105	Jean Christian	\N	\N	andryantsoa2@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:32.175159	2024-06-12 11:41:32.175159	\N	\N	\N	\N	activ__resume_1718192492.pdf	\N	\N	\N
1106	Community Managment	\N	\N	tkjtoavina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:32.505554	2024-06-12 11:41:32.505554	\N	\N	\N	\N	activ__resume_1718192492.pdf	\N	\N	\N
1107	Ialiravaka Sariaka	\N	\N	Rabeharitsoa@gmail.com	0380526739	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:32.802502	2024-06-12 11:41:32.802502	\N	\N	\N	\N	activ__resume_1718192492.pdf	\N	\N	\N
1108	Toky Lalaina	\N	\N	tokylalainar1@gmail.com	033 46 413 48	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:33.083853	2024-06-12 11:41:33.083853	\N	\N	\N	\N	activ__resume_1718192493.pdf	\N	\N	\N
1109	Fanomezantsoa Florette	\N	\N	Fnoumezantsoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:33.443377	2024-06-12 11:41:33.443377	\N	\N	\N	\N	activ__resume_1718192493.pdf	\N	\N	\N
1110	Anja Ny	\N	\N	\N	103012006431	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:33.743564	2024-06-12 11:41:33.743564	\N	\N	\N	\N	activ__resume_1718192493.pdf	\N	\N	\N
1111	Marketing Digital	\N	\N	aly.wdta@gmail.com	2011-2013	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:34.245325	2024-06-12 11:41:34.245325	\N	\N	\N	\N	activ__resume_1718192494.pdf	\N	\N	\N
1112	Tahina Marinah	\N	\N	\N	034 33 089 23	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:34.604419	2024-06-12 11:41:34.604419	\N	\N	\N	\N	activ__resume_1718192494.pdf	\N	\N	\N
1113	Malala Harisoa	\N	\N	kelly10.harys@gmail.com	\n034 99 101 99	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:34.971475	2024-06-12 11:41:34.971475	\N	\N	\N	\N	activ__resume_1718192494.pdf	\N	\N	\N
1114	Inconnu	\N	\N	\N	\n0344663364	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:35.257791	2024-06-12 11:41:35.257791	\N	\N	\N	\N	activ__resume_1718192495.pdf	\N	\N	\N
1115	Orange Commercial	\N	\N	nirinarakotovao08@gmai.com	\n\n0349979484	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:35.581795	2024-06-12 11:41:35.581795	\N	\N	\N	\N	activ__resume_1718192495.pdf	\N	\N	\N
1116	Inconnu	\N	\N	hlandriamahandrinarivo@gmail.com	-2015-2020	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:36.004284	2024-06-12 11:41:36.004284	\N	\N	\N	\N	activ__resume_1718192496.pdf	\N	\N	\N
1117	Tantely Fitia	\N	\N	fitiarakoto969@gmail.com	261344043243	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:36.444634	2024-06-12 11:41:36.444634	\N	\N	\N	\N	activ__resume_1718192496.pdf	\N	\N	\N
1118	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:36.642278	2024-06-12 11:41:36.642278	\N	\N	\N	\N	activ__resume_1718192496.pdf	\N	\N	\N
1119	Eva Manantenasoa	\N	\N	evamyriame@gmail.com	2019-2020	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:37.631538	2024-06-12 11:41:37.631538	\N	\N	\N	\N	activ__resume_1718192497.pdf	\N	\N	\N
1120	Inconnu	\N	\N	hlandriamahandrinarivo@gmail.com	-2015-2020	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:38.121749	2024-06-12 11:41:38.121749	\N	\N	\N	\N	activ__resume_1718192498.pdf	\N	\N	\N
1121	Rotsinirina Valisoa	\N	\N	rootsramarolahy777@gmail.co	033 37 479 63	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:38.359178	2024-06-12 11:41:38.359178	\N	\N	\N	\N	activ__resume_1718192498.pdf	\N	\N	\N
1122	Najaina Fanamperana	\N	\N	najaina11@gmail.com	038 11 482 81	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:38.776794	2024-06-12 11:41:38.776794	\N	\N	\N	\N	activ__resume_1718192498.pdf	\N	\N	\N
1123	Univers Informatique	\N	\N	OLIARNUSCA@GMAIL.COM	032 57 139 72	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:39.075157	2024-06-12 11:41:39.075157	\N	\N	\N	\N	activ__resume_1718192499.pdf	\N	\N	\N
1124	Mialinirina Henintsoa	\N	\N	mramiliarihaingo@gmail.com	034 78 113 43	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:39.333562	2024-06-12 11:41:39.333562	\N	\N	\N	\N	activ__resume_1718192499.pdf	\N	\N	\N
1125	Herizo Orlando	\N	\N	ramilisonorlando@gmail.com	2014-2018	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:39.645477	2024-06-12 11:41:39.645477	\N	\N	\N	\N	activ__resume_1718192499.pdf	\N	\N	\N
1126	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:39.85774	2024-06-12 11:41:39.85774	\N	\N	\N	\N	activ__resume_1718192499.pdf	\N	\N	\N
1127	Universitaire Ankatso	\N	\N	manovosoanasolojaona@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:40.228645	2024-06-12 11:41:40.228645	\N	\N	\N	\N	activ__resume_1718192500.pdf	\N	\N	\N
1128	Antsanirina Sylvia	\N	\N	rakotondrasoasylvia@gmail.com	26134 64	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:40.673216	2024-06-12 11:41:40.673216	\N	\N	\N	\N	activ__resume_1718192500.pdf	\N	\N	\N
1129	Nomempifaliana Volatiana	\N	\N	volatianarafanomezantsoa@gmail.com	033 17 611 89	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:41.007556	2024-06-12 11:41:41.007556	\N	\N	\N	\N	activ__resume_1718192501.pdf	\N	\N	\N
1130	Option Administration	\N	\N	hobihajaandrianjato@gmail.com	032 55 06238	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:41.367298	2024-06-12 11:41:41.367298	\N	\N	\N	\N	activ__resume_1718192501.pdf	\N	\N	\N
1131	Antanetibe Ampohidrapeto	\N	\N	\N	034 12 720 05	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:41.602265	2024-06-12 11:41:41.602265	\N	\N	\N	\N	activ__resume_1718192501.pdf	\N	\N	\N
1132	Haingotiana Sabrina	\N	\N	haingotianasabr26@gmail.com	038 54 436 16	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:41.856931	2024-06-12 11:41:41.856931	\N	\N	\N	\N	activ__resume_1718192501.pdf	\N	\N	\N
1133	Ampandrana Est	\N	\N	bijmanantafike@gmail.com	032 04 941 11	\N	II T 98 Ampandrana	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:42.229458	2024-06-12 11:41:42.229458	\N	\N	\N	\N	activ__resume_1718192502.pdf	\N	\N	\N
1134	Jules Vernes	\N	\N	rajaonazionaa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:42.633922	2024-06-12 11:41:42.633922	\N	\N	\N	\N	activ__resume_1718192502.pdf	\N	\N	\N
1135	Onisoa Hasina	\N	\N	rakotonirinaonisoa2@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:42.958004	2024-06-12 11:41:42.958004	\N	\N	\N	\N	activ__resume_1718192502.pdf	\N	\N	\N
1136	Fanevasoa Jean	\N	\N	rabearivonyfaneva@gmail.com	032 66 951 86	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:43.429237	2024-06-12 11:41:43.429237	\N	\N	\N	\N	activ__resume_1718192503.pdf	\N	\N	\N
1137	Ter Antanetibe	\N	\N	Jenny19rakotoarimalala@gmail.com	2021-2022	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:43.806186	2024-06-12 11:41:43.806186	\N	\N	\N	\N	activ__resume_1718192503.pdf	\N	\N	\N
1138	Luonnel Burthon	\N	\N	luonnelburthon@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:44.228648	2024-06-12 11:41:44.228648	\N	\N	\N	\N	activ__resume_1718192504.pdf	\N	\N	\N
1139	Andriamalala Heriniaina	\N	\N	rbj.heri@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:44.869881	2024-06-12 11:41:44.869881	\N	\N	\N	\N	activ__resume_1718192504.pdf	\N	\N	\N
1140	Spoken English	\N	\N	nomenjanaharysarobidy93@gmail.com	034 99 442 53	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:45.115326	2024-06-12 11:41:45.115326	\N	\N	\N	\N	activ__resume_1718192505.pdf	\N	\N	\N
1141	Bis Manarintsoa	\N	\N	\N	03486 452 78	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:45.500586	2024-06-12 11:41:45.500586	\N	\N	\N	\N	activ__resume_1718192505.pdf	\N	\N	\N
1142	Davida Robinson	\N	\N	\N	101 221 124 225	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:45.761844	2024-06-12 11:41:45.761844	\N	\N	\N	\N	activ__resume_1718192505.pdf	\N	\N	\N
1143	Ialiravaka Sariaka	\N	\N	Rabeharitsoa@gmail.com	0380526739	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:46.081797	2024-06-12 11:41:46.081797	\N	\N	\N	\N	activ__resume_1718192506.pdf	\N	\N	\N
1144	Etech Consulting	\N	\N	harenaeunie@gmail.com	\n\n032 77	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:46.470779	2024-06-12 11:41:46.470779	\N	\N	\N	\N	activ__resume_1718192506.pdf	\N	\N	\N
1145	Liantsoa Nancy	\N	\N	nancynihasinariela@gmail.com	261 38	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:46.889451	2024-06-12 11:41:46.889451	\N	\N	\N	\N	activ__resume_1718192506.pdf	\N	\N	\N
1146	Madagascar Group	\N	\N	\N	101 221 131 442	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:47.165697	2024-06-12 11:41:47.165697	\N	\N	\N	\N	activ__resume_1718192507.pdf	\N	\N	\N
1147	Anosibe Mandrangobato	\N	\N	Tsouhrasolofonjatovo@gmail.com	032 54 209 77	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:47.507877	2024-06-12 11:41:47.507877	\N	\N	\N	\N	activ__resume_1718192507.pdf	\N	\N	\N
1148	Inconnu	\N	\N	\N	0349734032	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:47.838924	2024-06-12 11:41:47.838924	\N	\N	\N	\N	activ__resume_1718192507.pdf	\N	\N	\N
1149	Hasinandrianina Jocelyn	\N	\N	tsoahasina@gmail.com	033 12 747 69	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:48.233866	2024-06-12 11:41:48.233866	\N	\N	\N	\N	activ__resume_1718192508.pdf	\N	\N	\N
1150	Inconnu	\N	\N	lovatianaranaivoson0@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:48.589438	2024-06-12 11:41:48.589438	\N	\N	\N	\N	activ__resume_1718192508.pdf	\N	\N	\N
1151	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:48.788084	2024-06-12 11:41:48.788084	\N	\N	\N	\N	activ__resume_1718192508.pdf	\N	\N	\N
1152	Eric Bress	\N	\N	eric2bress@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:49.060162	2024-06-12 11:41:49.060162	\N	\N	\N	\N	activ__resume_1718192509.pdf	\N	\N	\N
1153	Narindra Manambina	\N	\N	manambina1806@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:49.327095	2024-06-12 11:41:49.327095	\N	\N	\N	\N	activ__resume_1718192509.pdf	\N	\N	\N
1154	Entreprise Dovema	\N	\N	nicoleraharinjaka@gmail.co	032 44 261 13	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:49.728201	2024-06-12 11:41:49.728201	\N	\N	\N	\N	activ__resume_1718192509.pdf	\N	\N	\N
1155	Manampisoa Veroniaina	\N	\N	manampisoanirina10@gmail.com	0345472399	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:50.080953	2024-06-12 11:41:50.080953	\N	\N	\N	\N	activ__resume_1718192510.pdf	\N	\N	\N
1156	Tsiky Sabrina	\N	\N	tsikysabrina@gmail.com	\n\n0342086028	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:50.360297	2024-06-12 11:41:50.360297	\N	\N	\N	\N	activ__resume_1718192510.pdf	\N	\N	\N
1157	Tsararay Ampitatafika	\N	\N	myranto1601@gmail.com	\n034 03 844 28	\N	BM 113 Bis	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:50.985052	2024-06-12 11:41:50.985052	\N	\N	\N	\N	activ__resume_1718192510.pdf	\N	\N	\N
1158	Rakotoniaintahiry Nomenjanahary	\N	\N	\N	0342213682	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:51.29002	2024-06-12 11:41:51.29002	\N	\N	\N	\N	activ__resume_1718192511.pdf	\N	\N	\N
1159	Animation Tchat	\N	\N	zafindrabaoadele@gmail.com	261 034 70	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:51.790562	2024-06-12 11:41:51.790562	\N	\N	\N	\N	activ__resume_1718192511.pdf	\N	\N	\N
1160	Nantenaina Andriamanalina	\N	\N	nainanante257@gmail.com	261344104447	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:52.092006	2024-06-12 11:41:52.092006	\N	\N	\N	\N	activ__resume_1718192512.pdf	\N	\N	\N
1161	France Madagascar	\N	\N	garciafanilo131@gmail.com	0385280117	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:52.46095	2024-06-12 11:41:52.46095	\N	\N	\N	\N	activ__resume_1718192512.pdf	\N	\N	\N
1162	Arcade Amboditsiry	\N	\N	antsa.luc2001@gmail.com	034 06 854 66	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:52.816601	2024-06-12 11:41:52.816601	\N	\N	\N	\N	activ__resume_1718192512.pdf	\N	\N	\N
1163	Tsirifanambinana Ainanomena	\N	\N	\N	034 76 274 00	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:53.178221	2024-06-12 11:41:53.178221	\N	\N	\N	\N	activ__resume_1718192513.pdf	\N	\N	\N
1164	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:53.403831	2024-06-12 11:41:53.403831	\N	\N	\N	\N	activ__resume_1718192513.pdf	\N	\N	\N
1165	Inconnu	\N	\N	\N	\n048395	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:53.839893	2024-06-12 11:41:53.839893	\N	\N	\N	\N	activ__resume_1718192513.pdf	\N	\N	\N
1166	Anjara Nandrianina	\N	\N	nandrianina277@gmail.com	034 51 803 95	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:54.109045	2024-06-12 11:41:54.109045	\N	\N	\N	\N	activ__resume_1718192514.pdf	\N	\N	\N
1167	Tanjombato Ankadilalampotsy	\N	\N	ramangalahynico@gmail.com	2013-2014	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:54.47706	2024-06-12 11:41:54.47706	\N	\N	\N	\N	activ__resume_1718192514.pdf	\N	\N	\N
1168	Maholy Tahiantsoa	\N	\N	tralaminarivo@gmail.com	 2022-30	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:54.962617	2024-06-12 11:41:54.962617	\N	\N	\N	\N	activ__resume_1718192514.pdf	\N	\N	\N
1169	Curriculum Vitae	\N	\N	rahelison.ani@gmail.com	0326760496	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:55.249761	2024-06-12 11:41:55.249761	\N	\N	\N	\N	activ__resume_1718192515.pdf	\N	\N	\N
1170	Zo Finaritra	\N	\N	rakotoarimbolazo19@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:55.60439	2024-06-12 11:41:55.60439	\N	\N	\N	\N	activ__resume_1718192515.pdf	\N	\N	\N
1171	Assistante Virtuelle	\N	\N	rovahari2@gmail.com	034 84 087 67	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:56.01755	2024-06-12 11:41:56.01755	\N	\N	\N	\N	activ__resume_1718192516.pdf	\N	\N	\N
1172	Digital Training	\N	\N	miharyandrianjafimanana@gmail.com	0343430309	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:56.421636	2024-06-12 11:41:56.421636	\N	\N	\N	\N	activ__resume_1718192516.pdf	\N	\N	\N
1173	Antananarivo Madagascar	\N	\N	mariepauleraza@mail.com	\n038 038 836 99	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:56.743793	2024-06-12 11:41:56.743793	\N	\N	\N	\N	activ__resume_1718192516.pdf	\N	\N	\N
1174	Behenjy Itaosy	\N	\N	oni.muriolla@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:57.280878	2024-06-12 11:41:57.280878	\N	\N	\N	\N	activ__resume_1718192517.pdf	\N	\N	\N
1175	Ny Aina	\N	\N	nyainakasaina@gmail.com	261341466691	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:58.343181	2024-06-12 11:41:58.343181	\N	\N	\N	\N	activ__resume_1718192518.pdf	\N	\N	\N
1176	Mamitiana Fabiola	\N	\N	fabiolamamitiana@gmail.com	0340932090	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:58.77416	2024-06-12 11:41:58.77416	\N	\N	\N	\N	activ__resume_1718192518.pdf	\N	\N	\N
1177	Social Key	\N	\N	mrahariliarivazo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:41:59.232125	2024-06-12 11:41:59.232125	\N	\N	\N	\N	activ__resume_1718192519.pdf	\N	\N	\N
1178	Pierrette Yolande	\N	\N	ranoroveloyolande29@gmail.com	034 29 660 11	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:59.508434	2024-06-12 11:41:59.508434	\N	\N	\N	\N	activ__resume_1718192519.pdf	\N	\N	\N
1179	Conseiller Client	\N	\N	toadn04@gmail.co	0344822559	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:41:59.880557	2024-06-12 11:41:59.880557	\N	\N	\N	\N	activ__resume_1718192519.pdf	\N	\N	\N
1180	Mihaja Tahiana	\N	\N	jramangasata@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:00.351578	2024-06-12 11:42:00.351578	\N	\N	\N	\N	activ__resume_1718192520.pdf	\N	\N	\N
1181	Tsirifanambinana Ainanomena	\N	\N	\N	034 76 274 00	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:00.729255	2024-06-12 11:42:00.729255	\N	\N	\N	\N	activ__resume_1718192520.pdf	\N	\N	\N
1182	Andohatanjona Itaosy	\N	\N	\N	117 121 021 047	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:01.011375	2024-06-12 11:42:01.011375	\N	\N	\N	\N	activ__resume_1718192521.pdf	\N	\N	\N
1183	Webhelp Madagascar	\N	\N	safidy.rakotomavo1904@gmail.com	2018-2019	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:01.435361	2024-06-12 11:42:01.435361	\N	\N	\N	\N	activ__resume_1718192521.pdf	\N	\N	\N
1184	Itaosy Amboatavo	\N	\N	vonianja02@gmail.com	034 40 033 55	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:01.739172	2024-06-12 11:42:01.739172	\N	\N	\N	\N	activ__resume_1718192521.pdf	\N	\N	\N
1185	Elima Roc	\N	\N	rer.elimaroc@gmail.com	033 75 896 30	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:02.177721	2024-06-12 11:42:02.177721	\N	\N	\N	\N	activ__resume_1718192522.pdf	\N	\N	\N
1186	Valideur Web	\N	\N	manantsoaraz72@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:02.514166	2024-06-12 11:42:02.514166	\N	\N	\N	\N	activ__resume_1718192522.pdf	\N	\N	\N
1187	Conseiller Client	\N	\N	andrianiainanomena87@gmail.com	  0347643375	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:02.906805	2024-06-12 11:42:02.906805	\N	\N	\N	\N	activ__resume_1718192522.pdf	\N	\N	\N
1188	Ravaka Sonia	\N	\N	\N	034 54 758 66	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:03.18043	2024-06-12 11:42:03.18043	\N	\N	\N	\N	activ__resume_1718192523.pdf	\N	\N	\N
1189	Madagascar Call	\N	\N	rojoromaine@gmail.com	034 08 102 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:03.674471	2024-06-12 11:42:03.674471	\N	\N	\N	\N	activ__resume_1718192523.pdf	\N	\N	\N
1190	Rajaonarimanana Angela	\N	\N	angelafannie80@gmail.com	2613293 064 64	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:04.216978	2024-06-12 11:42:04.216978	\N	\N	\N	\N	activ__resume_1718192524.pdf	\N	\N	\N
1191	Spoken English	\N	\N	jsetra6@gmail.com	2019-2020	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:04.630193	2024-06-12 11:42:04.630193	\N	\N	\N	\N	activ__resume_1718192524.pdf	\N	\N	\N
1192	Mention Bien	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:05.07692	2024-06-12 11:42:05.07692	\N	\N	\N	\N	activ__resume_1718192525.pdf	\N	\N	\N
1193	Antsa Nandrianina	\N	\N	araoelison58@gmail.com	034 25 936 84	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:05.46889	2024-06-12 11:42:05.46889	\N	\N	\N	\N	activ__resume_1718192525.pdf	\N	\N	\N
1194	Ankadilalampotsy Ankaraobato	\N	\N	genevieve.randy@gmail.com	\n034 63 683 01	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:05.862212	2024-06-12 11:42:05.862212	\N	\N	\N	\N	activ__resume_1718192525.pdf	\N	\N	\N
1195	Rojo Nirina	\N	\N	Nantyrazakamamonjy@gmail.com	034 65 476 19	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:06.14335	2024-06-12 11:42:06.14335	\N	\N	\N	\N	activ__resume_1718192526.pdf	\N	\N	\N
1196	Aina Landry	\N	\N	landryrivonandrianina@gmail.com	038 66 648 90	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:06.546546	2024-06-12 11:42:06.546546	\N	\N	\N	\N	activ__resume_1718192526.pdf	\N	\N	\N
1197	Tsiory Ny	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:06.893556	2024-06-12 11:42:06.893556	\N	\N	\N	\N	activ__resume_1718192526.pdf	\N	\N	\N
1198	Inconnu	\N	\N	ratovonjanaharyfanambinantsoa@yahoo.fr	032 62	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:07.168519	2024-06-12 11:42:07.168519	\N	\N	\N	\N	activ__resume_1718192527.pdf	\N	\N	\N
1199	Mihary Zo	\N	\N	miharysmitia@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:07.547066	2024-06-12 11:42:07.547066	\N	\N	\N	\N	activ__resume_1718192527.pdf	\N	\N	\N
1200	Heriniaina Rhodann	\N	\N	rhodanratiarison@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:08.019838	2024-06-12 11:42:08.019838	\N	\N	\N	\N	activ__resume_1718192528.pdf	\N	\N	\N
1201	Ter Tsimialonjafy	\N	\N	fenosoahajatina@yahoo.fr	720 345	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:08.576254	2024-06-12 11:42:08.576254	\N	\N	\N	\N	activ__resume_1718192528.pdf	\N	\N	\N
1202	Web Marketing	\N	\N	t.razafindramanana@yahoo.com	\n032 81 905 12	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:08.965291	2024-06-12 11:42:08.965291	\N	\N	\N	\N	activ__resume_1718192528.pdf	\N	\N	\N
1203	Inconnu	\N	\N	sarobidysedra918@gmail.com	0341275309	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:09.22732	2024-06-12 11:42:09.22732	\N	\N	\N	\N	activ__resume_1718192529.pdf	\N	\N	\N
1204	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:09.425972	2024-06-12 11:42:09.425972	\N	\N	\N	\N	activ__resume_1718192529.pdf	\N	\N	\N
1205	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:09.611443	2024-06-12 11:42:09.611443	\N	\N	\N	\N	activ__resume_1718192529.pdf	\N	\N	\N
1206	University Jeanne	\N	\N	nomenarakotonirina69@gmail.com	034 69 180 51	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:10.039991	2024-06-12 11:42:10.039991	\N	\N	\N	\N	activ__resume_1718192530.pdf	\N	\N	\N
1207	Jiangxi Normal	\N	\N	vannieluck@gmail.com	261327309083	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:10.375375	2024-06-12 11:42:10.375375	\N	\N	\N	\N	activ__resume_1718192530.pdf	\N	\N	\N
1208	Social Key	\N	\N	mrahariliarivazo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:10.8316	2024-06-12 11:42:10.8316	\N	\N	\N	\N	activ__resume_1718192530.pdf	\N	\N	\N
1209	Inconnu	\N	\N	nyantsa86@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:11.264178	2024-06-12 11:42:11.264178	\N	\N	\N	\N	activ__resume_1718192531.pdf	\N	\N	\N
1210	Tsirifanambinana Ainanomena	\N	\N	\N	034 76 274 00	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:11.588077	2024-06-12 11:42:11.588077	\N	\N	\N	\N	activ__resume_1718192531.pdf	\N	\N	\N
1211	Ter Imerinafovoany	\N	\N	rakniony@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:12.107038	2024-06-12 11:42:12.107038	\N	\N	\N	\N	activ__resume_1718192532.pdf	\N	\N	\N
1212	Mention Bien	\N	\N	kareine437@gmail.com	034-68-599-08	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:12.766939	2024-06-12 11:42:12.766939	\N	\N	\N	\N	activ__resume_1718192532.pdf	\N	\N	\N
1213	Andraisoro Antananarivo	\N	\N	mioty.mandresy@gmail.com	034 69 757 19	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:13.059551	2024-06-12 11:42:13.059551	\N	\N	\N	\N	activ__resume_1718192533.pdf	\N	\N	\N
1214	Destock Meubles	\N	\N	lalatianalindar@gmail.com	261 328821836	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:13.572152	2024-06-12 11:42:13.572152	\N	\N	\N	\N	activ__resume_1718192533.pdf	\N	\N	\N
1215	Razanatsimba Jenny	\N	\N	tiffanylady70@yahoo.com	0345266074	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:13.831305	2024-06-12 11:42:13.831305	\N	\N	\N	\N	activ__resume_1718192533.pdf	\N	\N	\N
1216	Sitrakiniaina Nathalie	\N	\N	rahajalijaonas@gmail.com	261347765737	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:14.244392	2024-06-12 11:42:14.244392	\N	\N	\N	\N	activ__resume_1718192534.pdf	\N	\N	\N
1217	Antsinanantsena Sabotsy	\N	\N	pmandimbisoa@gmai.com	034 1657790	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:14.550167	2024-06-12 11:42:14.550167	\N	\N	\N	\N	activ__resume_1718192534.pdf	\N	\N	\N
1218	Arcade Amboditsiry	\N	\N	antsa.luc2001@gmail.com	034 06 854 66	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:14.904029	2024-06-12 11:42:14.904029	\N	\N	\N	\N	activ__resume_1718192534.pdf	\N	\N	\N
1219	Nosy Varika	\N	\N	rosemagic1986@gmail.com	209 012 029 634	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:15.525463	2024-06-12 11:42:15.525463	\N	\N	\N	\N	activ__resume_1718192535.pdf	\N	\N	\N
1220	Skype Anna	\N	\N	felaniainara08@gmail.com	 038 87 874 90	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:15.843783	2024-06-12 11:42:15.843783	\N	\N	\N	\N	activ__resume_1718192535.pdf	\N	\N	\N
1221	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:16.048531	2024-06-12 11:42:16.048531	\N	\N	\N	\N	activ__resume_1718192536.pdf	\N	\N	\N
1222	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:16.359278	2024-06-12 11:42:16.359278	\N	\N	\N	\N	activ__resume_1718192536.pdf	\N	\N	\N
1223	Antananarivo Antananarivo	\N	\N	pattieclara@gmail.com	0344559142	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:16.654765	2024-06-12 11:42:16.654765	\N	\N	\N	\N	activ__resume_1718192536.pdf	\N	\N	\N
1224	Mihaja Prianah	\N	\N	Miandriamamonjy25@gnail.com	032 29 905 25	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:17.066138	2024-06-12 11:42:17.066138	\N	\N	\N	\N	activ__resume_1718192537.pdf	\N	\N	\N
1225	Situation Matrimoniale	\N	\N	mollyfanya92@gmail.com	310 112 006 006	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:17.529432	2024-06-12 11:42:17.529432	\N	\N	\N	\N	activ__resume_1718192537.pdf	\N	\N	\N
1226	Nantenaina Andriamanalina	\N	\N	nainanante257@gmail.com	261344104447	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:17.831097	2024-06-12 11:42:17.831097	\N	\N	\N	\N	activ__resume_1718192537.pdf	\N	\N	\N
1227	Advanced Certificate	\N	\N	Fyramarojaona1997@gmail.com	2013-2014	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:18.253003	2024-06-12 11:42:18.253003	\N	\N	\N	\N	activ__resume_1718192538.pdf	\N	\N	\N
1228	Ankadilalampotsy Ankaraobato	\N	\N	genevieve.randy@gmail.com	\n034 63 683 01	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:18.604383	2024-06-12 11:42:18.604383	\N	\N	\N	\N	activ__resume_1718192538.pdf	\N	\N	\N
1229	Andoniaina Fanomezana	\N	\N	andon51442@gmail.com	034 51 442 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:19.039165	2024-06-12 11:42:19.039165	\N	\N	\N	\N	activ__resume_1718192539.pdf	\N	\N	\N
1230	Avec Lifewood	\N	\N	randrianoelinanatacha@gmail.com	261322952145	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:19.414337	2024-06-12 11:42:19.414337	\N	\N	\N	\N	activ__resume_1718192539.pdf	\N	\N	\N
1231	Superviseur Senior	\N	\N	riarabe9@gmail.com	2018-2019	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:19.771269	2024-06-12 11:42:19.771269	\N	\N	\N	\N	activ__resume_1718192539.pdf	\N	\N	\N
1232	Aceem Ivato	\N	\N	andoniaina1912@gmail.com	0348993546	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:19.990887	2024-06-12 11:42:19.990887	\N	\N	\N	\N	activ__resume_1718192539.pdf	\N	\N	\N
1233	Djee Gassman	\N	\N	angelorandriarimalala@gmail.com	101 222 118 124	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:20.337522	2024-06-12 11:42:20.337522	\N	\N	\N	\N	activ__resume_1718192540.pdf	\N	\N	\N
1234	Andraharo Antananarivo	\N	\N	rakotohentsoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:20.618946	2024-06-12 11:42:20.618946	\N	\N	\N	\N	activ__resume_1718192540.pdf	\N	\N	\N
1235	Yulie Morgane	\N	\N	morganeyulie1@gmail.com	261344122936	\N	II Y 13 C	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:20.905546	2024-06-12 11:42:20.905546	\N	\N	\N	\N	activ__resume_1718192540.pdf	\N	\N	\N
1236	Edition France	\N	\N	kiaramanasseratsimandresy@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:21.269164	2024-06-12 11:42:21.269164	\N	\N	\N	\N	activ__resume_1718192541.pdf	\N	\N	\N
1237	Herizo Orlando	\N	\N	ramilisonorlando@gmail.com	2014-2018	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:21.553619	2024-06-12 11:42:21.553619	\N	\N	\N	\N	activ__resume_1718192541.pdf	\N	\N	\N
1238	Tsinjohasina Alasora	\N	\N	raveloarisoanytoky24@gmail.com	034 61 648 89	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:21.923597	2024-06-12 11:42:21.923597	\N	\N	\N	\N	activ__resume_1718192541.pdf	\N	\N	\N
1239	Fanja Ramamonjisoa	\N	\N	l@gmail.com	034 53 511 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:22.601628	2024-06-12 11:42:22.601628	\N	\N	\N	\N	activ__resume_1718192542.pdf	\N	\N	\N
1240	Bank Of	\N	\N	Allanrafano@gmail.com	034 65 539 14	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:23.220204	2024-06-12 11:42:23.220204	\N	\N	\N	\N	activ__resume_1718192543.pdf	\N	\N	\N
1241	Assistantevirtuelle Freelance	\N	\N	mickaellarabemanotrona@gmail.com	0346792165	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:23.670282	2024-06-12 11:42:23.670282	\N	\N	\N	\N	activ__resume_1718192543.pdf	\N	\N	\N
1242	Le Centre	\N	\N	tinanirinafioanah@gmail.com	261 32 61470	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:24.148081	2024-06-12 11:42:24.148081	\N	\N	\N	\N	activ__resume_1718192544.pdf	\N	\N	\N
1243	Faratiana Mamonjiniaina	\N	\N	\N	034 66 204 99	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:24.409054	2024-06-12 11:42:24.409054	\N	\N	\N	\N	activ__resume_1718192544.pdf	\N	\N	\N
1244	Back Office	\N	\N	zamakantoniainaavotra@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:24.892014	2024-06-12 11:42:24.892014	\N	\N	\N	\N	activ__resume_1718192544.pdf	\N	\N	\N
1245	Impact Ivandry	\N	\N	\N	034 86 068 98	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:25.173526	2024-06-12 11:42:25.173526	\N	\N	\N	\N	activ__resume_1718192545.pdf	\N	\N	\N
1246	Marie Claudia	\N	\N	marieclaudia22724@gmail.com	033 11 067 48	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:25.610986	2024-06-12 11:42:25.610986	\N	\N	\N	\N	activ__resume_1718192545.pdf	\N	\N	\N
1247	Fenohasina Virginie	\N	\N	fenoh213@gmail.com	033 03 190 22	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:26.225843	2024-06-12 11:42:26.225843	\N	\N	\N	\N	activ__resume_1718192546.pdf	\N	\N	\N
1248	Ressources Humaines	\N	\N	adorson.marius@gmail.com	034 86 708 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:26.821414	2024-06-12 11:42:26.821414	\N	\N	\N	\N	activ__resume_1718192546.pdf	\N	\N	\N
1249	Responsable Ressources	\N	\N	miorapiouk@gmail.com	034 18 752 42	\N	AV 121 Ambohikely ITAOSY	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:27.205943	2024-06-12 11:42:27.205943	\N	\N	\N	\N	activ__resume_1718192547.pdf	\N	\N	\N
1250	Morarano Fenomanana	\N	\N	rantsazoanna@gmail.com	\n\n0347159447	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:27.733244	2024-06-12 11:42:27.733244	\N	\N	\N	\N	activ__resume_1718192547.pdf	\N	\N	\N
1251	Narindra Fabiola	\N	\N	\N	0323551462	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:28.102755	2024-06-12 11:42:28.102755	\N	\N	\N	\N	activ__resume_1718192548.pdf	\N	\N	\N
1252	Langue Anglaise	\N	\N	r.andrianjafisoa@gmail.com	034 48 541 18	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:28.419967	2024-06-12 11:42:28.419967	\N	\N	\N	\N	activ__resume_1718192548.pdf	\N	\N	\N
1253	De Septembre	\N	\N	iaina.razafindramonjy@gmail.com	032 24 558 54	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:28.87041	2024-06-12 11:42:28.87041	\N	\N	\N	\N	activ__resume_1718192548.pdf	\N	\N	\N
1254	Lanto Fenosoa	\N	\N	rahariniainalantofenosoa@gmail.com	0331463819	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:29.43284	2024-06-12 11:42:29.43284	\N	\N	\N	\N	activ__resume_1718192549.pdf	\N	\N	\N
1255	Ambohidakana Ambodimita	\N	\N	mbolatianavicky@gmail.com	034 99 071 94	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:29.800466	2024-06-12 11:42:29.800466	\N	\N	\N	\N	activ__resume_1718192549.pdf	\N	\N	\N
1256	Helimanoa Andomahanina	\N	\N	manoaandomahanina@gmail.com	 101\n\n034 77	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:30.180964	2024-06-12 11:42:30.180964	\N	\N	\N	\N	activ__resume_1718192550.pdf	\N	\N	\N
1257	Nathalie Volahanta	\N	\N	nathalieadeline4@gmail.com	103072016874	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:30.468019	2024-06-12 11:42:30.468019	\N	\N	\N	\N	activ__resume_1718192550.pdf	\N	\N	\N
1258	Langue Nanisana	\N	\N	antoinettezafevaro@gmail.com	 034 16 483 59	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:30.860482	2024-06-12 11:42:30.860482	\N	\N	\N	\N	activ__resume_1718192550.pdf	\N	\N	\N
1259	Tanjombato Ankadilalampotsy	\N	\N	ramangalahynico@gmail.com	2013-2014	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:31.268789	2024-06-12 11:42:31.268789	\N	\N	\N	\N	activ__resume_1718192551.pdf	\N	\N	\N
1260	Management Culturels	\N	\N	cendiramandiamanana@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:31.600069	2024-06-12 11:42:31.600069	\N	\N	\N	\N	activ__resume_1718192551.pdf	\N	\N	\N
1261	Option Finances	\N	\N	rfetyhery@gmail.com	0341612127	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:32.189069	2024-06-12 11:42:32.189069	\N	\N	\N	\N	activ__resume_1718192552.pdf	\N	\N	\N
1262	Andriantsiory Herlande	\N	\N	tsioriandrianina1@gmail.com	032 04 761 29	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:33.089375	2024-06-12 11:42:33.089375	\N	\N	\N	\N	activ__resume_1718192553.pdf	\N	\N	\N
1263	Logistique Groupe	\N	\N	natalieraharimalala@gmail.com	\n\n034 93	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:33.583772	2024-06-12 11:42:33.583772	\N	\N	\N	\N	activ__resume_1718192553.pdf	\N	\N	\N
1264	On Rails	\N	\N	Razafindralambo22@gmail.com	261 34 5274147	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:34.011711	2024-06-12 11:42:34.011711	\N	\N	\N	\N	activ__resume_1718192554.pdf	\N	\N	\N
1265	Anosivavaka Ambohimanarina	\N	\N	\N	0349277092	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:34.349946	2024-06-12 11:42:34.349946	\N	\N	\N	\N	activ__resume_1718192554.pdf	\N	\N	\N
1266	Riana Fitia	\N	\N	valisoarfranjamalala@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:34.637011	2024-06-12 11:42:34.637011	\N	\N	\N	\N	activ__resume_1718192554.pdf	\N	\N	\N
1267	Ravaka Prisca	\N	\N	rafanomenzantsoaravaka1@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:35.055901	2024-06-12 11:42:35.055901	\N	\N	\N	\N	activ__resume_1718192555.pdf	\N	\N	\N
1268	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:35.242792	2024-06-12 11:42:35.242792	\N	\N	\N	\N	activ__resume_1718192555.pdf	\N	\N	\N
1269	Barisoa Heriniaina	\N	\N	heriniainarandriamihary75@gmail.com	2019-2021	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:35.663791	2024-06-12 11:42:35.663791	\N	\N	\N	\N	activ__resume_1718192555.pdf	\N	\N	\N
1270	Ecole Nationale	\N	\N	stephaniepageot42@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:35.98054	2024-06-12 11:42:35.98054	\N	\N	\N	\N	activ__resume_1718192555.pdf	\N	\N	\N
1271	Outils Bureautique	\N	\N	tefy.ramaro@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:36.552264	2024-06-12 11:42:36.552264	\N	\N	\N	\N	activ__resume_1718192556.pdf	\N	\N	\N
1272	France Madagascar	\N	\N	garciafanilo131@gmail.com	0385280117	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:36.967455	2024-06-12 11:42:36.967455	\N	\N	\N	\N	activ__resume_1718192556.pdf	\N	\N	\N
1273	Holimalala Nadia	\N	\N	nadiaholimalala@gmail.com	32 35 840 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:37.284348	2024-06-12 11:42:37.284348	\N	\N	\N	\N	activ__resume_1718192557.pdf	\N	\N	\N
1274	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:37.491633	2024-06-12 11:42:37.491633	\N	\N	\N	\N	activ__resume_1718192557.pdf	\N	\N	\N
1275	Mamelantsoa Diariniaina	\N	\N	\N	2014-2019	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:38.451256	2024-06-12 11:42:38.451256	\N	\N	\N	\N	activ__resume_1718192558.pdf	\N	\N	\N
1276	Ambalavao Isotry	\N	\N	\N	032 97 896 50	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:38.949557	2024-06-12 11:42:38.949557	\N	\N	\N	\N	activ__resume_1718192558.pdf	\N	\N	\N
1277	Conseiller Client	\N	\N	andorahe03@gmail.com	101 252 195 287	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:39.228297	2024-06-12 11:42:39.228297	\N	\N	\N	\N	activ__resume_1718192559.pdf	\N	\N	\N
1278	Sarah Aurelie	\N	\N	sarah.aurelie@yahoo.fr	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:39.62596	2024-06-12 11:42:39.62596	\N	\N	\N	\N	activ__resume_1718192559.pdf	\N	\N	\N
1279	Antanetibe Itaosy	\N	\N	jerissha@gmail.com	034 29 642 64	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:39.914197	2024-06-12 11:42:39.914197	\N	\N	\N	\N	activ__resume_1718192559.pdf	\N	\N	\N
1280	Administration Microsoft	\N	\N	mbouxnamby@gmail.com	034 48 393 09	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:40.79532	2024-06-12 11:42:40.79532	\N	\N	\N	\N	activ__resume_1718192560.pdf	\N	\N	\N
1281	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:40.997443	2024-06-12 11:42:40.997443	\N	\N	\N	\N	activ__resume_1718192560.pdf	\N	\N	\N
1282	Aldo Tsiresy	\N	\N	lascar@tutanota.de	032 59	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:41.516176	2024-06-12 11:42:41.516176	\N	\N	\N	\N	activ__resume_1718192561.pdf	\N	\N	\N
1283	Niritiana Sandrinah	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:41.781142	2024-06-12 11:42:41.781142	\N	\N	\N	\N	activ__resume_1718192561.pdf	\N	\N	\N
1284	Andriniaina Lovatiana	\N	\N	\N	113 091 016 135	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:42.055533	2024-06-12 11:42:42.055533	\N	\N	\N	\N	activ__resume_1718192562.pdf	\N	\N	\N
1285	Ianjaniaina Luz	\N	\N	anjakely17@gmail.com	261341747349	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:42.515589	2024-06-12 11:42:42.515589	\N	\N	\N	\N	activ__resume_1718192562.pdf	\N	\N	\N
1286	Premier Cycle	\N	\N	Tesssandra3@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:43.013981	2024-06-12 11:42:43.013981	\N	\N	\N	\N	activ__resume_1718192563.pdf	\N	\N	\N
1287	Bodonirina Nina	\N	\N	ninachristinac@gmail.com	034 14 524 57	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:43.432275	2024-06-12 11:42:43.432275	\N	\N	\N	\N	activ__resume_1718192563.pdf	\N	\N	\N
1288	Ony Nirina	\N	\N	\N	0345095734	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:43.85834	2024-06-12 11:42:43.85834	\N	\N	\N	\N	activ__resume_1718192563.pdf	\N	\N	\N
1289	Depuis Juin	\N	\N	ravelomanantsoaandry@gmail.com	034 46 951 54	\N	KIII	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:44.213519	2024-06-12 11:42:44.213519	\N	\N	\N	\N	activ__resume_1718192564.pdf	\N	\N	\N
1290	Assistante Commerciale	\N	\N	Hasinamialy4@gmail.com	034 32 056 16	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:44.661644	2024-06-12 11:42:44.661644	\N	\N	\N	\N	activ__resume_1718192564.pdf	\N	\N	\N
1291	Fils John	\N	\N	andriamaintymajor@gmail.com	261347459948	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:45.6727	2024-06-12 11:42:45.6727	\N	\N	\N	\N	activ__resume_1718192565.pdf	\N	\N	\N
1292	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:45.862286	2024-06-12 11:42:45.862286	\N	\N	\N	\N	activ__resume_1718192565.pdf	\N	\N	\N
1293	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:46.054963	2024-06-12 11:42:46.054963	\N	\N	\N	\N	activ__resume_1718192566.pdf	\N	\N	\N
1294	Anatihazo Isotry	\N	\N	rina.razafindrakoto@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:46.61408	2024-06-12 11:42:46.61408	\N	\N	\N	\N	activ__resume_1718192566.pdf	\N	\N	\N
1295	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:46.798365	2024-06-12 11:42:46.798365	\N	\N	\N	\N	activ__resume_1718192566.pdf	\N	\N	\N
1296	Nomenjanahary Finoana	\N	\N	f.kanto.7.njr@gmail.com	034 96 645 55	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:47.114093	2024-06-12 11:42:47.114093	\N	\N	\N	\N	activ__resume_1718192567.pdf	\N	\N	\N
1297	Ny Onintsoa	\N	\N	ramandaharijaonaKim@gmail.com	0322492061	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:47.400379	2024-06-12 11:42:47.400379	\N	\N	\N	\N	activ__resume_1718192567.pdf	\N	\N	\N
1298	Tourisme Management	\N	\N	julyannah53@gmail.com	034 56 206 57	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:47.732363	2024-06-12 11:42:47.732363	\N	\N	\N	\N	activ__resume_1718192567.pdf	\N	\N	\N
1299	Inconnu	\N	\N	Ozielaandriamahazo@gmail.com	 34 85 507 95	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:48.335122	2024-06-12 11:42:48.335122	\N	\N	\N	\N	activ__resume_1718192568.pdf	\N	\N	\N
1300	Date De	\N	\N	adoree.olivah@gmail.com	0349303588	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:48.749034	2024-06-12 11:42:48.749034	\N	\N	\N	\N	activ__resume_1718192568.pdf	\N	\N	\N
1301	Informations Personnelles	\N	\N	rhniaina785@gmail.com	0389745938	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:49.112361	2024-06-12 11:42:49.112361	\N	\N	\N	\N	activ__resume_1718192569.pdf	\N	\N	\N
1308	Inconnu	\N	\N	randrianarison.nlmj@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:52.037851	2024-06-12 11:42:52.037851	\N	\N	\N	\N	activ__resume_1718192572.pdf	\N	\N	\N
1309	Value Ivandry	\N	\N	ramanakoraisina95@gmail.com	\n\n034 41	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:52.330729	2024-06-12 11:42:52.330729	\N	\N	\N	\N	activ__resume_1718192572.pdf	\N	\N	\N
1310	Elima Roc	\N	\N	rer.elimaroc@gmail.com	033 75 896 30	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:52.769035	2024-06-12 11:42:52.769035	\N	\N	\N	\N	activ__resume_1718192572.pdf	\N	\N	\N
1311	Etude Universitaire	\N	\N	\N	034 10 756 66	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:53.150065	2024-06-12 11:42:53.150065	\N	\N	\N	\N	activ__resume_1718192573.pdf	\N	\N	\N
1312	Diamondra Sabrina	\N	\N	diamondrasabrina@outlook.fr	038 06 988 90	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:53.706725	2024-06-12 11:42:53.706725	\N	\N	\N	\N	activ__resume_1718192573.pdf	\N	\N	\N
1313	Diamondra Erica	\N	\N	diamondra555@gmail.com	0347011522	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:53.988735	2024-06-12 11:42:53.988735	\N	\N	\N	\N	activ__resume_1718192573.pdf	\N	\N	\N
1314	Tojoniaina Mickael	\N	\N	ratovoherimanana@hotmail.fr	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:54.685731	2024-06-12 11:42:54.685731	\N	\N	\N	\N	activ__resume_1718192574.pdf	\N	\N	\N
1315	Catholique St	\N	\N	laetitiabemaroa@gmail.com	0322708786	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:55.131851	2024-06-12 11:42:55.131851	\N	\N	\N	\N	activ__resume_1718192575.pdf	\N	\N	\N
1316	Ranja Livah	\N	\N	ranjassist@gmail.com	261347479292	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:55.72897	2024-06-12 11:42:55.72897	\N	\N	\N	\N	activ__resume_1718192575.pdf	\N	\N	\N
1317	Ter Ambohibao	\N	\N	rajoeliarisoaf@gmail.com	034 46 079 13	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:56.239507	2024-06-12 11:42:56.239507	\N	\N	\N	\N	activ__resume_1718192576.pdf	\N	\N	\N
1318	Bis Anjanahary	\N	\N	FenitraRANDRIAMIHARISOA@gmail.com	034 90 578 29	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:56.558543	2024-06-12 11:42:56.558543	\N	\N	\N	\N	activ__resume_1718192576.pdf	\N	\N	\N
1319	Ambatobe Antananarivo	\N	\N	arysoah@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:57.232782	2024-06-12 11:42:57.232782	\N	\N	\N	\N	activ__resume_1718192577.pdf	\N	\N	\N
1320	Support Chat	\N	\N	Hermannrakotoarisoa5@gmail.co	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:57.631635	2024-06-12 11:42:57.631635	\N	\N	\N	\N	activ__resume_1718192577.pdf	\N	\N	\N
1321	Farise Jeanny	\N	\N	Leyahr72@gmail.com	261341650368	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:57.912983	2024-06-12 11:42:57.912983	\N	\N	\N	\N	activ__resume_1718192577.pdf	\N	\N	\N
1322	Ad Valorem	\N	\N	oscarevaka@gmail.com	038 66 358 76	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:58.193995	2024-06-12 11:42:58.193995	\N	\N	\N	\N	activ__resume_1718192578.pdf	\N	\N	\N
1323	Hantamalala Michella	\N	\N	henintsoa.michella@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:58.528355	2024-06-12 11:42:58.528355	\N	\N	\N	\N	activ__resume_1718192578.pdf	\N	\N	\N
1324	Raberanto Tradraza	\N	\N	jtradraza@gmail.comm	261344035745	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:58.855406	2024-06-12 11:42:58.855406	\N	\N	\N	\N	activ__resume_1718192578.pdf	\N	\N	\N
1325	Skeepers France	\N	\N	rasoloarisoakevin55@gmail.com	2021-2022	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:42:59.208766	2024-06-12 11:42:59.208766	\N	\N	\N	\N	activ__resume_1718192579.pdf	\N	\N	\N
1326	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:59.420068	2024-06-12 11:42:59.420068	\N	\N	\N	\N	activ__resume_1718192579.pdf	\N	\N	\N
1327	Vinany Loharanombato	\N	\N	razafimanjato94@gmail.com	032 57 591 72	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:42:59.831533	2024-06-12 11:42:59.831533	\N	\N	\N	\N	activ__resume_1718192579.pdf	\N	\N	\N
1328	Inconnu	\N	\N	\N	346684	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:00.090051	2024-06-12 11:43:00.090051	\N	\N	\N	\N	activ__resume_1718192580.pdf	\N	\N	\N
1329	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:00.295535	2024-06-12 11:43:00.295535	\N	\N	\N	\N	activ__resume_1718192580.pdf	\N	\N	\N
1330	Sambatra Eliane	\N	\N	\N	117 172 023 026	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:00.597815	2024-06-12 11:43:00.597815	\N	\N	\N	\N	activ__resume_1718192580.pdf	\N	\N	\N
1331	Joro Nekena	\N	\N	andriampenomanana0705@gmail.com	101 982 098 796	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:00.973267	2024-06-12 11:43:00.973267	\N	\N	\N	\N	activ__resume_1718192580.pdf	\N	\N	\N
1332	Annick Volatiana	\N	\N	ratovomandimby@gmail.com	0344967325	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:01.217116	2024-06-12 11:43:01.217116	\N	\N	\N	\N	activ__resume_1718192581.pdf	\N	\N	\N
1333	Situation Matrimoniale	\N	\N	\N	103 112 019 235	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:01.647385	2024-06-12 11:43:01.647385	\N	\N	\N	\N	activ__resume_1718192581.pdf	\N	\N	\N
1334	Fenitra Henitsoa	\N	\N	andriamalalafenitra12@gmail.com	038 13 429 28	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:01.942017	2024-06-12 11:43:01.942017	\N	\N	\N	\N	activ__resume_1718192581.pdf	\N	\N	\N
1335	Ressources Humaines	\N	\N	andrianinamariah@gmail.com	032 51 207 99	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:02.514057	2024-06-12 11:43:02.514057	\N	\N	\N	\N	activ__resume_1718192582.pdf	\N	\N	\N
1336	Inconnu	\N	\N	radosupercell@gmail.com	2008-2009	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:02.902875	2024-06-12 11:43:02.902875	\N	\N	\N	\N	activ__resume_1718192582.pdf	\N	\N	\N
1337	Catholique Saint	\N	\N	sloofandre87@gmail.com	261345831899	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:03.316491	2024-06-12 11:43:03.316491	\N	\N	\N	\N	activ__resume_1718192583.pdf	\N	\N	\N
1338	Appel Sortant	\N	\N	antsoa@gmail.com	\n0342490185	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:04.170166	2024-06-12 11:43:04.170166	\N	\N	\N	\N	activ__resume_1718192584.pdf	\N	\N	\N
1339	Nom Entreprise	\N	\N	rakotondrasoahasina097@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:04.659585	2024-06-12 11:43:04.659585	\N	\N	\N	\N	activ__resume_1718192584.pdf	\N	\N	\N
1340	Curriculum Vitae	\N	\N	joir37@yahoo.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:05.002804	2024-06-12 11:43:05.002804	\N	\N	\N	\N	activ__resume_1718192585.pdf	\N	\N	\N
1341	Abraham Emile	\N	\N	Stalinemile@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:05.562732	2024-06-12 11:43:05.562732	\N	\N	\N	\N	activ__resume_1718192585.pdf	\N	\N	\N
1342	Bis Ankadikely	\N	\N	\N	0348844308	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:05.915151	2024-06-12 11:43:05.915151	\N	\N	\N	\N	activ__resume_1718192585.pdf	\N	\N	\N
1343	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:06.113008	2024-06-12 11:43:06.113008	\N	\N	\N	\N	activ__resume_1718192586.pdf	\N	\N	\N
1344	Bis Ivato	\N	\N	avotrafrancis@gmail.com	034 85 678 95	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:06.412038	2024-06-12 11:43:06.412038	\N	\N	\N	\N	activ__resume_1718192586.pdf	\N	\N	\N
1345	Informatique Risques	\N	\N	Rindra.randriamihajaharimanana@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:06.83302	2024-06-12 11:43:06.83302	\N	\N	\N	\N	activ__resume_1718192586.pdf	\N	\N	\N
1346	Be Hell	\N	\N	tpossenti0@gmail.com	261345165184	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:08.003813	2024-06-12 11:43:08.003813	\N	\N	\N	\N	activ__resume_1718192588.pdf	\N	\N	\N
1347	Responsable Administratif	\N	\N	safidynyantso@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:08.436985	2024-06-12 11:43:08.436985	\N	\N	\N	\N	activ__resume_1718192588.pdf	\N	\N	\N
1348	Mirindra Mampihiratra	\N	\N	mampihiritra95@gmail.com	\n  032 96	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:08.809579	2024-06-12 11:43:08.809579	\N	\N	\N	\N	activ__resume_1718192588.pdf	\N	\N	\N
1349	Ba Antananarivo	\N	\N	nainafaniry437@gmail.com	034 79 067 02	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:09.221377	2024-06-12 11:43:09.221377	\N	\N	\N	\N	activ__resume_1718192589.pdf	\N	\N	\N
1350	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:09.427563	2024-06-12 11:43:09.427563	\N	\N	\N	\N	activ__resume_1718192589.pdf	\N	\N	\N
1351	Responsable Adjoint	\N	\N	\N	2021-2022	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:10.202849	2024-06-12 11:43:10.202849	\N	\N	\N	\N	activ__resume_1718192590.pdf	\N	\N	\N
1352	Back Office	\N	\N	christellearia8@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:10.517788	2024-06-12 11:43:10.517788	\N	\N	\N	\N	activ__resume_1718192590.pdf	\N	\N	\N
1353	Projet Individuel	\N	\N	razafimanirakav@gmail.com	261 3280 314 23	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:10.975234	2024-06-12 11:43:10.975234	\N	\N	\N	\N	activ__resume_1718192590.pdf	\N	\N	\N
1354	Ginnie Arielle	\N	\N	raharisonginniearielle@gmail.com	 1998\n03	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:11.713879	2024-06-12 11:43:11.713879	\N	\N	\N	\N	activ__resume_1718192591.pdf	\N	\N	\N
1355	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:11.940339	2024-06-12 11:43:11.940339	\N	\N	\N	\N	activ__resume_1718192591.pdf	\N	\N	\N
1356	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:12.147725	2024-06-12 11:43:12.147725	\N	\N	\N	\N	activ__resume_1718192592.pdf	\N	\N	\N
1357	Inconnu	\N	\N	adelliotdr@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:12.607655	2024-06-12 11:43:12.607655	\N	\N	\N	\N	activ__resume_1718192592.pdf	\N	\N	\N
1358	Niaina Mamy	\N	\N	ralambomamyniainamamy@gmail.com	032 71 507 05	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:13.059923	2024-06-12 11:43:13.059923	\N	\N	\N	\N	activ__resume_1718192593.pdf	\N	\N	\N
1359	Narindra Fabiola	\N	\N	\N	0323551462	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:13.417323	2024-06-12 11:43:13.417323	\N	\N	\N	\N	activ__resume_1718192593.pdf	\N	\N	\N
1360	Safidimalala Hyacinthe	\N	\N	maherisoasafidimalalahyacinthe@gmail.com	313 011 026 163	\N	IM 79 TER Ikianja	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:13.715861	2024-06-12 11:43:13.715861	\N	\N	\N	\N	activ__resume_1718192593.pdf	\N	\N	\N
1361	Nirintsoa Diamondra	\N	\N	jaodiary0@gmail.com	034 52 386 18	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:14.007282	2024-06-12 11:43:14.007282	\N	\N	\N	\N	activ__resume_1718192594.pdf	\N	\N	\N
1362	Etats Civils	\N	\N	tsioryfrancois@gmail.com	307 011 010 231	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:14.554283	2024-06-12 11:43:14.554283	\N	\N	\N	\N	activ__resume_1718192594.pdf	\N	\N	\N
1363	Andrian Tsoa	\N	\N	andriaambinintsoa79@gmail.com	261341642325	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:14.856769	2024-06-12 11:43:14.856769	\N	\N	\N	\N	activ__resume_1718192594.pdf	\N	\N	\N
1364	Stagiaire Ressources	\N	\N	ramahandrynyhasina20@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:15.271445	2024-06-12 11:43:15.271445	\N	\N	\N	\N	activ__resume_1718192595.pdf	\N	\N	\N
1365	Lantoniaina Elodie	\N	\N	elodie.solution@gmail.com	0342307622	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:15.611981	2024-06-12 11:43:15.611981	\N	\N	\N	\N	activ__resume_1718192595.pdf	\N	\N	\N
1366	Situation Matrimoniale	\N	\N	mollyfanya92@gmail.com	310 112 006 006	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:16.028925	2024-06-12 11:43:16.028925	\N	\N	\N	\N	activ__resume_1718192596.pdf	\N	\N	\N
1367	Anosizato Est	\N	\N	tsitoheratojo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:16.556486	2024-06-12 11:43:16.556486	\N	\N	\N	\N	activ__resume_1718192596.pdf	\N	\N	\N
1368	Andranonahoatra Itaosy	\N	\N	\N	0341423711	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:16.936752	2024-06-12 11:43:16.936752	\N	\N	\N	\N	activ__resume_1718192596.pdf	\N	\N	\N
1369	Fety Marina	\N	\N	zafitsarafetymarina18@gmail.com	261343199723	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:17.34904	2024-06-12 11:43:17.34904	\N	\N	\N	\N	activ__resume_1718192597.pdf	\N	\N	\N
1370	Ankaditany Ampitatafika	\N	\N	razafin.lanto0607@gmail.com	034 08 958 20	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:17.857183	2024-06-12 11:43:17.857183	\N	\N	\N	\N	activ__resume_1718192597.pdf	\N	\N	\N
1371	Bis Faliarivo	\N	\N	rakotomalalatoavina7@gmail.com	\n\n032 45	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:18.283621	2024-06-12 11:43:18.283621	\N	\N	\N	\N	activ__resume_1718192598.pdf	\N	\N	\N
1372	Fetra Arivelo	\N	\N	randriamiharison.christian@gmail.com	261331806190	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:18.683937	2024-06-12 11:43:18.683937	\N	\N	\N	\N	activ__resume_1718192598.pdf	\N	\N	\N
1373	Anosizato Ouest	\N	\N	rna.alice@gmail.com	038 05 761 22	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:19.012706	2024-06-12 11:43:19.012706	\N	\N	\N	\N	activ__resume_1718192599.pdf	\N	\N	\N
1374	Bis Ankazotokana	\N	\N	moralesfrancky4@gmail.co	0329889318	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:19.314182	2024-06-12 11:43:19.314182	\N	\N	\N	\N	activ__resume_1718192599.pdf	\N	\N	\N
1375	Faniry Nantenaina	\N	\N	Nantlarissa8@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:19.717207	2024-06-12 11:43:19.717207	\N	\N	\N	\N	activ__resume_1718192599.pdf	\N	\N	\N
1376	Tongarivo Tanjombato	\N	\N	lovarakotoarimanana98@gmail.com	347066730	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:20.426201	2024-06-12 11:43:20.426201	\N	\N	\N	\N	activ__resume_1718192600.pdf	\N	\N	\N
1377	Tahina Mamison	\N	\N	tacksrak@gmail.com	34 06 277 20	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:20.91629	2024-06-12 11:43:20.91629	\N	\N	\N	\N	activ__resume_1718192600.pdf	\N	\N	\N
1378	Andranonahoatra Itaosy	\N	\N	\N	0341423711	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:21.201665	2024-06-12 11:43:21.201665	\N	\N	\N	\N	activ__resume_1718192601.pdf	\N	\N	\N
1379	Domoina Miarantsoa	\N	\N	Rdomoinamiarantsoa@gmail.com	0324547922	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:21.566534	2024-06-12 11:43:21.566534	\N	\N	\N	\N	activ__resume_1718192601.pdf	\N	\N	\N
1380	Inconnu	\N	\N	aheriniainaanthonia15@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:22.206526	2024-06-12 11:43:22.206526	\N	\N	\N	\N	activ__resume_1718192602.pdf	\N	\N	\N
1381	English Language	\N	\N	jojoheriniaina@gmail.com	0347231897	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:22.463946	2024-06-12 11:43:22.463946	\N	\N	\N	\N	activ__resume_1718192602.pdf	\N	\N	\N
1382	Team Leader	\N	\N	razafindrakototinah@gmail.com	034 40 776 54	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:22.868049	2024-06-12 11:43:22.868049	\N	\N	\N	\N	activ__resume_1718192602.pdf	\N	\N	\N
1383	La Teleperformance	\N	\N	\N	0381342877	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:23.223591	2024-06-12 11:43:23.223591	\N	\N	\N	\N	activ__resume_1718192603.pdf	\N	\N	\N
1384	Felana Cynthia	\N	\N	CynthiaRakoto88@gmail.com	0382990508	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:23.517328	2024-06-12 11:43:23.517328	\N	\N	\N	\N	activ__resume_1718192603.pdf	\N	\N	\N
1385	Team Leader	\N	\N	tojoranoasy@gmail.com	2021-2022	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:23.955567	2024-06-12 11:43:23.955567	\N	\N	\N	\N	activ__resume_1718192603.pdf	\N	\N	\N
1386	Webhelp Madagascar	\N	\N	lyndanant@gmail.com	034 56 107 06	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:24.383793	2024-06-12 11:43:24.383793	\N	\N	\N	\N	activ__resume_1718192604.pdf	\N	\N	\N
1387	Haravoana Responsable	\N	\N	\N	034 90 924 83	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:24.786325	2024-06-12 11:43:24.786325	\N	\N	\N	\N	activ__resume_1718192604.pdf	\N	\N	\N
1388	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:24.983432	2024-06-12 11:43:24.983432	\N	\N	\N	\N	activ__resume_1718192604.pdf	\N	\N	\N
1389	Inconnu	\N	\N	\N	038 33 816 91	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:25.226098	2024-06-12 11:43:25.226098	\N	\N	\N	\N	activ__resume_1718192605.pdf	\N	\N	\N
1390	Domoina Miarantsoa	\N	\N	Rdomoinamiarantsoa@gmail.com	0324547922	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:25.564833	2024-06-12 11:43:25.564833	\N	\N	\N	\N	activ__resume_1718192605.pdf	\N	\N	\N
1391	Inconnu	\N	\N	Princiarak2@gmail.com	2610329671275	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:25.848484	2024-06-12 11:43:25.848484	\N	\N	\N	\N	activ__resume_1718192605.pdf	\N	\N	\N
1392	Itaosy Amboatavo	\N	\N	vonianja02@gmail.com	034 40 033 55	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:26.147588	2024-06-12 11:43:26.147588	\N	\N	\N	\N	activ__resume_1718192606.pdf	\N	\N	\N
1393	Jenny Aina	\N	\N	jennyraharinosy@gmail.com	0341735111	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:26.424391	2024-06-12 11:43:26.424391	\N	\N	\N	\N	activ__resume_1718192606.pdf	\N	\N	\N
1394	Angeline Herimandimby	\N	\N	a@gmail.com	0340825920	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:26.863364	2024-06-12 11:43:26.863364	\N	\N	\N	\N	activ__resume_1718192606.pdf	\N	\N	\N
1395	Saint Pierre	\N	\N	priscahantasoa@gmail.com	\n\n034 23	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:27.25318	2024-06-12 11:43:27.25318	\N	\N	\N	\N	activ__resume_1718192607.pdf	\N	\N	\N
1396	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:27.450969	2024-06-12 11:43:27.450969	\N	\N	\N	\N	activ__resume_1718192607.pdf	\N	\N	\N
1397	Bis Anosivavaka	\N	\N	christianieony02@gmail.com	261345865147	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:28.20525	2024-06-12 11:43:28.20525	\N	\N	\N	\N	activ__resume_1718192608.pdf	\N	\N	\N
1398	Emilson Xavier	\N	\N	ranaivo.xav@gmail.com	034 56 684 67	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:28.67127	2024-06-12 11:43:28.67127	\N	\N	\N	\N	activ__resume_1718192608.pdf	\N	\N	\N
1399	Fara Nantenaina	\N	\N	nantenainaranaivoson339@gmail.com	034 08 099 69	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:29.000237	2024-06-12 11:43:29.000237	\N	\N	\N	\N	activ__resume_1718192609.pdf	\N	\N	\N
1400	Etude Professionnel	\N	\N	mady.rasolo@gmail.com	2015-2017	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:29.526303	2024-06-12 11:43:29.526303	\N	\N	\N	\N	activ__resume_1718192609.pdf	\N	\N	\N
1401	Latii Malalaniaina	\N	\N	latiimalalaniaina29@gmail.co	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:29.897023	2024-06-12 11:43:29.897023	\N	\N	\N	\N	activ__resume_1718192609.pdf	\N	\N	\N
1402	Organisation Gouvernementale	\N	\N	rasolofoniainamichah@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:30.651844	2024-06-12 11:43:30.651844	\N	\N	\N	\N	activ__resume_1718192610.pdf	\N	\N	\N
1403	Inconnu	\N	\N	\N	2022 23	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:30.867094	2024-06-12 11:43:30.867094	\N	\N	\N	\N	activ__resume_1718192610.pdf	\N	\N	\N
1404	Bis Ivato	\N	\N	avotrafrancis@gmail.com	034 85 678 95	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:31.16089	2024-06-12 11:43:31.16089	\N	\N	\N	\N	activ__resume_1718192611.pdf	\N	\N	\N
1405	Joseph Ravoahangy	\N	\N	bazolyrmh@gmail.com	0340234281	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:31.553629	2024-06-12 11:43:31.553629	\N	\N	\N	\N	activ__resume_1718192611.pdf	\N	\N	\N
1406	Njaraniaina Fanomezantsoa	\N	\N	\N	034 44 025 04	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:32.006228	2024-06-12 11:43:32.006228	\N	\N	\N	\N	activ__resume_1718192612.pdf	\N	\N	\N
1407	Tsanta Ny	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:32.483475	2024-06-12 11:43:32.483475	\N	\N	\N	\N	activ__resume_1718192612.pdf	\N	\N	\N
1408	Andrainarivo Ampahibe	\N	\N	nambininarakoto1@gmail.com	\n0329238286	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:32.940492	2024-06-12 11:43:32.940492	\N	\N	\N	\N	activ__resume_1718192612.pdf	\N	\N	\N
1409	Bilingue Anglophone	\N	\N	manda@eufonie.fr	034 97 687 55	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:33.430068	2024-06-12 11:43:33.430068	\N	\N	\N	\N	activ__resume_1718192613.pdf	\N	\N	\N
1410	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:33.668213	2024-06-12 11:43:33.668213	\N	\N	\N	\N	activ__resume_1718192613.pdf	\N	\N	\N
1411	Haingovololona Chantal	\N	\N	\N	0341870769	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:33.999151	2024-06-12 11:43:33.999151	\N	\N	\N	\N	activ__resume_1718192613.pdf	\N	\N	\N
1412	Holimalala Nadia	\N	\N	nadiaholimalala@gmail.com	32 35 840 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:34.331699	2024-06-12 11:43:34.331699	\N	\N	\N	\N	activ__resume_1718192614.pdf	\N	\N	\N
1413	Inconnu	\N	\N	rdieudonne311@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:34.720928	2024-06-12 11:43:34.720928	\N	\N	\N	\N	activ__resume_1718192614.pdf	\N	\N	\N
1414	Harinaivo Feno	\N	\N	jeffersonmialijery@gmail.com	034 21 906 68	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:35.314349	2024-06-12 11:43:35.314349	\N	\N	\N	\N	activ__resume_1718192615.pdf	\N	\N	\N
1415	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:35.505947	2024-06-12 11:43:35.505947	\N	\N	\N	\N	activ__resume_1718192615.pdf	\N	\N	\N
1416	Jenny Aina	\N	\N	jennyraharinosy@gmail.com	0341735111	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:35.799212	2024-06-12 11:43:35.799212	\N	\N	\N	\N	activ__resume_1718192615.pdf	\N	\N	\N
1417	Lot Ivn	\N	\N	Tiandraycedric@gmail.com	034 26 075 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:36.057275	2024-06-12 11:43:36.057275	\N	\N	\N	\N	activ__resume_1718192616.pdf	\N	\N	\N
1418	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:36.255452	2024-06-12 11:43:36.255452	\N	\N	\N	\N	activ__resume_1718192616.pdf	\N	\N	\N
1419	Relation Client	\N	\N	raonison.steph@gmail.com	0346676350	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:36.578532	2024-06-12 11:43:36.578532	\N	\N	\N	\N	activ__resume_1718192616.pdf	\N	\N	\N
1420	Bis Manarintsoa	\N	\N	\N	03486 452 78	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:36.964984	2024-06-12 11:43:36.964984	\N	\N	\N	\N	activ__resume_1718192616.pdf	\N	\N	\N
1421	Liantsoa Nalhinie	\N	\N	nalhiniel@gmail.com	101 222 106 488	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:37.380508	2024-06-12 11:43:37.380508	\N	\N	\N	\N	activ__resume_1718192617.pdf	\N	\N	\N
1422	Briefe Avant	\N	\N	todifrasoa@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:37.794858	2024-06-12 11:43:37.794858	\N	\N	\N	\N	activ__resume_1718192617.pdf	\N	\N	\N
1423	Bis Andranoro	\N	\N	severinesarika@gmail.com	0325595519	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:38.198114	2024-06-12 11:43:38.198114	\N	\N	\N	\N	activ__resume_1718192618.pdf	\N	\N	\N
1424	Marie Claudine	\N	\N	mc9729299@gmail.com	0322495927	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:38.569582	2024-06-12 11:43:38.569582	\N	\N	\N	\N	activ__resume_1718192618.pdf	\N	\N	\N
1425	Maminiaina Williams	\N	\N	\N	101 982 095 281	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:38.858717	2024-06-12 11:43:38.858717	\N	\N	\N	\N	activ__resume_1718192618.pdf	\N	\N	\N
1426	Microsoft Office	\N	\N	mitantsoa.rasolomanana@gmail.com	 2013-2015	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:39.270647	2024-06-12 11:43:39.270647	\N	\N	\N	\N	activ__resume_1718192619.pdf	\N	\N	\N
1427	Personne Responsable	\N	\N	laharivelo@gmail.com	2013-2014	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:39.760005	2024-06-12 11:43:39.760005	\N	\N	\N	\N	activ__resume_1718192619.pdf	\N	\N	\N
1428	Situation Matrimoniale	\N	\N	mollyfanya92@gmail.com	310 112 006 006	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:40.166683	2024-06-12 11:43:40.166683	\N	\N	\N	\N	activ__resume_1718192620.pdf	\N	\N	\N
1429	Inconnu	\N	\N	ragatrans@hotmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:40.66879	2024-06-12 11:43:40.66879	\N	\N	\N	\N	activ__resume_1718192620.pdf	\N	\N	\N
1430	Moderne Ampefiloha	\N	\N	joycealvin174@gmail.com	0343639283	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:41.000286	2024-06-12 11:43:41.000286	\N	\N	\N	\N	activ__resume_1718192621.pdf	\N	\N	\N
1431	Herifidy Nomena	\N	\N	ramilisonalba@gmail.com	034 65 268 10	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:41.19649	2024-06-12 11:43:41.19649	\N	\N	\N	\N	activ__resume_1718192621.pdf	\N	\N	\N
1432	Maherilanja Avotriniaina	\N	\N	lanjanolhan@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:41.561792	2024-06-12 11:43:41.561792	\N	\N	\N	\N	activ__resume_1718192621.pdf	\N	\N	\N
1433	Loharanombato Itaosy	\N	\N	mioramuriellerazananaivo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:41.876677	2024-06-12 11:43:41.876677	\N	\N	\N	\N	activ__resume_1718192621.pdf	\N	\N	\N
1434	Natrehana Manampy	\N	\N	rakotoasimbolanatrehana@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:42.301873	2024-06-12 11:43:42.301873	\N	\N	\N	\N	activ__resume_1718192622.pdf	\N	\N	\N
1435	Harenasoa Faniry	\N	\N	\N	034 32 044 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:42.615822	2024-06-12 11:43:42.615822	\N	\N	\N	\N	activ__resume_1718192622.pdf	\N	\N	\N
1436	Lanjaniaina Paule	\N	\N	lanjaniainaratsimanosika@gmail.com	101 212 199 145	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:42.929853	2024-06-12 11:43:42.929853	\N	\N	\N	\N	activ__resume_1718192622.pdf	\N	\N	\N
1437	Fanoro Lafatra	\N	\N	\N	117 172 018 071	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:43.209075	2024-06-12 11:43:43.209075	\N	\N	\N	\N	activ__resume_1718192623.pdf	\N	\N	\N
1438	Stagiaire Ressources	\N	\N	ramahandrynyhasina20@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:43.638231	2024-06-12 11:43:43.638231	\N	\N	\N	\N	activ__resume_1718192623.pdf	\N	\N	\N
1439	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:43.823585	2024-06-12 11:43:43.823585	\N	\N	\N	\N	activ__resume_1718192623.pdf	\N	\N	\N
1440	Heriniaina Eddy	\N	\N	eddy.heriniaina@gmail.com	034 31 201 50	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:44.536292	2024-06-12 11:43:44.536292	\N	\N	\N	\N	activ__resume_1718192624.pdf	\N	\N	\N
1441	Project Manager	\N	\N	landy.andrianjafy@gmail.com	34 544 27	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:44.973919	2024-06-12 11:43:44.973919	\N	\N	\N	\N	activ__resume_1718192624.pdf	\N	\N	\N
1442	Bis Soavimasoandro	\N	\N	\N	101 252 198 893	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:45.251605	2024-06-12 11:43:45.251605	\N	\N	\N	\N	activ__resume_1718192625.pdf	\N	\N	\N
1443	Miandrarivo Ambanidia	\N	\N	raheliarisoaiandrianina@gmail.com	0329491940	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:45.597703	2024-06-12 11:43:45.597703	\N	\N	\N	\N	activ__resume_1718192625.pdf	\N	\N	\N
1444	Nirina Patricia	\N	\N	rnirinapatricia28@gmail.com	034 39 279 81	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:45.954027	2024-06-12 11:43:45.954027	\N	\N	\N	\N	activ__resume_1718192625.pdf	\N	\N	\N
1445	Approfondissement Professionnel	\N	\N	travlignnaly@gmail.com	261034 38	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:46.82987	2024-06-12 11:43:46.82987	\N	\N	\N	\N	activ__resume_1718192626.pdf	\N	\N	\N
1446	Ecole Nationale	\N	\N	stephaniepageot42@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:47.119698	2024-06-12 11:43:47.119698	\N	\N	\N	\N	activ__resume_1718192627.pdf	\N	\N	\N
1447	Cursus Universitaire	\N	\N	rahagatianamendrika@gmail.com	034 52 177 49	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:47.460907	2024-06-12 11:43:47.460907	\N	\N	\N	\N	activ__resume_1718192627.pdf	\N	\N	\N
1448	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:48.078091	2024-06-12 11:43:48.078091	\N	\N	\N	\N	activ__resume_1718192628.pdf	\N	\N	\N
1449	Webhelp Madagascar	\N	\N	Rasoarivony25@gmail.com	2016-201	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:48.475797	2024-06-12 11:43:48.475797	\N	\N	\N	\N	activ__resume_1718192628.pdf	\N	\N	\N
1450	Luonnel Burthon	\N	\N	luonnelburthon@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:48.920288	2024-06-12 11:43:48.920288	\N	\N	\N	\N	activ__resume_1718192628.pdf	\N	\N	\N
1451	Haingo Harimalala	\N	\N	andriantsilavina17@gmail.com	034 54 857 92	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:49.213452	2024-06-12 11:43:49.213452	\N	\N	\N	\N	activ__resume_1718192629.pdf	\N	\N	\N
1452	Nantenaina Falinirina	\N	\N	nantenaina2021@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:49.606574	2024-06-12 11:43:49.606574	\N	\N	\N	\N	activ__resume_1718192629.pdf	\N	\N	\N
1453	Liantsoa Nancy	\N	\N	nancynihasinariela@gmail.com	261 38	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:50.051849	2024-06-12 11:43:50.051849	\N	\N	\N	\N	activ__resume_1718192630.pdf	\N	\N	\N
1454	Norolanto Adonis	\N	\N	norolanto94@gmail.com	034 12 377 17	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:50.483598	2024-06-12 11:43:50.483598	\N	\N	\N	\N	activ__resume_1718192630.pdf	\N	\N	\N
1455	Fanevasoa Judith	\N	\N	judithfaneva@gmail.com	032 44 389 19	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:50.925958	2024-06-12 11:43:50.925958	\N	\N	\N	\N	activ__resume_1718192630.pdf	\N	\N	\N
1456	Ter Sabotsy	\N	\N	nasandratra0405@gmail.com	034 11 276 82	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:51.379281	2024-06-12 11:43:51.379281	\N	\N	\N	\N	activ__resume_1718192631.pdf	\N	\N	\N
1457	Prof Anglais	\N	\N	sandratiarisoa9@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:51.777703	2024-06-12 11:43:51.777703	\N	\N	\N	\N	activ__resume_1718192631.pdf	\N	\N	\N
1458	Heriniaina Thierry	\N	\N	thithiraz02@gmail.com	2023-2024	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:52.744937	2024-06-12 11:43:52.744937	\N	\N	\N	\N	activ__resume_1718192632.pdf	\N	\N	\N
1459	Antsa Nandrianina	\N	\N	razafimandimby.antsanandrianina@yahoo.com	032 52 756 60	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:53.202274	2024-06-12 11:43:53.202274	\N	\N	\N	\N	activ__resume_1718192633.pdf	\N	\N	\N
1460	Zaisoa Nirindra	\N	\N	\N	\n\n034 39	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:53.491563	2024-06-12 11:43:53.491563	\N	\N	\N	\N	activ__resume_1718192633.pdf	\N	\N	\N
1461	Lucie Berthine	\N	\N	lucierazafindrajery@gmail.com	111 012 018 687	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:53.90349	2024-06-12 11:43:53.90349	\N	\N	\N	\N	activ__resume_1718192633.pdf	\N	\N	\N
1462	Andrianantenaina Jean	\N	\N	9@gmail.com	034 45 911 06	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:54.255318	2024-06-12 11:43:54.255318	\N	\N	\N	\N	activ__resume_1718192634.pdf	\N	\N	\N
1463	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:54.461045	2024-06-12 11:43:54.461045	\N	\N	\N	\N	activ__resume_1718192634.pdf	\N	\N	\N
1464	Faly Nandrasana	\N	\N	juluore@gmail.com	261341868824	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:54.795765	2024-06-12 11:43:54.795765	\N	\N	\N	\N	activ__resume_1718192634.pdf	\N	\N	\N
1465	Mihaja Lalaina	\N	\N	ramarokotomihaja@gmail.com	101222122922	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:55.142714	2024-06-12 11:43:55.142714	\N	\N	\N	\N	activ__resume_1718192635.pdf	\N	\N	\N
1466	Emilson Xavier	\N	\N	ranaivo.xav@gmail.com	034 56 684 67	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:55.713341	2024-06-12 11:43:55.713341	\N	\N	\N	\N	activ__resume_1718192635.pdf	\N	\N	\N
1467	Nacre Solutions	\N	\N	ambinintsoa.r@yahoo.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:56.088431	2024-06-12 11:43:56.088431	\N	\N	\N	\N	activ__resume_1718192636.pdf	\N	\N	\N
1468	Anosibe Antananarivo	\N	\N	fefeh.andriantsoa08@gmail.com	0324985249	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:56.445661	2024-06-12 11:43:56.445661	\N	\N	\N	\N	activ__resume_1718192636.pdf	\N	\N	\N
1469	Njiva Ary	\N	\N	aryjoda@gmail.com	033 86 469 01	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:56.82628	2024-06-12 11:43:56.82628	\N	\N	\N	\N	activ__resume_1718192636.pdf	\N	\N	\N
1470	Nirina Mbolanoro	\N	\N	mbolaandriamahenina123@gmail.com	033 21 303 02	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:57.524692	2024-06-12 11:43:57.524692	\N	\N	\N	\N	activ__resume_1718192637.pdf	\N	\N	\N
1471	Inconnu	\N	\N	herimampiononaonjamalala@gmail.com	038 85 120 89	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:57.99706	2024-06-12 11:43:57.99706	\N	\N	\N	\N	activ__resume_1718192637.pdf	\N	\N	\N
1472	Work Experience	\N	\N	miradorazanakolona@gmail.com	261342456581	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:58.2596	2024-06-12 11:43:58.2596	\N	\N	\N	\N	activ__resume_1718192638.pdf	\N	\N	\N
1473	Mamisoa Rakotondramanana	\N	\N	mamisoarakotondra@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:58.783671	2024-06-12 11:43:58.783671	\N	\N	\N	\N	activ__resume_1718192638.pdf	\N	\N	\N
1474	Nyaina Rabarison	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:59.066668	2024-06-12 11:43:59.066668	\N	\N	\N	\N	activ__resume_1718192639.pdf	\N	\N	\N
1475	Niry Tantely	\N	\N	tantelyhaja623@gmail.com	034 38 669 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:43:59.414323	2024-06-12 11:43:59.414323	\N	\N	\N	\N	activ__resume_1718192639.pdf	\N	\N	\N
1476	Maherilanja Avotriniaina	\N	\N	lanjanolhan@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:59.792547	2024-06-12 11:43:59.792547	\N	\N	\N	\N	activ__resume_1718192639.pdf	\N	\N	\N
1477	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:43:59.983737	2024-06-12 11:43:59.983737	\N	\N	\N	\N	activ__resume_1718192639.pdf	\N	\N	\N
1478	Ny Aina	\N	\N	nyainarazakamanana@gmail.com	032 07 567 93	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:00.380505	2024-06-12 11:44:00.380505	\N	\N	\N	\N	activ__resume_1718192640.pdf	\N	\N	\N
1479	Toky Niaina	\N	\N	tokyrazanadrakoto1@gmail.com	034 76 599 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:00.761808	2024-06-12 11:44:00.761808	\N	\N	\N	\N	activ__resume_1718192640.pdf	\N	\N	\N
1480	Inconnu	\N	\N	ratovonjanaharyfanambinantsoa@yahoo.fr	032 62	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:01.084115	2024-06-12 11:44:01.084115	\N	\N	\N	\N	activ__resume_1718192641.pdf	\N	\N	\N
1481	Agence Offshore	\N	\N	morianthes04herbin@gmail.com	261349661729	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:01.670178	2024-06-12 11:44:01.670178	\N	\N	\N	\N	activ__resume_1718192641.pdf	\N	\N	\N
1482	Le Point	\N	\N	kerenzhoella.chrmananirina@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:02.182398	2024-06-12 11:44:02.182398	\N	\N	\N	\N	activ__resume_1718192642.pdf	\N	\N	\N
1483	Behenjy Itaosy	\N	\N	oni.muriolla@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:02.59259	2024-06-12 11:44:02.59259	\N	\N	\N	\N	activ__resume_1718192642.pdf	\N	\N	\N
1484	Maitrise Word	\N	\N	nasandratraramanantsoa@gmail.com	0346422663	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:02.884499	2024-06-12 11:44:02.884499	\N	\N	\N	\N	activ__resume_1718192642.pdf	\N	\N	\N
1485	Nirina William	\N	\N	razounyrina@aol.fr	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:04.701226	2024-06-12 11:44:04.701226	\N	\N	\N	\N	activ__resume_1718192644.pdf	\N	\N	\N
1486	Banque Nickel	\N	\N	nawrass.ram@gmail.com	034 47 885 48	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:05.259066	2024-06-12 11:44:05.259066	\N	\N	\N	\N	activ__resume_1718192645.pdf	\N	\N	\N
1487	Inconnu	\N	\N	\N	032 61 080 94	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:05.577263	2024-06-12 11:44:05.577263	\N	\N	\N	\N	activ__resume_1718192645.pdf	\N	\N	\N
1488	Ambalavao Isotry	\N	\N	\N	032 97 896 50	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:06.082225	2024-06-12 11:44:06.082225	\N	\N	\N	\N	activ__resume_1718192646.pdf	\N	\N	\N
1489	Anjara Lovasoa	\N	\N	anjlvrak@gmail.com	0349094552	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:06.533761	2024-06-12 11:44:06.533761	\N	\N	\N	\N	activ__resume_1718192646.pdf	\N	\N	\N
1490	Team Leader	\N	\N	razafindrakototinah@gmail.com	034 40 776 54	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:06.925178	2024-06-12 11:44:06.925178	\N	\N	\N	\N	activ__resume_1718192646.pdf	\N	\N	\N
1491	Ambinintsoa Andrinirina	\N	\N	Andryranaivoson1112@gmail.co	   034 58	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:07.287585	2024-06-12 11:44:07.287585	\N	\N	\N	\N	activ__resume_1718192647.pdf	\N	\N	\N
1492	Xavier Antanimena	\N	\N	harryron97@gmail.com	261345181397	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:07.54515	2024-06-12 11:44:07.54515	\N	\N	\N	\N	activ__resume_1718192647.pdf	\N	\N	\N
1493	Accueil Triage	\N	\N	hardyalbanie@gmail.com	261345165184	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:07.996381	2024-06-12 11:44:07.996381	\N	\N	\N	\N	activ__resume_1718192647.pdf	\N	\N	\N
1494	Inconnu	\N	\N	\N	215218	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:08.253928	2024-06-12 11:44:08.253928	\N	\N	\N	\N	activ__resume_1718192648.pdf	\N	\N	\N
1495	Maria Chantal	\N	\N	mariacha28@yahoo.fr	032 47 157 25	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:08.579128	2024-06-12 11:44:08.579128	\N	\N	\N	\N	activ__resume_1718192648.pdf	\N	\N	\N
1496	Tiana Vololona	\N	\N	\N	0342990778	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:08.819428	2024-06-12 11:44:08.819428	\N	\N	\N	\N	activ__resume_1718192648.pdf	\N	\N	\N
1497	Sitraka Flavien	\N	\N	sitrakaflavienrajao@gmail.com	101 251 199 755	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:09.140613	2024-06-12 11:44:09.140613	\N	\N	\N	\N	activ__resume_1718192649.pdf	\N	\N	\N
1498	English Level	\N	\N	tiana.vololomanjaka@yahoo.fr	0342727549	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:09.592636	2024-06-12 11:44:09.592636	\N	\N	\N	\N	activ__resume_1718192649.pdf	\N	\N	\N
1499	Antso Nasandratra	\N	\N	\N	032 44 932 99	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:09.985474	2024-06-12 11:44:09.985474	\N	\N	\N	\N	activ__resume_1718192649.pdf	\N	\N	\N
1500	Bis Ambodimita	\N	\N	oliviarazafindrakoto72@gmail.com	26134 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:10.281926	2024-06-12 11:44:10.281926	\N	\N	\N	\N	activ__resume_1718192650.pdf	\N	\N	\N
1501	Camilla Sharon	\N	\N	\N	\n\n0343932181	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:10.528036	2024-06-12 11:44:10.528036	\N	\N	\N	\N	activ__resume_1718192650.pdf	\N	\N	\N
1502	Androhibe Andrianalefy	\N	\N	andoniaina175@gmail.com	032 94 887 94	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:10.790012	2024-06-12 11:44:10.790012	\N	\N	\N	\N	activ__resume_1718192650.pdf	\N	\N	\N
1503	Lucky Lalao	\N	\N	fina4ran@gmail.com	0341945996	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:11.30288	2024-06-12 11:44:11.30288	\N	\N	\N	\N	activ__resume_1718192651.pdf	\N	\N	\N
1504	Financial Executive	\N	\N	miora.raobelina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:11.631697	2024-06-12 11:44:11.631697	\N	\N	\N	\N	activ__resume_1718192651.pdf	\N	\N	\N
1505	Rinah Constance	\N	\N	rinah4nome@gmail.com	0345562349	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:11.972155	2024-06-12 11:44:11.972155	\N	\N	\N	\N	activ__resume_1718192651.pdf	\N	\N	\N
1506	Sandratra Armandine	\N	\N	daniellah1507@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:12.255095	2024-06-12 11:44:12.255095	\N	\N	\N	\N	activ__resume_1718192652.pdf	\N	\N	\N
1507	Zo Andrianina	\N	\N	mamy.zoandrianina@gmail.com	034 54 104 80	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:12.679217	2024-06-12 11:44:12.679217	\N	\N	\N	\N	activ__resume_1718192652.pdf	\N	\N	\N
1508	Spoken English	\N	\N	mraheliarinivo@gmail.com	0349351660	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:13.014503	2024-06-12 11:44:13.014503	\N	\N	\N	\N	activ__resume_1718192653.pdf	\N	\N	\N
1509	Arielle Liantsoa	\N	\N	arielleliantsoa@gmail.com	033 68 596 51	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:13.350261	2024-06-12 11:44:13.350261	\N	\N	\N	\N	activ__resume_1718192653.pdf	\N	\N	\N
1510	Ny Onintsoa	\N	\N	ramandaharijaonaKim@gmail.com	0322492061	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:13.666752	2024-06-12 11:44:13.666752	\N	\N	\N	\N	activ__resume_1718192653.pdf	\N	\N	\N
1511	Formation Communication	\N	\N	Fanilousitrakiniaina@gmail.com	0331222940	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:13.989296	2024-06-12 11:44:13.989296	\N	\N	\N	\N	activ__resume_1718192653.pdf	\N	\N	\N
1512	Njarasoa Rindraniana	\N	\N	rindraniaina06052013@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:14.359708	2024-06-12 11:44:14.359708	\N	\N	\N	\N	activ__resume_1718192654.pdf	\N	\N	\N
1513	Serv Antananarivo	\N	\N	germainrobison@gmail.com	034 83 698 72	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:14.84616	2024-06-12 11:44:14.84616	\N	\N	\N	\N	activ__resume_1718192654.pdf	\N	\N	\N
1514	Teleshopping France	\N	\N	antoniavolazara@yahoo.fr	0341809713	\N	Inconnue	https://www.facebook.com/vola.andrian	https://www.linkedin.com/in/antonia-	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:15.185414	2024-06-12 11:44:15.185414	\N	\N	\N	\N	activ__resume_1718192655.pdf	\N	\N	\N
1515	Sitraka Mamy	\N	\N	sitrakasmart@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:15.690457	2024-06-12 11:44:15.690457	\N	\N	\N	\N	activ__resume_1718192655.pdf	\N	\N	\N
1516	Curriculum Vitae	\N	\N	\N	034 43 544 59	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:16.171048	2024-06-12 11:44:16.171048	\N	\N	\N	\N	activ__resume_1718192656.pdf	\N	\N	\N
1517	Les Schtroumphs	\N	\N	ericaanjaratianarakotoniaina@gmail.com	034 45 185 78	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:16.475965	2024-06-12 11:44:16.475965	\N	\N	\N	\N	activ__resume_1718192656.pdf	\N	\N	\N
1518	Adm Value	\N	\N	Letticiarose4@gmail.com	038 27 069 55	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:17.013304	2024-06-12 11:44:17.013304	\N	\N	\N	\N	activ__resume_1718192657.pdf	\N	\N	\N
1519	Financial Legarec	\N	\N	alicelivanina@gmail.com	032 86 443 53	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:17.522922	2024-06-12 11:44:17.522922	\N	\N	\N	\N	activ__resume_1718192657.pdf	\N	\N	\N
1520	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:17.711732	2024-06-12 11:44:17.711732	\N	\N	\N	\N	activ__resume_1718192657.pdf	\N	\N	\N
1521	Haut Matsiatra	\N	\N	rjamillagarcia@gmail.com	710 012 062 174	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:18.168597	2024-06-12 11:44:18.168597	\N	\N	\N	\N	activ__resume_1718192658.pdf	\N	\N	\N
1522	Harimanantsoa Fanoela	\N	\N	andrianjafyfanoela@gmail.com	034 25 098 49	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:18.678873	2024-06-12 11:44:18.678873	\N	\N	\N	\N	activ__resume_1718192658.pdf	\N	\N	\N
1523	Assistante Virtuelle	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:19.064161	2024-06-12 11:44:19.064161	\N	\N	\N	\N	activ__resume_1718192659.pdf	\N	\N	\N
1524	Community Managment	\N	\N	tkjtoavina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:19.371763	2024-06-12 11:44:19.371763	\N	\N	\N	\N	activ__resume_1718192659.pdf	\N	\N	\N
1525	Manda Herivelo	\N	\N	lambertdaniel6263@gmail.com	034 86 400 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:19.748091	2024-06-12 11:44:19.748091	\N	\N	\N	\N	activ__resume_1718192659.pdf	\N	\N	\N
1526	Lucia Emilie	\N	\N	luciaramarokoto@gmail.com	 - 033 02	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:20.211403	2024-06-12 11:44:20.211403	\N	\N	\N	\N	activ__resume_1718192660.pdf	\N	\N	\N
1527	Licence Informatique	\N	\N	jacky.developpeur@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:20.600185	2024-06-12 11:44:20.600185	\N	\N	\N	\N	activ__resume_1718192660.pdf	\N	\N	\N
1528	Pack Office	\N	\N	marielidivine25@gmail.com	0345999989	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:20.959255	2024-06-12 11:44:20.959255	\N	\N	\N	\N	activ__resume_1718192660.pdf	\N	\N	\N
1529	Diarisoa Fanantenana	\N	\N	andriambolaniaina@yahoo.com	 101 241 160 096	\N	III S 171 Bis	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:21.349662	2024-06-12 11:44:21.349662	\N	\N	\N	\N	activ__resume_1718192661.pdf	\N	\N	\N
1530	Chez Allobip	\N	\N	fabiennemihaja@gmail.com	032 83 850 02	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:21.685178	2024-06-12 11:44:21.685178	\N	\N	\N	\N	activ__resume_1718192661.pdf	\N	\N	\N
1531	Redaction Web	\N	\N	andriarimananam@yahoo.com	261 34	\N	VT 55	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:22.491404	2024-06-12 11:44:22.491404	\N	\N	\N	\N	activ__resume_1718192662.pdf	\N	\N	\N
1532	Mantasoa Lodge	\N	\N	prajaonarisaona@gmail.com	034 65 342 77	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:23.188914	2024-06-12 11:44:23.188914	\N	\N	\N	\N	activ__resume_1718192663.pdf	\N	\N	\N
1533	Ambinintsoa Andrinirina	\N	\N	Andryranaivoson1112@gmail.co	   034 58	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:23.557724	2024-06-12 11:44:23.557724	\N	\N	\N	\N	activ__resume_1718192663.pdf	\N	\N	\N
1534	Coach Formatrice	\N	\N	lea.ramihone@gmail.com	034 26 011 42	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:23.868412	2024-06-12 11:44:23.868412	\N	\N	\N	\N	activ__resume_1718192663.pdf	\N	\N	\N
1535	Situation Matrimoniale	\N	\N	delphinevololona@gmail.com	2020-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:24.242675	2024-06-12 11:44:24.242675	\N	\N	\N	\N	activ__resume_1718192664.pdf	\N	\N	\N
1536	Ressources Humaines	\N	\N	tsoarison@gmail.com	034 89 505 55	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:24.634455	2024-06-12 11:44:24.634455	\N	\N	\N	\N	activ__resume_1718192664.pdf	\N	\N	\N
1537	Madagascar Group	\N	\N	\N	101 221 131 442	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:24.922997	2024-06-12 11:44:24.922997	\N	\N	\N	\N	activ__resume_1718192664.pdf	\N	\N	\N
1538	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:25.123658	2024-06-12 11:44:25.123658	\N	\N	\N	\N	activ__resume_1718192665.pdf	\N	\N	\N
1539	University Jeanne	\N	\N	nomenarakotonirina69@gmail.com	034 69 180 51	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:25.557255	2024-06-12 11:44:25.557255	\N	\N	\N	\N	activ__resume_1718192665.pdf	\N	\N	\N
1540	Formation Portfolio	\N	\N	finoana.fifie@gmail.com	034 15 904 53	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:26.031588	2024-06-12 11:44:26.031588	\N	\N	\N	\N	activ__resume_1718192666.pdf	\N	\N	\N
1541	Community Manager	\N	\N	jouhaneraz@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:26.488043	2024-06-12 11:44:26.488043	\N	\N	\N	\N	activ__resume_1718192666.pdf	\N	\N	\N
1542	Microsoft Word	\N	\N	\N	101 252 190 676	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:26.790423	2024-06-12 11:44:26.790423	\N	\N	\N	\N	activ__resume_1718192666.pdf	\N	\N	\N
1543	Du Lac	\N	\N	mmiarimbony4977s@gmail.com	\n0326406935	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:27.125144	2024-06-12 11:44:27.125144	\N	\N	\N	\N	activ__resume_1718192667.pdf	\N	\N	\N
1544	Emilson Xavier	\N	\N	ranaivo.xav@gmail.com	034 56 684 67	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:27.580819	2024-06-12 11:44:27.580819	\N	\N	\N	\N	activ__resume_1718192667.pdf	\N	\N	\N
1545	Rahelimampionona Zo	\N	\N	nazia.madaweb@gmail.com	034 06 228 76	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:28.32941	2024-06-12 11:44:28.32941	\N	\N	\N	\N	activ__resume_1718192668.pdf	\N	\N	\N
1546	Auditeur Senior	\N	\N	mampionona.assist@gmail.com	034 13 043 96	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:29.072543	2024-06-12 11:44:29.072543	\N	\N	\N	\N	activ__resume_1718192669.pdf	\N	\N	\N
1547	Droit Public	\N	\N	anthoniavoniary@gmail.com	038 94 395 49	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:29.509319	2024-06-12 11:44:29.509319	\N	\N	\N	\N	activ__resume_1718192669.pdf	\N	\N	\N
1548	Alarobia Amboniloha	\N	\N	\N	034 17 745 43	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:29.771798	2024-06-12 11:44:29.771798	\N	\N	\N	\N	activ__resume_1718192669.pdf	\N	\N	\N
1549	Marketing Digital	\N	\N	aly.wdta@gmail.com	2011-2013	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:30.31687	2024-06-12 11:44:30.31687	\N	\N	\N	\N	activ__resume_1718192670.pdf	\N	\N	\N
1550	Inconnu	\N	\N	tiavina.ramiandrisoa10@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:30.663125	2024-06-12 11:44:30.663125	\N	\N	\N	\N	activ__resume_1718192670.pdf	\N	\N	\N
1551	Inconnu	\N	\N	miandrirazaa@gmail.com	032 65 624 09	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:31.019015	2024-06-12 11:44:31.019015	\N	\N	\N	\N	activ__resume_1718192671.pdf	\N	\N	\N
1552	Developer Integrator	\N	\N	fhrazanakoto@gmail.com	261-34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:31.302301	2024-06-12 11:44:31.302301	\N	\N	\N	\N	activ__resume_1718192671.pdf	\N	\N	\N
1553	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:31.489731	2024-06-12 11:44:31.489731	\N	\N	\N	\N	activ__resume_1718192671.pdf	\N	\N	\N
1554	Sheila Razafy	\N	\N	sheilarazafy@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:32.061487	2024-06-12 11:44:32.061487	\N	\N	\N	\N	activ__resume_1718192672.pdf	\N	\N	\N
1555	Antsa Johnaelle	\N	\N	antsajohnaellea@gmail.com	0345999061	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:32.398009	2024-06-12 11:44:32.398009	\N	\N	\N	\N	activ__resume_1718192672.pdf	\N	\N	\N
1556	Ecole Normale	\N	\N	anjaraguy@gmail.com	032 53 357 23	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:32.759339	2024-06-12 11:44:32.759339	\N	\N	\N	\N	activ__resume_1718192672.pdf	\N	\N	\N
1557	Restaurant Majunga	\N	\N	rlyno24@gmail.com	 2021-19	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:33.33701	2024-06-12 11:44:33.33701	\N	\N	\N	\N	activ__resume_1718192673.pdf	\N	\N	\N
1558	Usine Ambohimamory	\N	\N	\N	0381514137	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:33.802176	2024-06-12 11:44:33.802176	\N	\N	\N	\N	activ__resume_1718192673.pdf	\N	\N	\N
1559	Andohatanjona Itaosy	\N	\N	\N	117 121 021 047	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:34.140219	2024-06-12 11:44:34.140219	\N	\N	\N	\N	activ__resume_1718192674.pdf	\N	\N	\N
1560	Malala Ny	\N	\N	mikajyerica@yahoo.fr	032 80 193 93	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:34.61644	2024-06-12 11:44:34.61644	\N	\N	\N	\N	activ__resume_1718192674.pdf	\N	\N	\N
1561	Ankazolava Ambohitsoa	\N	\N	nambininaurelie@gmail.com	\n 034 22	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:34.915426	2024-06-12 11:44:34.915426	\N	\N	\N	\N	activ__resume_1718192674.pdf	\N	\N	\N
1562	Galaxy Andraharo	\N	\N	isaromavik123@gmail.com	0345563605	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:35.18007	2024-06-12 11:44:35.18007	\N	\N	\N	\N	activ__resume_1718192675.pdf	\N	\N	\N
1563	Bis Anatihazo	\N	\N	101andriambelo@gmail.com	034 67 025 05	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:35.625341	2024-06-12 11:44:35.625341	\N	\N	\N	\N	activ__resume_1718192675.pdf	\N	\N	\N
1564	Curriculum Vitae	\N	\N	naylahhassane7gmail@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:35.978104	2024-06-12 11:44:35.978104	\N	\N	\N	\N	activ__resume_1718192675.pdf	\N	\N	\N
1565	Mijoro Toavina	\N	\N	\N	033 79 108 21	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:36.259872	2024-06-12 11:44:36.259872	\N	\N	\N	\N	activ__resume_1718192676.pdf	\N	\N	\N
1566	Liantsoa Amirah	\N	\N	amirahramialimahefa@gmail.com	\n101 211 254 694	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:36.549869	2024-06-12 11:44:36.549869	\N	\N	\N	\N	activ__resume_1718192676.pdf	\N	\N	\N
1567	Inconnu	\N	\N	andrianalymioratiana@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:36.938619	2024-06-12 11:44:36.938619	\N	\N	\N	\N	activ__resume_1718192676.pdf	\N	\N	\N
1568	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:37.141721	2024-06-12 11:44:37.141721	\N	\N	\N	\N	activ__resume_1718192677.pdf	\N	\N	\N
1569	Ny Aina	\N	\N	\N	032 76 344 91	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:37.432939	2024-06-12 11:44:37.432939	\N	\N	\N	\N	activ__resume_1718192677.pdf	\N	\N	\N
1570	Banque Baobab	\N	\N	mbolask@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:37.871993	2024-06-12 11:44:37.871993	\N	\N	\N	\N	activ__resume_1718192677.pdf	\N	\N	\N
1571	Relation Clientelle	\N	\N	na@gmail.com	2019-2022	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:38.125939	2024-06-12 11:44:38.125939	\N	\N	\N	\N	activ__resume_1718192678.pdf	\N	\N	\N
1572	Fehizoro Erick	\N	\N	Fehizoroerick@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:38.649325	2024-06-12 11:44:38.649325	\N	\N	\N	\N	activ__resume_1718192678.pdf	\N	\N	\N
1573	Ecole Ambatondrazaka	\N	\N	eugelieandrianera@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:39.027584	2024-06-12 11:44:39.027584	\N	\N	\N	\N	activ__resume_1718192679.pdf	\N	\N	\N
1574	Ambohimitsinjo Ambohimanarina	\N	\N	rovamananaratombotsoa@gmail.com	\n034 94	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:39.333028	2024-06-12 11:44:39.333028	\N	\N	\N	\N	activ__resume_1718192679.pdf	\N	\N	\N
1575	Verohanta Marcelle	\N	\N	vero.ramanandraisoa@yahoo.fr	034 02 689 10	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:39.777338	2024-06-12 11:44:39.777338	\N	\N	\N	\N	activ__resume_1718192679.pdf	\N	\N	\N
1576	Florentinah Julienne	\N	\N	rahanitriniainatinahjulienne@gmail.com	0347109260	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:40.091322	2024-06-12 11:44:40.091322	\N	\N	\N	\N	activ__resume_1718192680.pdf	\N	\N	\N
1577	Lucky Lalao	\N	\N	fina4ran@gmail.com	0341945996	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:40.558652	2024-06-12 11:44:40.558652	\N	\N	\N	\N	activ__resume_1718192680.pdf	\N	\N	\N
1578	Etudes Etudes	\N	\N	\N	034 20 483 82	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:40.929507	2024-06-12 11:44:40.929507	\N	\N	\N	\N	activ__resume_1718192680.pdf	\N	\N	\N
1579	Tongarivo Tanjombato	\N	\N	bassamlaikah@gmail.com	261346410763	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:41.212882	2024-06-12 11:44:41.212882	\N	\N	\N	\N	activ__resume_1718192681.pdf	\N	\N	\N
1580	Droit Parcours	\N	\N	nathaliafelana@gmail.com	034 85 184 04	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:41.667879	2024-06-12 11:44:41.667879	\N	\N	\N	\N	activ__resume_1718192681.pdf	\N	\N	\N
1581	Ambodihady Ambohimanarina	\N	\N	syl4via@gmail.com	261326508078	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:42.147444	2024-06-12 11:44:42.147444	\N	\N	\N	\N	activ__resume_1718192682.pdf	\N	\N	\N
1582	Onjatiana Anjamboahangy	\N	\N	\N	101 252 122 807	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:42.640848	2024-06-12 11:44:42.640848	\N	\N	\N	\N	activ__resume_1718192682.pdf	\N	\N	\N
1583	Lot Ivn	\N	\N	Tiandraycedric@gmail.com	034 26 075 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:44.119894	2024-06-12 11:44:44.119894	\N	\N	\N	\N	activ__resume_1718192684.pdf	\N	\N	\N
1584	Assez Bien	\N	\N	rajerisoastephie01@gmail.com	0346509683	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:44.431633	2024-06-12 11:44:44.431633	\N	\N	\N	\N	activ__resume_1718192684.pdf	\N	\N	\N
1585	Arifaliana Judith	\N	\N	arifalianajudithr@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:44.905317	2024-06-12 11:44:44.905317	\N	\N	\N	\N	activ__resume_1718192684.pdf	\N	\N	\N
1586	Ravaka Elinah	\N	\N	ravakarandriana@gmail.com	034 85 520 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:45.264855	2024-06-12 11:44:45.264855	\N	\N	\N	\N	activ__resume_1718192685.pdf	\N	\N	\N
1587	Fenitra Tiana	\N	\N	fenitrasolofoniaina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:45.613189	2024-06-12 11:44:45.613189	\N	\N	\N	\N	activ__resume_1718192685.pdf	\N	\N	\N
1588	Nomena Fanantenana	\N	\N	\N	2017-2018	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:46.316759	2024-06-12 11:44:46.316759	\N	\N	\N	\N	activ__resume_1718192686.pdf	\N	\N	\N
1589	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:46.501644	2024-06-12 11:44:46.501644	\N	\N	\N	\N	activ__resume_1718192686.pdf	\N	\N	\N
1590	Nomenjanahary Zo	\N	\N	znomenja@gmail.com	0348795341	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:46.798852	2024-06-12 11:44:46.798852	\N	\N	\N	\N	activ__resume_1718192686.pdf	\N	\N	\N
1591	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:47.011751	2024-06-12 11:44:47.011751	\N	\N	\N	\N	activ__resume_1718192687.pdf	\N	\N	\N
1592	Hariniaina Ony	\N	\N	onyh.andrianirina@gmail.com	034 48 232 97	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:47.492731	2024-06-12 11:44:47.492731	\N	\N	\N	\N	activ__resume_1718192687.pdf	\N	\N	\N
1593	Andranovelona Ankazobe	\N	\N	\N	261 034 20	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:47.824126	2024-06-12 11:44:47.824126	\N	\N	\N	\N	activ__resume_1718192687.pdf	\N	\N	\N
1594	Suivi Swap	\N	\N	tsouhrasolofonjatovo@gmail.com	032 54 209 77	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:48.263813	2024-06-12 11:44:48.263813	\N	\N	\N	\N	activ__resume_1718192688.pdf	\N	\N	\N
1595	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:48.484982	2024-06-12 11:44:48.484982	\N	\N	\N	\N	activ__resume_1718192688.pdf	\N	\N	\N
1596	Inconnu	\N	\N	asinalako02@gmail.com	\n034 10 708 93	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:48.927832	2024-06-12 11:44:48.927832	\N	\N	\N	\N	activ__resume_1718192688.pdf	\N	\N	\N
1597	Ambohidakana Ambodimita	\N	\N	mbolatianavicky@gmail.com	034 99 071 94	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:49.365661	2024-06-12 11:44:49.365661	\N	\N	\N	\N	activ__resume_1718192689.pdf	\N	\N	\N
1598	Anja Ny	\N	\N	\N	103012006431	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:49.811196	2024-06-12 11:44:49.811196	\N	\N	\N	\N	activ__resume_1718192689.pdf	\N	\N	\N
1599	Santatra Baptistine	\N	\N	Sasahandriam576@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:50.136358	2024-06-12 11:44:50.136358	\N	\N	\N	\N	activ__resume_1718192690.pdf	\N	\N	\N
1600	Book News	\N	\N	\N	2010-2012	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:50.629714	2024-06-12 11:44:50.629714	\N	\N	\N	\N	activ__resume_1718192690.pdf	\N	\N	\N
1601	Ampahateza Ambohipo	\N	\N	vonisoawarda7@gmail.com	032 57 390 94	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:51.020849	2024-06-12 11:44:51.020849	\N	\N	\N	\N	activ__resume_1718192691.pdf	\N	\N	\N
1602	Bis Ambodihady	\N	\N	rubisseschaffer@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:51.424186	2024-06-12 11:44:51.424186	\N	\N	\N	\N	activ__resume_1718192691.pdf	\N	\N	\N
1603	Andry Lalaina	\N	\N	rasamoelison21@gmail.com	034 83 038 86	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:51.867956	2024-06-12 11:44:51.867956	\N	\N	\N	\N	activ__resume_1718192691.pdf	\N	\N	\N
1604	Sonia Ernest	\N	\N	ciahernest39@gmail.com	034 90 770 20	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:52.255295	2024-06-12 11:44:52.255295	\N	\N	\N	\N	activ__resume_1718192692.pdf	\N	\N	\N
1605	Bien Venue	\N	\N	\N	117 19 101 10	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:52.489571	2024-06-12 11:44:52.489571	\N	\N	\N	\N	activ__resume_1718192692.pdf	\N	\N	\N
1606	Andohatanjona Itaosy	\N	\N	\N	117 121 021 047	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:52.777025	2024-06-12 11:44:52.777025	\N	\N	\N	\N	activ__resume_1718192692.pdf	\N	\N	\N
1607	Liantsoa Nalhinie	\N	\N	nalhiniel@gmail.com	101 222 106 488	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:53.054107	2024-06-12 11:44:53.054107	\N	\N	\N	\N	activ__resume_1718192693.pdf	\N	\N	\N
1608	Mialinirina Tantely	\N	\N	mialinirinatantely@gmail.com	\n0324559213	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:53.380084	2024-06-12 11:44:53.380084	\N	\N	\N	\N	activ__resume_1718192693.pdf	\N	\N	\N
1609	Avec Lifewood	\N	\N	randrianoelinanatacha@gmail.com	261322952145	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:53.79244	2024-06-12 11:44:53.79244	\N	\N	\N	\N	activ__resume_1718192693.pdf	\N	\N	\N
1610	Webzay Agency	\N	\N	Iarymalalandriantsalama@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:54.161663	2024-06-12 11:44:54.161663	\N	\N	\N	\N	activ__resume_1718192694.pdf	\N	\N	\N
1611	Irinah Andriann	\N	\N	gasyraysyreny@gmail.com	032 38 095 13	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:54.533863	2024-06-12 11:44:54.533863	\N	\N	\N	\N	activ__resume_1718192694.pdf	\N	\N	\N
1612	Elodie Sariaka	\N	\N	sariakarahajarison@gmail.com	032 55 955 81	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:54.908045	2024-06-12 11:44:54.908045	\N	\N	\N	\N	activ__resume_1718192694.pdf	\N	\N	\N
1613	Security Expert	\N	\N	mbinintsoa.tsoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:55.483187	2024-06-12 11:44:55.483187	\N	\N	\N	\N	activ__resume_1718192695.pdf	\N	\N	\N
1614	Conseiller Digital	\N	\N	jeromeaudrey3@gmail.com	034 47 095 30	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:55.898331	2024-06-12 11:44:55.898331	\N	\N	\N	\N	activ__resume_1718192695.pdf	\N	\N	\N
1615	Ricka Miora	\N	\N	loulouneandria20@gmail.com	034 25 453 11	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:56.217799	2024-06-12 11:44:56.217799	\N	\N	\N	\N	activ__resume_1718192696.pdf	\N	\N	\N
1616	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:56.483948	2024-06-12 11:44:56.483948	\N	\N	\N	\N	activ__resume_1718192696.pdf	\N	\N	\N
1617	Malala Harisoa	\N	\N	kelly10.harys@gmail.com	\n034 99 101 99	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:56.873435	2024-06-12 11:44:56.873435	\N	\N	\N	\N	activ__resume_1718192696.pdf	\N	\N	\N
1618	Webhelp Andraharo	\N	\N	nyonytatamo08@gmail.com	0327002379	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:57.141471	2024-06-12 11:44:57.141471	\N	\N	\N	\N	activ__resume_1718192697.pdf	\N	\N	\N
1619	Call Madagascar	\N	\N	heriniainaadoshine@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:57.557944	2024-06-12 11:44:57.557944	\N	\N	\N	\N	activ__resume_1718192697.pdf	\N	\N	\N
1620	Iharimahefa Itokiana	\N	\N	m.itokiana.ra@gmail.com	034 72 494 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:58.12951	2024-06-12 11:44:58.12951	\N	\N	\N	\N	activ__resume_1718192698.pdf	\N	\N	\N
1621	Sirina Rabah	\N	\N	rabahsirinarandrianarison@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:58.498897	2024-06-12 11:44:58.498897	\N	\N	\N	\N	activ__resume_1718192698.pdf	\N	\N	\N
1622	Sirina Rabah	\N	\N	rabahsirinarandrianarison@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:58.877329	2024-06-12 11:44:58.877329	\N	\N	\N	\N	activ__resume_1718192698.pdf	\N	\N	\N
1623	Orlando Fenitriniaina	\N	\N	orlandostormo@gmail.com	261338222311	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:44:59.261785	2024-06-12 11:44:59.261785	\N	\N	\N	\N	activ__resume_1718192699.pdf	\N	\N	\N
1624	Dimby Nambinintsoa	\N	\N	andrianantoaninanambinintsoa@gmail.com	\n\n032 21	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:44:59.573163	2024-06-12 11:44:59.573163	\N	\N	\N	\N	activ__resume_1718192699.pdf	\N	\N	\N
1625	Tatianna Tafitantsoa	\N	\N	tatiannarasolojaona@gmail.com	034 50 136 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:00.35598	2024-06-12 11:45:00.35598	\N	\N	\N	\N	activ__resume_1718192700.pdf	\N	\N	\N
1626	Antsa Radiniaina	\N	\N	vip.antsa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:01.376098	2024-06-12 11:45:01.376098	\N	\N	\N	\N	activ__resume_1718192701.pdf	\N	\N	\N
1627	Itaosy Soamiampita	\N	\N	Ranjatoarisoamariaa22@gmail.com	\n\n0338775923	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:01.743007	2024-06-12 11:45:01.743007	\N	\N	\N	\N	activ__resume_1718192701.pdf	\N	\N	\N
1628	Licence Informatique	\N	\N	jacky.developpeur@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:02.14374	2024-06-12 11:45:02.14374	\N	\N	\N	\N	activ__resume_1718192702.pdf	\N	\N	\N
1629	Herizo Manitra	\N	\N	rmanitraniaina@ymail.com	+261 34 74 375 83	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:02.944931	2024-06-12 11:45:02.944931	\N	\N	\N	\N	activ__resume_1718192702.pdf	\N	\N	\N
1630	Minosoa Lovatiana	\N	\N	hasiniavolovatina@gmail.com	0344185421	\N	41 AB	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:03.382735	2024-06-12 11:45:03.382735	\N	\N	\N	\N	activ__resume_1718192703.pdf	\N	\N	\N
1631	Michaella Rakotomalala	\N	\N	Michaellaalbert@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:03.78057	2024-06-12 11:45:03.78057	\N	\N	\N	\N	activ__resume_1718192703.pdf	\N	\N	\N
1632	Firestore Database	\N	\N	hajatianaralaimitsirisoa@yahoo.com	261331459432	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:04.496564	2024-06-12 11:45:04.496564	\N	\N	\N	\N	activ__resume_1718192704.pdf	\N	\N	\N
1633	Logistique Groupe	\N	\N	natalieraharimalala@gmail.com	\n\n034 93	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:05.013339	2024-06-12 11:45:05.013339	\N	\N	\N	\N	activ__resume_1718192705.pdf	\N	\N	\N
1634	Chinois Mandarin	\N	\N	\N	\n0342563460	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:05.30302	2024-06-12 11:45:05.30302	\N	\N	\N	\N	activ__resume_1718192705.pdf	\N	\N	\N
1635	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:05.484266	2024-06-12 11:45:05.484266	\N	\N	\N	\N	activ__resume_1718192705.pdf	\N	\N	\N
1636	School Mahajanga	\N	\N	Annierazafindrasoa96@gmail.com	0341685624	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:05.973636	2024-06-12 11:45:05.973636	\N	\N	\N	\N	activ__resume_1718192705.pdf	\N	\N	\N
1637	Rajaofera Mioramalala	\N	\N	mioramalala.rajaofera@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:06.430715	2024-06-12 11:45:06.430715	\N	\N	\N	\N	activ__resume_1718192706.pdf	\N	\N	\N
1638	Inconnu	\N	\N	aheriniainaanthonia15@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:07.395659	2024-06-12 11:45:07.395659	\N	\N	\N	\N	activ__resume_1718192707.pdf	\N	\N	\N
1639	Base Client	\N	\N	rabefitiamialy@yahoo.fr	032 51 497 65	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:07.900212	2024-06-12 11:45:07.900212	\N	\N	\N	\N	activ__resume_1718192707.pdf	\N	\N	\N
1640	Pack Office	\N	\N	mayarafaliarison@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:08.571677	2024-06-12 11:45:08.571677	\N	\N	\N	\N	activ__resume_1718192708.pdf	\N	\N	\N
1641	Tsaraniaina Lucas	\N	\N	verenakolucas@gmail.com	\n034 46 581 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:08.929342	2024-06-12 11:45:08.929342	\N	\N	\N	\N	activ__resume_1718192708.pdf	\N	\N	\N
1642	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:09.133575	2024-06-12 11:45:09.133575	\N	\N	\N	\N	activ__resume_1718192709.pdf	\N	\N	\N
1643	Sonya Patricia	\N	\N	sonyapatricia3@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:09.550856	2024-06-12 11:45:09.550856	\N	\N	\N	\N	activ__resume_1718192709.pdf	\N	\N	\N
1644	Christ Fandresena	\N	\N	christfandresena@gmail.com	2019-2020	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:10.01885	2024-06-12 11:45:10.01885	\N	\N	\N	\N	activ__resume_1718192710.pdf	\N	\N	\N
1645	Satelia Fanantenana	\N	\N	satelia.fanant@gmail.com	034 80 708 59	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:10.331045	2024-06-12 11:45:10.331045	\N	\N	\N	\N	activ__resume_1718192710.pdf	\N	\N	\N
1646	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:10.689	2024-06-12 11:45:10.689	\N	\N	\N	\N	activ__resume_1718192710.pdf	\N	\N	\N
1647	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:10.894022	2024-06-12 11:45:10.894022	\N	\N	\N	\N	activ__resume_1718192710.pdf	\N	\N	\N
1648	Chefde Projet	\N	\N	\N	034 95 182 96	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:11.352568	2024-06-12 11:45:11.352568	\N	\N	\N	\N	activ__resume_1718192711.pdf	\N	\N	\N
1649	Santa Lyane	\N	\N	rajhonsonlyane@gmail.com	032 61 883 21	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:11.683221	2024-06-12 11:45:11.683221	\N	\N	\N	\N	activ__resume_1718192711.pdf	\N	\N	\N
1650	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:11.891044	2024-06-12 11:45:11.891044	\N	\N	\N	\N	activ__resume_1718192711.pdf	\N	\N	\N
1651	Henintsoa Murielle	\N	\N	bhmuriellerasolofoson@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:12.302124	2024-06-12 11:45:12.302124	\N	\N	\N	\N	activ__resume_1718192712.pdf	\N	\N	\N
1652	Inconnu	\N	\N	narindra.rktrs@gmail.com	2016-2017	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:12.765532	2024-06-12 11:45:12.765532	\N	\N	\N	\N	activ__resume_1718192712.pdf	\N	\N	\N
1653	Andrian Tsoa	\N	\N	andriaambinintsoa79@gmail.com	261341642325	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:13.118664	2024-06-12 11:45:13.118664	\N	\N	\N	\N	activ__resume_1718192713.pdf	\N	\N	\N
1654	Andriamanarivo Mitantsoa	\N	\N	randriamitantsoarama@gmail.com	0348054900	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:13.39662	2024-06-12 11:45:13.39662	\N	\N	\N	\N	activ__resume_1718192713.pdf	\N	\N	\N
1655	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:13.610578	2024-06-12 11:45:13.610578	\N	\N	\N	\N	activ__resume_1718192713.pdf	\N	\N	\N
1656	Relation Client	\N	\N	lijah.raz@gmail.com	261324474960	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:13.988087	2024-06-12 11:45:13.988087	\N	\N	\N	\N	activ__resume_1718192713.pdf	\N	\N	\N
1657	Me Up	\N	\N	nilainasarobidy@gmail.com	034 45 924 60	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:14.439483	2024-06-12 11:45:14.439483	\N	\N	\N	\N	activ__resume_1718192714.pdf	\N	\N	\N
1658	Felaniaina Domoina	\N	\N	domoina.doom@gmail.com	034 08 008 88	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:14.999505	2024-06-12 11:45:14.999505	\N	\N	\N	\N	activ__resume_1718192714.pdf	\N	\N	\N
1659	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:15.202934	2024-06-12 11:45:15.202934	\N	\N	\N	\N	activ__resume_1718192715.pdf	\N	\N	\N
1660	Sarindra Nirina	\N	\N	rafanomezanjanaharynadya008@gmail.com	261324805892	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:15.590033	2024-06-12 11:45:15.590033	\N	\N	\N	\N	activ__resume_1718192715.pdf	\N	\N	\N
1661	Saint Jean	\N	\N	lucia_ralaivelo@yahoo.fr	034 28 543 28	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:16.024907	2024-06-12 11:45:16.024907	\N	\N	\N	\N	activ__resume_1718192716.pdf	\N	\N	\N
1662	Wibergue Ferdinand	\N	\N	wibergue@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:16.319971	2024-06-12 11:45:16.319971	\N	\N	\N	\N	activ__resume_1718192716.pdf	\N	\N	\N
1663	Marius Romuald	\N	\N	ramiandrasoamarius@gmail.com	034 03 787 84	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:17.185662	2024-06-12 11:45:17.185662	\N	\N	\N	\N	activ__resume_1718192717.pdf	\N	\N	\N
1664	Maminirina Fanja	\N	\N	maminirinafanja@gmail.com	034 93 767 82	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:17.589563	2024-06-12 11:45:17.589563	\N	\N	\N	\N	activ__resume_1718192717.pdf	\N	\N	\N
1665	Intelligence Artificielle	\N	\N	d.rakotozandriny@gmail.com	\n034 90 092 24	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:18.09697	2024-06-12 11:45:18.09697	\N	\N	\N	\N	activ__resume_1718192718.pdf	\N	\N	\N
1666	Soamiampita Andranonahoatra	\N	\N	manantsoa98@gmail.com	261 32 825 50	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:18.50472	2024-06-12 11:45:18.50472	\N	\N	\N	\N	activ__resume_1718192718.pdf	\N	\N	\N
1667	Nyaina Rabarison	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:18.804247	2024-06-12 11:45:18.804247	\N	\N	\N	\N	activ__resume_1718192718.pdf	\N	\N	\N
1668	Tolotra Cedric	\N	\N	tolotracedric20@gmail.com	2013-2015	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:19.121044	2024-06-12 11:45:19.121044	\N	\N	\N	\N	activ__resume_1718192719.pdf	\N	\N	\N
1669	Inconnu	\N	\N	\N	\n048395	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:19.568004	2024-06-12 11:45:19.568004	\N	\N	\N	\N	activ__resume_1718192719.pdf	\N	\N	\N
1670	Pierrot Emmanuel	\N	\N	Manuramangalahy@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:20.0808	2024-06-12 11:45:20.0808	\N	\N	\N	\N	activ__resume_1718192720.pdf	\N	\N	\N
1671	Conseiller Client	\N	\N	\N	034 90 902 16	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:20.522562	2024-06-12 11:45:20.522562	\N	\N	\N	\N	activ__resume_1718192720.pdf	\N	\N	\N
1672	Curriculum Vitae	\N	\N	manourakotoarivao@gmail.com	033 24 005 45	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:20.845146	2024-06-12 11:45:20.845146	\N	\N	\N	\N	activ__resume_1718192720.pdf	\N	\N	\N
1673	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:21.185673	2024-06-12 11:45:21.185673	\N	\N	\N	\N	activ__resume_1718192721.pdf	\N	\N	\N
1674	Fabienne Rakoto	\N	\N	fabienne.wonderbox@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:21.545823	2024-06-12 11:45:21.545823	\N	\N	\N	\N	activ__resume_1718192721.pdf	\N	\N	\N
1675	Joseph Ravoahangy	\N	\N	bazolyrmh@gmail.com	0340234281	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:21.962266	2024-06-12 11:45:21.962266	\N	\N	\N	\N	activ__resume_1718192721.pdf	\N	\N	\N
1676	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:22.165215	2024-06-12 11:45:22.165215	\N	\N	\N	\N	activ__resume_1718192722.pdf	\N	\N	\N
1677	Maminiaina Williams	\N	\N	\N	101 982 095 281	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:22.474015	2024-06-12 11:45:22.474015	\N	\N	\N	\N	activ__resume_1718192722.pdf	\N	\N	\N
1678	Bank Of	\N	\N	Allanrafano@gmail.com	034 65 539 14	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:23.013379	2024-06-12 11:45:23.013379	\N	\N	\N	\N	activ__resume_1718192723.pdf	\N	\N	\N
1679	Business Process	\N	\N	tkyhenintsoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:23.618982	2024-06-12 11:45:23.618982	\N	\N	\N	\N	activ__resume_1718192723.pdf	\N	\N	\N
1680	Ambaniala Itaosy	\N	\N	francoiserah@gmail.com	\n\n034 59	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:23.93094	2024-06-12 11:45:23.93094	\N	\N	\N	\N	activ__resume_1718192723.pdf	\N	\N	\N
1681	Njarasoa Fanomezana	\N	\N	fanomezanarj@gmail.com	034 92 717 20	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:24.615139	2024-06-12 11:45:24.615139	\N	\N	\N	\N	activ__resume_1718192724.pdf	\N	\N	\N
1682	Inconnu	\N	\N	thenitsu4@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:24.97429	2024-06-12 11:45:24.97429	\N	\N	\N	\N	activ__resume_1718192724.pdf	\N	\N	\N
1683	Ressources Humaine	\N	\N	armance1986@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:25.629664	2024-06-12 11:45:25.629664	\N	\N	\N	\N	activ__resume_1718192725.pdf	\N	\N	\N
1684	Teleperformance Madagascar	\N	\N	\N	0337376752	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:26.006036	2024-06-12 11:45:26.006036	\N	\N	\N	\N	activ__resume_1718192726.pdf	\N	\N	\N
1685	Droit Public	\N	\N	natachah.eddie@icloud.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:26.414369	2024-06-12 11:45:26.414369	\N	\N	\N	\N	activ__resume_1718192726.pdf	\N	\N	\N
1686	Orima Christario	\N	\N	silvertownchristario@gmail.com	032 45 720 08	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:26.764985	2024-06-12 11:45:26.764985	\N	\N	\N	\N	activ__resume_1718192726.pdf	\N	\N	\N
1687	Toky Vahatra	\N	\N	rtokyv@gmail.com	0349392192	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:27.127243	2024-06-12 11:45:27.127243	\N	\N	\N	\N	activ__resume_1718192727.pdf	\N	\N	\N
1688	Mirana Liantsoa	\N	\N	liantsoarazafimiandrisoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:27.76385	2024-06-12 11:45:27.76385	\N	\N	\N	\N	activ__resume_1718192727.pdf	\N	\N	\N
1689	Licence Communication	\N	\N	tanterakacaissy@gmail.com	0345854724	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:28.1016	2024-06-12 11:45:28.1016	\N	\N	\N	\N	activ__resume_1718192728.pdf	\N	\N	\N
1690	Relation Client	\N	\N	lijah.raz@gmail.com	261324474960	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:28.471289	2024-06-12 11:45:28.471289	\N	\N	\N	\N	activ__resume_1718192728.pdf	\N	\N	\N
1691	Andoniaina Njara	\N	\N	andoniainanjara@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:28.771076	2024-06-12 11:45:28.771076	\N	\N	\N	\N	activ__resume_1718192728.pdf	\N	\N	\N
1692	Banque Madagascar	\N	\N	\N	2022-2023	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:29.136942	2024-06-12 11:45:29.136942	\N	\N	\N	\N	activ__resume_1718192729.pdf	\N	\N	\N
1693	Carole Wanda	\N	\N	carolerktb@gmail.com	034 62 189 00	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:29.649561	2024-06-12 11:45:29.649561	\N	\N	\N	\N	activ__resume_1718192729.pdf	\N	\N	\N
1694	Assurance Aro	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:30.443948	2024-06-12 11:45:30.443948	\N	\N	\N	\N	activ__resume_1718192730.pdf	\N	\N	\N
1695	Imanoela Esther	\N	\N	soniamuriel5@gmail.com	0380633067	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:30.769244	2024-06-12 11:45:30.769244	\N	\N	\N	\N	activ__resume_1718192730.pdf	\N	\N	\N
1696	Antanetibe Itaosy	\N	\N	mialihantarandria@gmail.com	034 08 953 09	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:31.201227	2024-06-12 11:45:31.201227	\N	\N	\N	\N	activ__resume_1718192731.pdf	\N	\N	\N
1697	Bodo Nandrianina	\N	\N	mahadevynanah@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:31.741445	2024-06-12 11:45:31.741445	\N	\N	\N	\N	activ__resume_1718192731.pdf	\N	\N	\N
1698	Base Client	\N	\N	rabefitiamialy@yahoo.fr	032 51 497 65	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:32.094429	2024-06-12 11:45:32.094429	\N	\N	\N	\N	activ__resume_1718192732.pdf	\N	\N	\N
1699	Ter Ankadikely	\N	\N	\N	032 24 424 90	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:32.623055	2024-06-12 11:45:32.623055	\N	\N	\N	\N	activ__resume_1718192732.pdf	\N	\N	\N
1700	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:32.936991	2024-06-12 11:45:32.936991	\N	\N	\N	\N	activ__resume_1718192732.pdf	\N	\N	\N
1701	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:33.153573	2024-06-12 11:45:33.153573	\N	\N	\N	\N	activ__resume_1718192733.pdf	\N	\N	\N
1702	Tojonirina Marie	\N	\N	\N	034 70 943 03	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:33.569998	2024-06-12 11:45:33.569998	\N	\N	\N	\N	activ__resume_1718192733.pdf	\N	\N	\N
1703	Njaraniaina Fanomezantsoa	\N	\N	\N	034 44 025 04	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:34.054972	2024-06-12 11:45:34.054972	\N	\N	\N	\N	activ__resume_1718192734.pdf	\N	\N	\N
1704	Formation Portfolio	\N	\N	finoana.fifie@gmail.com	034 15 904 53	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:34.478252	2024-06-12 11:45:34.478252	\N	\N	\N	\N	activ__resume_1718192734.pdf	\N	\N	\N
1705	Raymonde Robertina	\N	\N	robertinaraymonde1997@gmail.com	301 052 025 959	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:34.823992	2024-06-12 11:45:34.823992	\N	\N	\N	\N	activ__resume_1718192734.pdf	\N	\N	\N
1706	Tongarivo Tanjombato	\N	\N	bassamlaikah@gmail.com	261346410763	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:35.098246	2024-06-12 11:45:35.098246	\N	\N	\N	\N	activ__resume_1718192735.pdf	\N	\N	\N
1707	John Tiana	\N	\N	johntianarabemanantsoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:35.540177	2024-06-12 11:45:35.540177	\N	\N	\N	\N	activ__resume_1718192735.pdf	\N	\N	\N
1708	Bluelink Air	\N	\N	patriciaramaroson72@gmail.com	347182792	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:35.911539	2024-06-12 11:45:35.911539	\N	\N	\N	\N	activ__resume_1718192735.pdf	\N	\N	\N
1709	Davida Robinson	\N	\N	\N	101 221 124 225	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:36.197108	2024-06-12 11:45:36.197108	\N	\N	\N	\N	activ__resume_1718192736.pdf	\N	\N	\N
1710	Usine Ambohimamory	\N	\N	\N	0381514137	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:36.680894	2024-06-12 11:45:36.680894	\N	\N	\N	\N	activ__resume_1718192736.pdf	\N	\N	\N
1711	Cliente Chez	\N	\N	\N	0347571606	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:37.074601	2024-06-12 11:45:37.074601	\N	\N	\N	\N	activ__resume_1718192737.pdf	\N	\N	\N
1712	Maholy Jessica	\N	\N	\N	117 152 021 341	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:37.425405	2024-06-12 11:45:37.425405	\N	\N	\N	\N	activ__resume_1718192737.pdf	\N	\N	\N
1713	Marie Raelle	\N	\N	marieraellerav@gmail.com	261328736661	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:37.670604	2024-06-12 11:45:37.670604	\N	\N	\N	\N	activ__resume_1718192737.pdf	\N	\N	\N
1714	Antananarivo Atsimondrano	\N	\N	rakotonandrasanatokiniaina@gmail.com	2020-11	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:38.042059	2024-06-12 11:45:38.042059	\N	\N	\N	\N	activ__resume_1718192738.pdf	\N	\N	\N
1715	Niaina Mamy	\N	\N	ralambomamyniainamamy@gmail.com	032 71 507 05	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:38.473162	2024-06-12 11:45:38.473162	\N	\N	\N	\N	activ__resume_1718192738.pdf	\N	\N	\N
1716	Inconnu	\N	\N	ramiandrasoa16@gmail.com	032 27 324 76	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:38.892231	2024-06-12 11:45:38.892231	\N	\N	\N	\N	activ__resume_1718192738.pdf	\N	\N	\N
1717	Tahina Marinah	\N	\N	\N	034 33 089 23	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:39.293049	2024-06-12 11:45:39.293049	\N	\N	\N	\N	activ__resume_1718192739.pdf	\N	\N	\N
1718	Bis Ankadindramamy	\N	\N	louviaah@gmail.com	0325125034	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:39.659428	2024-06-12 11:45:39.659428	\N	\N	\N	\N	activ__resume_1718192739.pdf	\N	\N	\N
1719	Ecole Nationale	\N	\N	sylviavalisoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:40.236998	2024-06-12 11:45:40.236998	\N	\N	\N	\N	activ__resume_1718192740.pdf	\N	\N	\N
1720	Antanetibe Ilafy	\N	\N	Rsariaka03@gmail.com	 2022 31	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:40.705186	2024-06-12 11:45:40.705186	\N	\N	\N	\N	activ__resume_1718192740.pdf	\N	\N	\N
1721	Itaosy Amboatavo	\N	\N	vonianja02@gmail.com	034 40 033 55	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:41.074596	2024-06-12 11:45:41.074596	\N	\N	\N	\N	activ__resume_1718192741.pdf	\N	\N	\N
1722	Inconnu	\N	\N	\N	101982109732	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:41.422841	2024-06-12 11:45:41.422841	\N	\N	\N	\N	activ__resume_1718192741.pdf	\N	\N	\N
1723	Maholiarivelo Zo	\N	\N	izahosynytontolo@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:41.960162	2024-06-12 11:45:41.960162	\N	\N	\N	\N	activ__resume_1718192741.pdf	\N	\N	\N
1724	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:42.265489	2024-06-12 11:45:42.265489	\N	\N	\N	\N	activ__resume_1718192742.pdf	\N	\N	\N
1725	Fanomezantsoa Hanitriniala	\N	\N	\N	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:42.596456	2024-06-12 11:45:42.596456	\N	\N	\N	\N	activ__resume_1718192742.pdf	\N	\N	\N
1726	Inconnu	\N	\N	\N	215218	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:42.853242	2024-06-12 11:45:42.853242	\N	\N	\N	\N	activ__resume_1718192742.pdf	\N	\N	\N
1727	Mandresy Herilala	\N	\N	mr.mandresy@gmail.com	0346127357	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:43.316189	2024-06-12 11:45:43.316189	\N	\N	\N	\N	activ__resume_1718192743.pdf	\N	\N	\N
1728	Finaritra Kantoniaina	\N	\N	ravelonandrokantoniaina@gmail.com	2011-2012	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:43.809842	2024-06-12 11:45:43.809842	\N	\N	\N	\N	activ__resume_1718192743.pdf	\N	\N	\N
1729	Relation Client	\N	\N	raonison.steph@gmail.com	0346676350	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:44.16612	2024-06-12 11:45:44.16612	\N	\N	\N	\N	activ__resume_1718192744.pdf	\N	\N	\N
1730	Rajeriarison Hasina	\N	\N	hasinaraj0401@gmail.com	261344132299	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:44.480522	2024-06-12 11:45:44.480522	\N	\N	\N	\N	activ__resume_1718192744.pdf	\N	\N	\N
1731	Situation Matrimoniale	\N	\N	\N	0324594892	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:44.765966	2024-06-12 11:45:44.765966	\N	\N	\N	\N	activ__resume_1718192744.pdf	\N	\N	\N
1732	Rado Valisoa	\N	\N	rrv.travail15@gmail.com	261 34	\N	II J 149 NI	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:45.215831	2024-06-12 11:45:45.215831	\N	\N	\N	\N	activ__resume_1718192745.pdf	\N	\N	\N
1733	Lucia Rasoamananjara	\N	\N	yisraelsarah740@gmail.com	0388597471	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:45.49677	2024-06-12 11:45:45.49677	\N	\N	\N	\N	activ__resume_1718192745.pdf	\N	\N	\N
1734	Marie Stopes	\N	\N	abigaellerabes@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:45.811565	2024-06-12 11:45:45.811565	\N	\N	\N	\N	activ__resume_1718192745.pdf	\N	\N	\N
1735	Etude Scientifique	\N	\N	ravakarandrianarison5@gmail.com	\n  2013-2017	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:46.137569	2024-06-12 11:45:46.137569	\N	\N	\N	\N	activ__resume_1718192746.pdf	\N	\N	\N
1736	Herinala Setra	\N	\N	herinalas@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:46.780341	2024-06-12 11:45:46.780341	\N	\N	\N	\N	activ__resume_1718192746.pdf	\N	\N	\N
1737	Assistante Technique	\N	\N	njarasoa204@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:47.17913	2024-06-12 11:45:47.17913	\N	\N	\N	\N	activ__resume_1718192747.pdf	\N	\N	\N
1738	Malala Katyucia	\N	\N	katyuciarandria@gmail.com	\n033 84 355 38	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:47.815843	2024-06-12 11:45:47.815843	\N	\N	\N	\N	activ__resume_1718192747.pdf	\N	\N	\N
1739	Famille Mahamasina	\N	\N	felanafitia29@gmail.com	032 61 105 92	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:48.161665	2024-06-12 11:45:48.161665	\N	\N	\N	\N	activ__resume_1718192748.pdf	\N	\N	\N
1740	Henintsoa Lucia	\N	\N	hentsoarnelle@gmail.com	0341500435	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:48.488071	2024-06-12 11:45:48.488071	\N	\N	\N	\N	activ__resume_1718192748.pdf	\N	\N	\N
1741	Minosoa Ny	\N	\N	mino.raveloarison@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:48.94742	2024-06-12 11:45:48.94742	\N	\N	\N	\N	activ__resume_1718192748.pdf	\N	\N	\N
1742	Nirina Mbolanoro	\N	\N	mbolaandriamahenina123@gmail.com	033 21 303 02	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:49.767939	2024-06-12 11:45:49.767939	\N	\N	\N	\N	activ__resume_1718192749.pdf	\N	\N	\N
1743	Ambohimitsinjo Ambohimanarina	\N	\N	andonirinaraheliarisoa.s@gmail.com	0327442350	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:50.317573	2024-06-12 11:45:50.317573	\N	\N	\N	\N	activ__resume_1718192750.pdf	\N	\N	\N
1744	Florence Tanya	\N	\N	Tanyarzf@gmail.com	2021-05	\N	II J 82 Y	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:50.657272	2024-06-12 11:45:50.657272	\N	\N	\N	\N	activ__resume_1718192750.pdf	\N	\N	\N
1745	Gestion Commerciale	\N	\N	randriatandrarojoniaina@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:51.260511	2024-06-12 11:45:51.260511	\N	\N	\N	\N	activ__resume_1718192751.pdf	\N	\N	\N
1746	Anja Ny	\N	\N	\N	103012006431	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:51.590767	2024-06-12 11:45:51.590767	\N	\N	\N	\N	activ__resume_1718192751.pdf	\N	\N	\N
1747	Inconnu	\N	\N	franciaandrianjafiravaka2@gmail.com	0325841179	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:51.897205	2024-06-12 11:45:51.897205	\N	\N	\N	\N	activ__resume_1718192751.pdf	\N	\N	\N
1748	Tina Jimmy	\N	\N	jimmyrazafindramboa8@gmail.com	0347922259	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:52.462388	2024-06-12 11:45:52.462388	\N	\N	\N	\N	activ__resume_1718192752.pdf	\N	\N	\N
1749	Nantenaina Andriamanalina	\N	\N	nainanante257@gmail.com	261344104447	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:52.794341	2024-06-12 11:45:52.794341	\N	\N	\N	\N	activ__resume_1718192752.pdf	\N	\N	\N
1750	Mention Assez	\N	\N	ralisonhoby03@gmail.com	261 032 02	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:53.323922	2024-06-12 11:45:53.323922	\N	\N	\N	\N	activ__resume_1718192753.pdf	\N	\N	\N
1751	Eva Ny	\N	\N	\N	034 50 200 48	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:53.709004	2024-06-12 11:45:53.709004	\N	\N	\N	\N	activ__resume_1718192753.pdf	\N	\N	\N
1752	Rudy Robsell	\N	\N	rudyrobs@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:55.447054	2024-06-12 11:45:55.447054	\N	\N	\N	\N	activ__resume_1718192755.pdf	\N	\N	\N
1753	Ambohibao Ambohijanahary	\N	\N	aswanthimote@gmail.com	034 12 559 50	\N	299 A	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:55.892839	2024-06-12 11:45:55.892839	\N	\N	\N	\N	activ__resume_1718192755.pdf	\N	\N	\N
1754	Baptiste Albertine	\N	\N	\N	0324668816	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:56.123735	2024-06-12 11:45:56.123735	\N	\N	\N	\N	activ__resume_1718192756.pdf	\N	\N	\N
1755	Hasina Nalisoa	\N	\N	\N	117 072 021 531	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:56.458205	2024-06-12 11:45:56.458205	\N	\N	\N	\N	activ__resume_1718192756.pdf	\N	\N	\N
1756	Fara Nantenaina	\N	\N	nantenainaranaivoson339@gmail.com	034 08 099 69	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:56.816362	2024-06-12 11:45:56.816362	\N	\N	\N	\N	activ__resume_1718192756.pdf	\N	\N	\N
1757	Zo Mamilalaina	\N	\N	zorivomiarantsoa@gmail.com	032 51 021 05	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:57.114103	2024-06-12 11:45:57.114103	\N	\N	\N	\N	activ__resume_1718192757.pdf	\N	\N	\N
1758	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:57.360009	2024-06-12 11:45:57.360009	\N	\N	\N	\N	activ__resume_1718192757.pdf	\N	\N	\N
1759	Assistante Technique	\N	\N	njarasoa204@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:57.755547	2024-06-12 11:45:57.755547	\N	\N	\N	\N	activ__resume_1718192757.pdf	\N	\N	\N
1760	Tsitohaina Jeanne	\N	\N	ainaftjr@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:58.009049	2024-06-12 11:45:58.009049	\N	\N	\N	\N	activ__resume_1718192758.pdf	\N	\N	\N
1761	Angelot Steward	\N	\N	rzfhiro@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:58.543952	2024-06-12 11:45:58.543952	\N	\N	\N	\N	activ__resume_1718192758.pdf	\N	\N	\N
1762	Licence Professionnelle	\N	\N	nantenainarakoto371@gmail.com	034 23 904 57	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:45:58.884297	2024-06-12 11:45:58.884297	\N	\N	\N	\N	activ__resume_1718192758.pdf	\N	\N	\N
1763	Diego Suarez	\N	\N	\N	715 031 025 945	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:45:59.263903	2024-06-12 11:45:59.263903	\N	\N	\N	\N	activ__resume_1718192759.pdf	\N	\N	\N
1764	Ter Sonierana	\N	\N	julinirina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:00.317779	2024-06-12 11:46:00.317779	\N	\N	\N	\N	activ__resume_1718192760.pdf	\N	\N	\N
1765	Falinirina Marc	\N	\N	falyraza12@gmail.com	032 28 752 56	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:01.05826	2024-06-12 11:46:01.05826	\N	\N	\N	\N	activ__resume_1718192761.pdf	\N	\N	\N
1766	Rojo Miarisoa	\N	\N	rakotoniainrojomiarisoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:01.557543	2024-06-12 11:46:01.557543	\N	\N	\N	\N	activ__resume_1718192761.pdf	\N	\N	\N
1767	Mirindra Mampihiratra	\N	\N	mampihiritra95@gmail.com	\n  032 96	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:01.993078	2024-06-12 11:46:01.993078	\N	\N	\N	\N	activ__resume_1718192761.pdf	\N	\N	\N
1768	Madagascar De	\N	\N	maevarkto@gmail.com	261345675212	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:02.391807	2024-06-12 11:46:02.391807	\N	\N	\N	\N	activ__resume_1718192762.pdf	\N	\N	\N
1769	Nirina Voahirana	\N	\N	voahiranaeko@yahoo.fr	034 14 719 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:02.799313	2024-06-12 11:46:02.799313	\N	\N	\N	\N	activ__resume_1718192762.pdf	\N	\N	\N
1770	David Bastien	\N	\N	davidbastienrazanakoto@rocketmail.com	0348003666	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:03.173446	2024-06-12 11:46:03.173446	\N	\N	\N	\N	activ__resume_1718192763.pdf	\N	\N	\N
1771	Mbolatiana Michel	\N	\N	orlandoandriamamonjisoa@gmail.com	26134 75	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:03.646632	2024-06-12 11:46:03.646632	\N	\N	\N	\N	activ__resume_1718192763.pdf	\N	\N	\N
1772	La Teleperformance	\N	\N	\N	0381342877	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:04.032503	2024-06-12 11:46:04.032503	\N	\N	\N	\N	activ__resume_1718192764.pdf	\N	\N	\N
1773	Rova Hanitriniaina	\N	\N	rovanantsoa@gmail.com	103072019577	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:04.381207	2024-06-12 11:46:04.381207	\N	\N	\N	\N	activ__resume_1718192764.pdf	\N	\N	\N
1774	Informatique Bureautique	\N	\N	Olivierrandriana1@gmail.com	034 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:04.701214	2024-06-12 11:46:04.701214	\N	\N	\N	\N	activ__resume_1718192764.pdf	\N	\N	\N
1775	Autisme Madagascar	\N	\N	soloforan89@gmail.com	261346238085	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:05.287966	2024-06-12 11:46:05.287966	\N	\N	\N	\N	activ__resume_1718192765.pdf	\N	\N	\N
1776	Fenitra Henitsoa	\N	\N	andriamalalafenitra12@gmail.com	038 13 429 28	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:05.622868	2024-06-12 11:46:05.622868	\N	\N	\N	\N	activ__resume_1718192765.pdf	\N	\N	\N
1777	North South	\N	\N	rakotoniainarebecca504@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:05.982907	2024-06-12 11:46:05.982907	\N	\N	\N	\N	activ__resume_1718192765.pdf	\N	\N	\N
1778	Karen Rajeminasolonirina	\N	\N	karenraraj2000@gmail.com	0385761647	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:06.411159	2024-06-12 11:46:06.411159	\N	\N	\N	\N	activ__resume_1718192766.pdf	\N	\N	\N
1779	Jonah Pareseau	\N	\N	r.jonah.cat@gmail.com	032 21 432 53	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:07.063613	2024-06-12 11:46:07.063613	\N	\N	\N	\N	activ__resume_1718192767.pdf	\N	\N	\N
1780	Curriculum Vitae	\N	\N	\N	0328631743	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:07.395614	2024-06-12 11:46:07.395614	\N	\N	\N	\N	activ__resume_1718192767.pdf	\N	\N	\N
1781	Teleperformance Madagascar	\N	\N	\N	0337376752	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:07.773142	2024-06-12 11:46:07.773142	\N	\N	\N	\N	activ__resume_1718192767.pdf	\N	\N	\N
1782	Fanomezantsoa Jean	\N	\N	\N	032 79 015 23	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:08.160516	2024-06-12 11:46:08.160516	\N	\N	\N	\N	activ__resume_1718192768.pdf	\N	\N	\N
1783	Rs Lyriand	\N	\N	raslyriand@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:08.502382	2024-06-12 11:46:08.502382	\N	\N	\N	\N	activ__resume_1718192768.pdf	\N	\N	\N
1784	Spoken English	\N	\N	jsetra6@gmail.com	2019-2020	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:08.951092	2024-06-12 11:46:08.951092	\N	\N	\N	\N	activ__resume_1718192768.pdf	\N	\N	\N
1785	Inconnu	\N	\N	rakotoantonio.joelina@gmail.com	26134 12	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:09.305057	2024-06-12 11:46:09.305057	\N	\N	\N	\N	activ__resume_1718192769.pdf	\N	\N	\N
1786	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:09.623288	2024-06-12 11:46:09.623288	\N	\N	\N	\N	activ__resume_1718192769.pdf	\N	\N	\N
1787	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:09.818962	2024-06-12 11:46:09.818962	\N	\N	\N	\N	activ__resume_1718192769.pdf	\N	\N	\N
1788	Madame Bodo	\N	\N	\N	034 27 444 17	\N	449	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:10.403325	2024-06-12 11:46:10.403325	\N	\N	\N	\N	activ__resume_1718192770.pdf	\N	\N	\N
1789	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:10.600864	2024-06-12 11:46:10.600864	\N	\N	\N	\N	activ__resume_1718192770.pdf	\N	\N	\N
1790	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:10.802914	2024-06-12 11:46:10.802914	\N	\N	\N	\N	activ__resume_1718192770.pdf	\N	\N	\N
1791	Feno Herintsoa	\N	\N	rafenoherintsoa@gmail.com	033 02 032 89	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:11.169251	2024-06-12 11:46:11.169251	\N	\N	\N	\N	activ__resume_1718192771.pdf	\N	\N	\N
1792	Inconnu	\N	\N	arminahratsimbazafy@gmail.co	\n 0345099969	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:11.525636	2024-06-12 11:46:11.525636	\N	\N	\N	\N	activ__resume_1718192771.pdf	\N	\N	\N
1793	Etude Professionnel	\N	\N	mady.rasolo@gmail.com	2015-2017	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:12.085672	2024-06-12 11:46:12.085672	\N	\N	\N	\N	activ__resume_1718192772.pdf	\N	\N	\N
1794	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:12.299652	2024-06-12 11:46:12.299652	\N	\N	\N	\N	activ__resume_1718192772.pdf	\N	\N	\N
1795	Manampisoa Veroniaina	\N	\N	manampisoanirina10@gmail.com	0345472399	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:12.645952	2024-06-12 11:46:12.645952	\N	\N	\N	\N	activ__resume_1718192772.pdf	\N	\N	\N
1796	Andrianina Mamintsoa	\N	\N	andrianina.rabariveIo@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:13.324732	2024-06-12 11:46:13.324732	\N	\N	\N	\N	activ__resume_1718192773.pdf	\N	\N	\N
1797	Institute Of	\N	\N	felanarajo55@gmail.com	034 28 605 10	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:13.705118	2024-06-12 11:46:13.705118	\N	\N	\N	\N	activ__resume_1718192773.pdf	\N	\N	\N
1798	Miora Tiana	\N	\N	\N	26133 02	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:14.112255	2024-06-12 11:46:14.112255	\N	\N	\N	\N	activ__resume_1718192774.pdf	\N	\N	\N
1799	Lanjaniaina Paule	\N	\N	lanjaniainaratsimanosika@gmail.com	101 212 199 145	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:14.473969	2024-06-12 11:46:14.473969	\N	\N	\N	\N	activ__resume_1718192774.pdf	\N	\N	\N
1800	Community Manager	\N	\N	steevenarison@gmail.com	032 94 201 67	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:14.873095	2024-06-12 11:46:14.873095	\N	\N	\N	\N	activ__resume_1718192774.pdf	\N	\N	\N
1801	Me Up	\N	\N	nilainasarobidy@gmail.com	034 45 924 60	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:15.314301	2024-06-12 11:46:15.314301	\N	\N	\N	\N	activ__resume_1718192775.pdf	\N	\N	\N
1802	Formation Initiale	\N	\N	Washingtonkenny27@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:15.639665	2024-06-12 11:46:15.639665	\N	\N	\N	\N	activ__resume_1718192775.pdf	\N	\N	\N
1803	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:15.844632	2024-06-12 11:46:15.844632	\N	\N	\N	\N	activ__resume_1718192775.pdf	\N	\N	\N
1804	Hanitry Ny	\N	\N	selshonandrianasoloNy@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:16.203413	2024-06-12 11:46:16.203413	\N	\N	\N	\N	activ__resume_1718192776.pdf	\N	\N	\N
1805	Ankadikely Ilafy	\N	\N	randoniainahasminah@gmail.com	261 34 320 14	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:16.456742	2024-06-12 11:46:16.456742	\N	\N	\N	\N	activ__resume_1718192776.pdf	\N	\N	\N
1806	Teleshopping France	\N	\N	antoniavolazara@yahoo.fr	0341809713	\N	Inconnue	https://www.facebook.com/vola.andrian	https://www.linkedin.com/in/antonia-	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:16.817107	2024-06-12 11:46:16.817107	\N	\N	\N	\N	activ__resume_1718192776.pdf	\N	\N	\N
1807	Assistante Marketing	\N	\N	\N	20202021	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:17.264279	2024-06-12 11:46:17.264279	\N	\N	\N	\N	activ__resume_1718192777.pdf	\N	\N	\N
1808	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:17.461684	2024-06-12 11:46:17.461684	\N	\N	\N	\N	activ__resume_1718192777.pdf	\N	\N	\N
1809	Jean Florent	\N	\N	andrianambininajeanflorent@gmail.com	034 99 315 91	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:17.993697	2024-06-12 11:46:17.993697	\N	\N	\N	\N	activ__resume_1718192777.pdf	\N	\N	\N
1810	Date De	\N	\N	raissaandonantenaina50@gmail.com	\n\n0384175589	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:18.406522	2024-06-12 11:46:18.406522	\N	\N	\N	\N	activ__resume_1718192778.pdf	\N	\N	\N
1811	Toky Nantenaina	\N	\N	mctoky@gmail.com	032 91 063 78	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:18.811639	2024-06-12 11:46:18.811639	\N	\N	\N	\N	activ__resume_1718192778.pdf	\N	\N	\N
1812	Dr Herinirina	\N	\N	ahf.hents@gmail.com	0341226021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:19.30062	2024-06-12 11:46:19.30062	\N	\N	\N	\N	activ__resume_1718192779.pdf	\N	\N	\N
1813	Human Resources	\N	\N	mimich.rlina@gmail.com	032 44 993 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:19.812881	2024-06-12 11:46:19.812881	\N	\N	\N	\N	activ__resume_1718192779.pdf	\N	\N	\N
1814	Muriel Sandrine	\N	\N	murisan33@gmail.com	034 10 491 16	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:20.176141	2024-06-12 11:46:20.176141	\N	\N	\N	\N	activ__resume_1718192780.pdf	\N	\N	\N
1815	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:20.388508	2024-06-12 11:46:20.388508	\N	\N	\N	\N	activ__resume_1718192780.pdf	\N	\N	\N
1816	Fiononana Soloaina	\N	\N	\N	034 53 926 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:20.707866	2024-06-12 11:46:20.707866	\N	\N	\N	\N	activ__resume_1718192780.pdf	\N	\N	\N
1817	Rado Valisoa	\N	\N	rrv.travail15@gmail.com	261 34	\N	II J 149 NI	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:21.119068	2024-06-12 11:46:21.119068	\N	\N	\N	\N	activ__resume_1718192781.pdf	\N	\N	\N
1818	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:21.319489	2024-06-12 11:46:21.319489	\N	\N	\N	\N	activ__resume_1718192781.pdf	\N	\N	\N
1819	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:21.500166	2024-06-12 11:46:21.500166	\N	\N	\N	\N	activ__resume_1718192781.pdf	\N	\N	\N
1820	Inconnu	\N	\N	\N	391325	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:21.82054	2024-06-12 11:46:21.82054	\N	\N	\N	\N	activ__resume_1718192781.pdf	\N	\N	\N
1821	Arcade Ambohimanarina	\N	\N	\N	349471102	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:22.125329	2024-06-12 11:46:22.125329	\N	\N	\N	\N	activ__resume_1718192782.pdf	\N	\N	\N
1822	Don Siriphile	\N	\N	larmalzaisteff@gmail.com	034 82 453 42	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:22.720452	2024-06-12 11:46:22.720452	\N	\N	\N	\N	activ__resume_1718192782.pdf	\N	\N	\N
1823	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:22.915138	2024-06-12 11:46:22.915138	\N	\N	\N	\N	activ__resume_1718192782.pdf	\N	\N	\N
1824	Madagascar Group	\N	\N	\N	101 221 131 442	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:23.167255	2024-06-12 11:46:23.167255	\N	\N	\N	\N	activ__resume_1718192783.pdf	\N	\N	\N
1825	Inconnu	\N	\N	tanjonamailpro@gmail.com	101 212 239 558	\N	IBG 111 Amboasarikely	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:23.476529	2024-06-12 11:46:23.476529	\N	\N	\N	\N	activ__resume_1718192783.pdf	\N	\N	\N
1826	Bis Anosy	\N	\N	hardyandriantsoa@gmail.com	261321877217	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:23.920121	2024-06-12 11:46:23.920121	\N	\N	\N	\N	activ__resume_1718192783.pdf	\N	\N	\N
1827	Sariaka Soandry	\N	\N	soandriamirado@gmail.com	034 83 038 87	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:24.477617	2024-06-12 11:46:24.477617	\N	\N	\N	\N	activ__resume_1718192784.pdf	\N	\N	\N
1828	Ambohimanandray Ambohimanarina	\N	\N	\N	0345200382	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:24.929662	2024-06-12 11:46:24.929662	\N	\N	\N	\N	activ__resume_1718192784.pdf	\N	\N	\N
1829	Volotara Andoharanofotsy	\N	\N	ratefinanaharyjoelson@gmail.com	034 08 036 66	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:25.218957	2024-06-12 11:46:25.218957	\N	\N	\N	\N	activ__resume_1718192785.pdf	\N	\N	\N
1830	Patrick Cotrelle	\N	\N	boska.bossa@gmail.com	034 62 570 62	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:25.688588	2024-06-12 11:46:25.688588	\N	\N	\N	\N	activ__resume_1718192785.pdf	\N	\N	\N
1831	Ter Ambohijanaka	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:25.956153	2024-06-12 11:46:25.956153	\N	\N	\N	\N	activ__resume_1718192785.pdf	\N	\N	\N
1832	Inconnu	\N	\N	\N	034-92-737-91	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:26.279684	2024-06-12 11:46:26.279684	\N	\N	\N	\N	activ__resume_1718192786.pdf	\N	\N	\N
1833	Ny Aina	\N	\N	nyainarazakamanana@gmail.com	032 07 567 93	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:26.666361	2024-06-12 11:46:26.666361	\N	\N	\N	\N	activ__resume_1718192786.pdf	\N	\N	\N
2034	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:44.407208	2024-06-12 11:47:44.407208	\N	\N	\N	\N	activ__resume_1718192864.pdf	\N	\N	\N
1834	Institut National	\N	\N	jay.raharison@gmail.com	0327025810	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:27.065253	2024-06-12 11:46:27.065253	\N	\N	\N	\N	activ__resume_1718192787.pdf	\N	\N	\N
1835	Assistante Virtuelle	\N	\N	rovahari2@gmail.com	034 84 087 67	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:27.5093	2024-06-12 11:46:27.5093	\N	\N	\N	\N	activ__resume_1718192787.pdf	\N	\N	\N
1836	Hotel Carlton	\N	\N	\N	0343176228	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:27.822576	2024-06-12 11:46:27.822576	\N	\N	\N	\N	activ__resume_1718192787.pdf	\N	\N	\N
1837	Fenosoa Tanya	\N	\N	andriamiadanatanya@gmail.com	0342754332	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:28.064212	2024-06-12 11:46:28.064212	\N	\N	\N	\N	activ__resume_1718192788.pdf	\N	\N	\N
1838	Analamahitsy Tanana	\N	\N	mbolatianamyriah10@gmail.com	034 11 594 68	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:28.556269	2024-06-12 11:46:28.556269	\N	\N	\N	\N	activ__resume_1718192788.pdf	\N	\N	\N
1839	Tsiory Malala	\N	\N	malalaerica@yahoo.com	032 66 939 00	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:28.863724	2024-06-12 11:46:28.863724	\N	\N	\N	\N	activ__resume_1718192788.pdf	\N	\N	\N
1840	Conseiller Technique	\N	\N	nirinamanantenarajernerson@gmail.com	034 40 962 35	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:29.170984	2024-06-12 11:46:29.170984	\N	\N	\N	\N	activ__resume_1718192789.pdf	\N	\N	\N
1841	Maitrise Word	\N	\N	nasandratraramanantsoa@gmail.com	0346422663	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:29.428921	2024-06-12 11:46:29.428921	\N	\N	\N	\N	activ__resume_1718192789.pdf	\N	\N	\N
1842	Histoire Archivistique	\N	\N	sasha.mitsiky@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:29.811899	2024-06-12 11:46:29.811899	\N	\N	\N	\N	activ__resume_1718192789.pdf	\N	\N	\N
1843	Rakotoniaintahiry Nomenjanahary	\N	\N	\N	0342213682	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:30.09674	2024-06-12 11:46:30.09674	\N	\N	\N	\N	activ__resume_1718192790.pdf	\N	\N	\N
1844	Betsileo Miray	\N	\N	noelyramami@gmail.com	034 71 200 30	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:30.464071	2024-06-12 11:46:30.464071	\N	\N	\N	\N	activ__resume_1718192790.pdf	\N	\N	\N
1845	Martin Luther	\N	\N	olivianarob@gmail.com	101 222 117 757	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:30.82071	2024-06-12 11:46:30.82071	\N	\N	\N	\N	activ__resume_1718192790.pdf	\N	\N	\N
1846	Mamitiana Sandra	\N	\N	andrianantoandrosandra@gmail.com	032 89 151 83	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:31.755361	2024-06-12 11:46:31.755361	\N	\N	\N	\N	activ__resume_1718192791.pdf	\N	\N	\N
1847	Relation Client	\N	\N	milantean@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:32.059246	2024-06-12 11:46:32.059246	\N	\N	\N	\N	activ__resume_1718192792.pdf	\N	\N	\N
1848	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:32.387841	2024-06-12 11:46:32.387841	\N	\N	\N	\N	activ__resume_1718192792.pdf	\N	\N	\N
1849	Area Andohatapenaka	\N	\N	\N	\n034 67 966 87	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:33.166645	2024-06-12 11:46:33.166645	\N	\N	\N	\N	activ__resume_1718192793.pdf	\N	\N	\N
1850	Inconnu	\N	\N	\N	032 91 114 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:33.692813	2024-06-12 11:46:33.692813	\N	\N	\N	\N	activ__resume_1718192793.pdf	\N	\N	\N
1851	Tinah Christelle	\N	\N	tinahchristelle62@gmail.com	261327691297	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:34.34641	2024-06-12 11:46:34.34641	\N	\N	\N	\N	activ__resume_1718192794.pdf	\N	\N	\N
1852	Mariussa Jhesney	\N	\N	famindramariussa26@gmail.com	0326348440	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:34.683983	2024-06-12 11:46:34.683983	\N	\N	\N	\N	activ__resume_1718192794.pdf	\N	\N	\N
1853	Famille Mahamasina	\N	\N	felanafitia29@gmail.com	032 61 105 92	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:34.951724	2024-06-12 11:46:34.951724	\N	\N	\N	\N	activ__resume_1718192794.pdf	\N	\N	\N
1854	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:35.151292	2024-06-12 11:46:35.151292	\N	\N	\N	\N	activ__resume_1718192795.pdf	\N	\N	\N
1855	Inconnu	\N	\N	randrianarison.nlmj@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:35.481312	2024-06-12 11:46:35.481312	\N	\N	\N	\N	activ__resume_1718192795.pdf	\N	\N	\N
1856	Lot Ivn	\N	\N	Tiandraycedric@gmail.com	034 26 075 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:35.735205	2024-06-12 11:46:35.735205	\N	\N	\N	\N	activ__resume_1718192795.pdf	\N	\N	\N
1857	Bis Anjanahary	\N	\N	rajaonarivelo18@gmail.com	032 42 418 29	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:36.129999	2024-06-12 11:46:36.129999	\N	\N	\N	\N	activ__resume_1718192796.pdf	\N	\N	\N
1858	Herivao Tahina	\N	\N	\N	101 982 099 548	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:36.409791	2024-06-12 11:46:36.409791	\N	\N	\N	\N	activ__resume_1718192796.pdf	\N	\N	\N
1859	School Mahajanga	\N	\N	Annierazafindrasoa96@gmail.com	0341685624	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:36.747184	2024-06-12 11:46:36.747184	\N	\N	\N	\N	activ__resume_1718192796.pdf	\N	\N	\N
1860	Koloina Liantsoa	\N	\N	koloinaliantsoa0@gmail.com	101 252 178 970	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:37.219603	2024-06-12 11:46:37.219603	\N	\N	\N	\N	activ__resume_1718192797.pdf	\N	\N	\N
1861	Voahangivola Ony	\N	\N	ounymahefa@gmail.com	\n\n034 21	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:37.590967	2024-06-12 11:46:37.590967	\N	\N	\N	\N	activ__resume_1718192797.pdf	\N	\N	\N
1862	Zoe Delor	\N	\N	zoedelor2@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:37.876072	2024-06-12 11:46:37.876072	\N	\N	\N	\N	activ__resume_1718192797.pdf	\N	\N	\N
1863	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:38.056089	2024-06-12 11:46:38.056089	\N	\N	\N	\N	activ__resume_1718192798.pdf	\N	\N	\N
1864	Xavier Antanimena	\N	\N	\N	2017-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:38.427249	2024-06-12 11:46:38.427249	\N	\N	\N	\N	activ__resume_1718192798.pdf	\N	\N	\N
1865	Ambanja Madagascar	\N	\N	vmireillezarasoa@gmail.com	2015-2018	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:38.696886	2024-06-12 11:46:38.696886	\N	\N	\N	\N	activ__resume_1718192798.pdf	\N	\N	\N
1866	Ny Hasina	\N	\N	\N	0342965725	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:39.052007	2024-06-12 11:46:39.052007	\N	\N	\N	\N	activ__resume_1718192799.pdf	\N	\N	\N
1867	Mahabo Andoharanofotsy	\N	\N	ijarisoa4@gmail.com	38 68 268 28	\N	MB 127 Mahabo Andoharanofotsy	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:40.110144	2024-06-12 11:46:40.110144	\N	\N	\N	\N	activ__resume_1718192800.pdf	\N	\N	\N
1868	Bis Andrononobe	\N	\N	harylivaandrianandraina@yahoo.fr	0346874494	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:40.57355	2024-06-12 11:46:40.57355	\N	\N	\N	\N	activ__resume_1718192800.pdf	\N	\N	\N
1869	Expert Process	\N	\N	joanfanilo@yahoo.com	261349872829	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:41.211292	2024-06-12 11:46:41.211292	\N	\N	\N	\N	activ__resume_1718192801.pdf	\N	\N	\N
1870	Satelia Fanantenana	\N	\N	satelia.fanant@gmail.com	034 80 708 59	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:41.495574	2024-06-12 11:46:41.495574	\N	\N	\N	\N	activ__resume_1718192801.pdf	\N	\N	\N
1871	Adventiste Fianarantsoa	\N	\N	niainafleurette@gmail.com	0349851580	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:41.848668	2024-06-12 11:46:41.848668	\N	\N	\N	\N	activ__resume_1718192801.pdf	\N	\N	\N
1872	Hanitra Niaina	\N	\N	rhnlola@gmail.com	034 45 838 48	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:42.335034	2024-06-12 11:46:42.335034	\N	\N	\N	\N	activ__resume_1718192802.pdf	\N	\N	\N
1873	Antananarivo Antananarivo	\N	\N	pattieclara@gmail.com	0344559142	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:42.6505	2024-06-12 11:46:42.6505	\N	\N	\N	\N	activ__resume_1718192802.pdf	\N	\N	\N
1874	Muriel Sandrine	\N	\N	murisan33@gmail.com	034 10 491 16	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:42.940645	2024-06-12 11:46:42.940645	\N	\N	\N	\N	activ__resume_1718192802.pdf	\N	\N	\N
1875	Informatique Risques	\N	\N	Rindra.randriamihajaharimanana@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:43.377522	2024-06-12 11:46:43.377522	\N	\N	\N	\N	activ__resume_1718192803.pdf	\N	\N	\N
1876	Groupe Vidy	\N	\N	miorarisoarakoto@gmail.co	0348079529	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:43.722262	2024-06-12 11:46:43.722262	\N	\N	\N	\N	activ__resume_1718192803.pdf	\N	\N	\N
1877	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:43.932793	2024-06-12 11:46:43.932793	\N	\N	\N	\N	activ__resume_1718192803.pdf	\N	\N	\N
1878	Rado Albert	\N	\N	radoandriamiadantsoa@gmail.com	034 43 613 01	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:44.361072	2024-06-12 11:46:44.361072	\N	\N	\N	\N	activ__resume_1718192804.pdf	\N	\N	\N
1879	Mitahiry Jessycah	\N	\N	jessyrasamiah@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:44.619593	2024-06-12 11:46:44.619593	\N	\N	\N	\N	activ__resume_1718192804.pdf	\N	\N	\N
1880	Ravaka Elinah	\N	\N	ravakarandriana@gmail.com	034 85 520 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:44.943454	2024-06-12 11:46:44.943454	\N	\N	\N	\N	activ__resume_1718192804.pdf	\N	\N	\N
1881	Business Developer	\N	\N	ranaivomanjaka@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:45.700528	2024-06-12 11:46:45.700528	\N	\N	\N	\N	activ__resume_1718192805.pdf	\N	\N	\N
1882	Situation Matrimoniale	\N	\N	\N	410032007980	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:46.036602	2024-06-12 11:46:46.036602	\N	\N	\N	\N	activ__resume_1718192806.pdf	\N	\N	\N
1883	Power Point	\N	\N	brendarazafimpanjato@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:46.395197	2024-06-12 11:46:46.395197	\N	\N	\N	\N	activ__resume_1718192806.pdf	\N	\N	\N
1884	Rakotoarisoa Sylvain	\N	\N	arnaultrakotoarisoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:46.663843	2024-06-12 11:46:46.663843	\N	\N	\N	\N	activ__resume_1718192806.pdf	\N	\N	\N
1885	Projet Eassy	\N	\N	njarasoa@yahoo.com	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:47.395219	2024-06-12 11:46:47.395219	\N	\N	\N	\N	activ__resume_1718192807.pdf	\N	\N	\N
1886	Antanetibe Ilafy	\N	\N	sombiniainatojonirina1@gmail.com	0342947367	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:47.750163	2024-06-12 11:46:47.750163	\N	\N	\N	\N	activ__resume_1718192807.pdf	\N	\N	\N
1887	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:47.966672	2024-06-12 11:46:47.966672	\N	\N	\N	\N	activ__resume_1718192807.pdf	\N	\N	\N
1888	High Intermediate	\N	\N	sarobidy.rafanomezantsoa@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:48.34234	2024-06-12 11:46:48.34234	\N	\N	\N	\N	activ__resume_1718192808.pdf	\N	\N	\N
1889	Inconnu	\N	\N	rocksiecindy7@gmail.com	0343662513	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:48.617975	2024-06-12 11:46:48.617975	\N	\N	\N	\N	activ__resume_1718192808.pdf	\N	\N	\N
1890	Eva Manantenasoa	\N	\N	evamyriame@gmail.com	2019-2020	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:49.602833	2024-06-12 11:46:49.602833	\N	\N	\N	\N	activ__resume_1718192809.pdf	\N	\N	\N
1891	Curriculum Vitae	\N	\N	\N	401 012 062 484	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:49.957345	2024-06-12 11:46:49.957345	\N	\N	\N	\N	activ__resume_1718192809.pdf	\N	\N	\N
1892	Inconnu	\N	\N	\N	215218	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:50.236724	2024-06-12 11:46:50.236724	\N	\N	\N	\N	activ__resume_1718192810.pdf	\N	\N	\N
1893	Adrienne Henintsoa	\N	\N	henintsoa.ralimanana@gmail.com	034 76 172 83	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:50.697512	2024-06-12 11:46:50.697512	\N	\N	\N	\N	activ__resume_1718192810.pdf	\N	\N	\N
1894	Superviseur Senior	\N	\N	riarabe9@gmail.com	2018-2019	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:51.072447	2024-06-12 11:46:51.072447	\N	\N	\N	\N	activ__resume_1718192811.pdf	\N	\N	\N
1895	Njarasoa Fanavaozana	\N	\N	fanasoa30@gmail.com	034 74 207 99	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:51.395114	2024-06-12 11:46:51.395114	\N	\N	\N	\N	activ__resume_1718192811.pdf	\N	\N	\N
1896	Lead Talent	\N	\N	volana.navalona@gmail.com	34 70 201 05	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:51.766509	2024-06-12 11:46:51.766509	\N	\N	\N	\N	activ__resume_1718192811.pdf	\N	\N	\N
1897	Antsahavola Antananarivo	\N	\N	korail@rocketmail.com	034 93 184 40	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:52.287303	2024-06-12 11:46:52.287303	\N	\N	\N	\N	activ__resume_1718192812.pdf	\N	\N	\N
1898	Tahiana Malala	\N	\N	malalapinksandria@gmail.com	034 74 092 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:52.600771	2024-06-12 11:46:52.600771	\N	\N	\N	\N	activ__resume_1718192812.pdf	\N	\N	\N
1900	Hanitriniana Volatahiana	\N	\N	tahinaandria23@gmail.com	0322585980	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:53.293921	2024-06-12 11:46:53.293921	\N	\N	\N	\N	activ__resume_1718192813.pdf	\N	\N	\N
1901	Onja Jenny	\N	\N	\N	032 04 071 65	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:53.557182	2024-06-12 11:46:53.557182	\N	\N	\N	\N	activ__resume_1718192813.pdf	\N	\N	\N
1902	Fanomezantsoa Radonandrasana	\N	\N	radofanomezantsoa21@gmail.com	\n\n032 68	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:54.014102	2024-06-12 11:46:54.014102	\N	\N	\N	\N	activ__resume_1718192814.pdf	\N	\N	\N
1903	Mirantsoa Rufinah	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:54.492031	2024-06-12 11:46:54.492031	\N	\N	\N	\N	activ__resume_1718192814.pdf	\N	\N	\N
1904	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:54.773092	2024-06-12 11:46:54.773092	\N	\N	\N	\N	activ__resume_1718192814.pdf	\N	\N	\N
1905	Sarobidy Lauria	\N	\N	lauria.razafimanantsoa@gmail.com	032 69 537 35	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:55.143154	2024-06-12 11:46:55.143154	\N	\N	\N	\N	activ__resume_1718192815.pdf	\N	\N	\N
1906	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:55.333097	2024-06-12 11:46:55.333097	\N	\N	\N	\N	activ__resume_1718192815.pdf	\N	\N	\N
1907	Elysah Razafy	\N	\N	elysah12rajohnson@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:55.66357	2024-06-12 11:46:55.66357	\N	\N	\N	\N	activ__resume_1718192815.pdf	\N	\N	\N
1908	Fenitra Toavina	\N	\N	Fenitrasamisoa@gmail.com	0324810233	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:55.98051	2024-06-12 11:46:55.98051	\N	\N	\N	\N	activ__resume_1718192815.pdf	\N	\N	\N
1909	Natacha Miora	\N	\N	rafalinorosoanatacha@gmail.com	0328049446	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:56.271887	2024-06-12 11:46:56.271887	\N	\N	\N	\N	activ__resume_1718192816.pdf	\N	\N	\N
1910	Sheila Razafy	\N	\N	sheilarazafy@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:56.830642	2024-06-12 11:46:56.830642	\N	\N	\N	\N	activ__resume_1718192816.pdf	\N	\N	\N
1911	Domoina Navalona	\N	\N	douhtolojanahary@gmail.com	\n\n034 43	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:57.092339	2024-06-12 11:46:57.092339	\N	\N	\N	\N	activ__resume_1718192817.pdf	\N	\N	\N
1912	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:57.327435	2024-06-12 11:46:57.327435	\N	\N	\N	\N	activ__resume_1718192817.pdf	\N	\N	\N
1913	Inconnu	\N	\N	clisharffaoul@gmail.com	034 68 804 23	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:57.757215	2024-06-12 11:46:57.757215	\N	\N	\N	\N	activ__resume_1718192817.pdf	\N	\N	\N
1914	Natacha Miora	\N	\N	rafalinorosoanatacha@gmail.com	0328049446	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:58.041757	2024-06-12 11:46:58.041757	\N	\N	\N	\N	activ__resume_1718192818.pdf	\N	\N	\N
1915	Tanjona Auguste	\N	\N	tanjonarabearimanana915@gmail.com	0345349452	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:58.33417	2024-06-12 11:46:58.33417	\N	\N	\N	\N	activ__resume_1718192818.pdf	\N	\N	\N
1916	Liantsoa Tahiana	\N	\N	tahianandrianisa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:46:58.794709	2024-06-12 11:46:58.794709	\N	\N	\N	\N	activ__resume_1718192818.pdf	\N	\N	\N
1917	Sud Ambohipo	\N	\N	ravakah911@gmail.com	034 76 068 67	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:59.169519	2024-06-12 11:46:59.169519	\N	\N	\N	\N	activ__resume_1718192819.pdf	\N	\N	\N
1918	Mialy Dinan	\N	\N	mialyrakotoarisoa2128@gmail.com	   038 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:59.59844	2024-06-12 11:46:59.59844	\N	\N	\N	\N	activ__resume_1718192819.pdf	\N	\N	\N
1919	Francky Rahaja	\N	\N	franckyraza2403@gmail.com	\n034 56 198 79	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:00.050465	2024-06-12 11:47:00.050465	\N	\N	\N	\N	activ__resume_1718192820.pdf	\N	\N	\N
1920	Cultureet Management	\N	\N	andriahariseheno@gmail.com	2019-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:00.383656	2024-06-12 11:47:00.383656	\N	\N	\N	\N	activ__resume_1718192820.pdf	\N	\N	\N
1921	Bis Ambanidia	\N	\N	rpikins@gmail.com	\n033 63 845 38	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:00.634119	2024-06-12 11:47:00.634119	\N	\N	\N	\N	activ__resume_1718192820.pdf	\N	\N	\N
1922	Gestion Groupe	\N	\N	\N	034 20	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:01.227676	2024-06-12 11:47:01.227676	\N	\N	\N	\N	activ__resume_1718192821.pdf	\N	\N	\N
1923	Andraharo Antananarivo	\N	\N	rakotohentsoa@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:01.516051	2024-06-12 11:47:01.516051	\N	\N	\N	\N	activ__resume_1718192821.pdf	\N	\N	\N
1924	Les Rossignols	\N	\N	kantorakotobe16@gmail.com	0347554220	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:02.000359	2024-06-12 11:47:02.000359	\N	\N	\N	\N	activ__resume_1718192822.pdf	\N	\N	\N
1925	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:02.214834	2024-06-12 11:47:02.214834	\N	\N	\N	\N	activ__resume_1718192822.pdf	\N	\N	\N
1926	Cetm Itaosy	\N	\N	rhanitr@hotmail.fr	034 47 346 18	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:02.560751	2024-06-12 11:47:02.560751	\N	\N	\N	\N	activ__resume_1718192822.pdf	\N	\N	\N
1927	Financial Executive	\N	\N	miora.raobelina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:02.905316	2024-06-12 11:47:02.905316	\N	\N	\N	\N	activ__resume_1718192822.pdf	\N	\N	\N
1928	Miarantsoa Jessica	\N	\N	rafehivolamiarantsoa@gmail.com	034 12 433 94	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:03.311329	2024-06-12 11:47:03.311329	\N	\N	\N	\N	activ__resume_1718192823.pdf	\N	\N	\N
1929	Rabes Jules	\N	\N	channysoandrainy@gmail.com	261345512502	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:03.682364	2024-06-12 11:47:03.682364	\N	\N	\N	\N	activ__resume_1718192823.pdf	\N	\N	\N
1930	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:03.891924	2024-06-12 11:47:03.891924	\N	\N	\N	\N	activ__resume_1718192823.pdf	\N	\N	\N
1931	Mai Restaurant	\N	\N	antaresandriniaina@gmail.com	034 76 743 89	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:04.289548	2024-06-12 11:47:04.289548	\N	\N	\N	\N	activ__resume_1718192824.pdf	\N	\N	\N
1932	Lova Niaina	\N	\N	rjmlova@gmail.com	101 211 218 704	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:04.606594	2024-06-12 11:47:04.606594	\N	\N	\N	\N	activ__resume_1718192824.pdf	\N	\N	\N
1933	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:04.828296	2024-06-12 11:47:04.828296	\N	\N	\N	\N	activ__resume_1718192824.pdf	\N	\N	\N
1934	Work Experience	\N	\N	roelahhrazs@gmail.com	328848424	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:05.083366	2024-06-12 11:47:05.083366	\N	\N	\N	\N	activ__resume_1718192825.pdf	\N	\N	\N
1935	About Me	\N	\N	nasolofinoana30@outlook.fr	261334099804	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:05.891161	2024-06-12 11:47:05.891161	\N	\N	\N	\N	activ__resume_1718192825.pdf	\N	\N	\N
1936	Monte Cristo	\N	\N	tsilavinaraza25@yahoo.com	0322983773	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:06.142528	2024-06-12 11:47:06.142528	\N	\N	\N	\N	activ__resume_1718192826.pdf	\N	\N	\N
1937	Inconnu	\N	\N	rdieudonne311@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:06.55173	2024-06-12 11:47:06.55173	\N	\N	\N	\N	activ__resume_1718192826.pdf	\N	\N	\N
1938	Informatique Bureautique	\N	\N	rindrarajoelimanana@gmail.com	261 33	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:07.086112	2024-06-12 11:47:07.086112	\N	\N	\N	\N	activ__resume_1718192827.pdf	\N	\N	\N
1939	Microsoft Excel	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:07.531493	2024-06-12 11:47:07.531493	\N	\N	\N	\N	activ__resume_1718192827.pdf	\N	\N	\N
1940	Rs Lyriand	\N	\N	raslyriand@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:07.819642	2024-06-12 11:47:07.819642	\N	\N	\N	\N	activ__resume_1718192827.pdf	\N	\N	\N
1941	Ambohidratrimo Antananarivo	\N	\N	\N	261330480804	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:08.078798	2024-06-12 11:47:08.078798	\N	\N	\N	\N	activ__resume_1718192828.pdf	\N	\N	\N
1942	Ravaka Kantoniaina	\N	\N	Kantoniainaravaka00@gmail.com	034 31 758 27	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:08.48308	2024-06-12 11:47:08.48308	\N	\N	\N	\N	activ__resume_1718192828.pdf	\N	\N	\N
1943	Fenosandratra Christian	\N	\N	fenochristian@hotmail.fr	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:09.037055	2024-06-12 11:47:09.037055	\N	\N	\N	\N	activ__resume_1718192829.pdf	\N	\N	\N
1944	Microsoft Paint	\N	\N	annitaaurore@gmail.com	032 032 27 560 02	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:09.324827	2024-06-12 11:47:09.324827	\N	\N	\N	\N	activ__resume_1718192829.pdf	\N	\N	\N
1945	Odity Madagascar	\N	\N	\N	344568133	\N	VW 64 Ambohipotsy, 05	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:09.663295	2024-06-12 11:47:09.663295	\N	\N	\N	\N	activ__resume_1718192829.pdf	\N	\N	\N
1946	Mamy Hasambarana	\N	\N	hasambarananatacha@gmail.com	0329839390	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:10.057138	2024-06-12 11:47:10.057138	\N	\N	\N	\N	activ__resume_1718192830.pdf	\N	\N	\N
1947	Inconnu	\N	\N	\N	\n048395	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:10.485672	2024-06-12 11:47:10.485672	\N	\N	\N	\N	activ__resume_1718192830.pdf	\N	\N	\N
1948	Elys Jackson	\N	\N	\N	0345824024	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:10.737101	2024-06-12 11:47:10.737101	\N	\N	\N	\N	activ__resume_1718192830.pdf	\N	\N	\N
1949	Sarobidy Lauria	\N	\N	lauria.razafimanantsoa@gmail.com	032 69 537 35	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:11.081629	2024-06-12 11:47:11.081629	\N	\N	\N	\N	activ__resume_1718192831.pdf	\N	\N	\N
1950	Premier Cycle	\N	\N	rambelosonhajaskyline@gmail.co	2014-2017	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:11.580348	2024-06-12 11:47:11.580348	\N	\N	\N	\N	activ__resume_1718192831.pdf	\N	\N	\N
1951	Jean Hilarion	\N	\N	hilarionrml@gmail.com	034 95 288 60	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:11.942742	2024-06-12 11:47:11.942742	\N	\N	\N	\N	activ__resume_1718192831.pdf	\N	\N	\N
1952	Randrianantoanina Domoina	\N	\N	randrianantoaninadomoina@gmail.com	\n\n032 53	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:12.245397	2024-06-12 11:47:12.245397	\N	\N	\N	\N	activ__resume_1718192832.pdf	\N	\N	\N
1953	Inconnu	\N	\N	joanorh@gmail.com	0329146402	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:12.730691	2024-06-12 11:47:12.730691	\N	\N	\N	\N	activ__resume_1718192832.pdf	\N	\N	\N
1954	Andrianiraisana Ismael	\N	\N	maelrbm3@gmail.com	0346895851	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:13.308742	2024-06-12 11:47:13.308742	\N	\N	\N	\N	activ__resume_1718192833.pdf	\N	\N	\N
1955	Tsilavo Herizo	\N	\N	\N	034 19 317 18	\N	311	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:13.616737	2024-06-12 11:47:13.616737	\N	\N	\N	\N	activ__resume_1718192833.pdf	\N	\N	\N
1956	Andry Lalaina	\N	\N	rasamoelison21@gmail.com	034 83 038 86	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:14.00643	2024-06-12 11:47:14.00643	\N	\N	\N	\N	activ__resume_1718192834.pdf	\N	\N	\N
1957	Nirina William	\N	\N	razounyrina@aol.fr	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:15.837366	2024-06-12 11:47:15.837366	\N	\N	\N	\N	activ__resume_1718192835.pdf	\N	\N	\N
1958	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:16.05723	2024-06-12 11:47:16.05723	\N	\N	\N	\N	activ__resume_1718192836.pdf	\N	\N	\N
1959	English Course	\N	\N	rjoshnyelle@gmail.com	34799151	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:16.401227	2024-06-12 11:47:16.401227	\N	\N	\N	\N	activ__resume_1718192836.pdf	\N	\N	\N
1960	Anjara Antra	\N	\N	r.antra@yahoo.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:16.874721	2024-06-12 11:47:16.874721	\N	\N	\N	\N	activ__resume_1718192836.pdf	\N	\N	\N
1961	Itaosy Soamiampita	\N	\N	Ranjatoarisoamariaa22@gmail.com	\n\n0338775923	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:17.226826	2024-06-12 11:47:17.226826	\N	\N	\N	\N	activ__resume_1718192837.pdf	\N	\N	\N
1962	Rojo Nirina	\N	\N	Nantyrazakamamonjy@gmail.com	034 65 476 19	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:17.531676	2024-06-12 11:47:17.531676	\N	\N	\N	\N	activ__resume_1718192837.pdf	\N	\N	\N
1963	Eve Ericka	\N	\N	eve.ericka98@gmail.com	 33 28 613 25	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:17.953618	2024-06-12 11:47:17.953618	\N	\N	\N	\N	activ__resume_1718192837.pdf	\N	\N	\N
1964	Rady Todisoa	\N	\N	raharijaonarady@gmail.com	\n 0341787971	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:18.240706	2024-06-12 11:47:18.240706	\N	\N	\N	\N	activ__resume_1718192838.pdf	\N	\N	\N
1965	Commissariat Mahabibo	\N	\N	comptaboeny@gmail.com	26134 25	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:18.580111	2024-06-12 11:47:18.580111	\N	\N	\N	\N	activ__resume_1718192838.pdf	\N	\N	\N
1966	Tahina Olivhier	\N	\N	andrianantenainatahinaolivhier@gmail.com	2016-2017	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:18.868407	2024-06-12 11:47:18.868407	\N	\N	\N	\N	activ__resume_1718192838.pdf	\N	\N	\N
1967	Xavier Antanimena	\N	\N	\N	2017-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:19.220337	2024-06-12 11:47:19.220337	\N	\N	\N	\N	activ__resume_1718192839.pdf	\N	\N	\N
1968	Appels Sortants	\N	\N	sandrahmevani@gmail.com	 118718	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:19.641274	2024-06-12 11:47:19.641274	\N	\N	\N	\N	activ__resume_1718192839.pdf	\N	\N	\N
1969	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:19.848622	2024-06-12 11:47:19.848622	\N	\N	\N	\N	activ__resume_1718192839.pdf	\N	\N	\N
1970	Noro Mireille	\N	\N	mireille.andriamanantenaa@gmail.com	034 00 146 68	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:20.234338	2024-06-12 11:47:20.234338	\N	\N	\N	\N	activ__resume_1718192840.pdf	\N	\N	\N
1971	Rova Sariaka	\N	\N	rambolasarika065@gmail.com	261345762899	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:20.604891	2024-06-12 11:47:20.604891	\N	\N	\N	\N	activ__resume_1718192840.pdf	\N	\N	\N
1972	Mialinirina Henintsoa	\N	\N	mramiliarihaingo@gmail.com	034 78 113 43	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:20.878995	2024-06-12 11:47:20.878995	\N	\N	\N	\N	activ__resume_1718192840.pdf	\N	\N	\N
1973	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:21.068354	2024-06-12 11:47:21.068354	\N	\N	\N	\N	activ__resume_1718192841.pdf	\N	\N	\N
1974	Conseiller Client	\N	\N	nerafrancel@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:21.495265	2024-06-12 11:47:21.495265	\N	\N	\N	\N	activ__resume_1718192841.pdf	\N	\N	\N
1975	Mora Market	\N	\N	riana.ramilisoa@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:22.059796	2024-06-12 11:47:22.059796	\N	\N	\N	\N	activ__resume_1718192842.pdf	\N	\N	\N
1976	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:22.245626	2024-06-12 11:47:22.245626	\N	\N	\N	\N	activ__resume_1718192842.pdf	\N	\N	\N
1977	Journaliste Reporter	\N	\N	Fab.invictus@gmail.com	261332041441	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:22.803541	2024-06-12 11:47:22.803541	\N	\N	\N	\N	activ__resume_1718192842.pdf	\N	\N	\N
1978	Mandialaza Ankadifotsy	\N	\N	jlramilison@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:23.234931	2024-06-12 11:47:23.234931	\N	\N	\N	\N	activ__resume_1718192843.pdf	\N	\N	\N
1979	Moderne Ampefiloha	\N	\N	mfratovo@gmail.com	2014-2016	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:23.575359	2024-06-12 11:47:23.575359	\N	\N	\N	\N	activ__resume_1718192843.pdf	\N	\N	\N
1980	Tino Sam	\N	\N	yvestinos@gmail.com	75016	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:24.16045	2024-06-12 11:47:24.16045	\N	\N	\N	\N	activ__resume_1718192844.pdf	\N	\N	\N
1981	Salohy Ny	\N	\N	razafindrakotosalohynyaina@gmail.com	034 99 794 55	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:24.50372	2024-06-12 11:47:24.50372	\N	\N	\N	\N	activ__resume_1718192844.pdf	\N	\N	\N
1982	Ocean Call	\N	\N	anessa@gmail.com	261 38	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:24.905588	2024-06-12 11:47:24.905588	\N	\N	\N	\N	activ__resume_1718192844.pdf	\N	\N	\N
1983	Curriculum Vitae	\N	\N	omr.pers.0369@gmail.com	117 172 020 913	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:25.197732	2024-06-12 11:47:25.197732	\N	\N	\N	\N	activ__resume_1718192845.pdf	\N	\N	\N
1984	Inconnu	\N	\N	radosupercell@gmail.com	2008-2009	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:25.609192	2024-06-12 11:47:25.609192	\N	\N	\N	\N	activ__resume_1718192845.pdf	\N	\N	\N
1985	Fitahiana Hezekia	\N	\N	fitahina27@gmail.com	034 95 495 07	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:25.907521	2024-06-12 11:47:25.907521	\N	\N	\N	\N	activ__resume_1718192845.pdf	\N	\N	\N
1986	Ankadikely Ilafy	\N	\N	ranjoroht@gmail.com	032 42 925 13	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:26.403073	2024-06-12 11:47:26.403073	\N	\N	\N	\N	activ__resume_1718192846.pdf	\N	\N	\N
1987	Charlino Edwino	\N	\N	rcharlinoedwino@gmail.com	\n 032 22	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:26.768731	2024-06-12 11:47:26.768731	\N	\N	\N	\N	activ__resume_1718192846.pdf	\N	\N	\N
1988	Ankadivory Ambohijanahary	\N	\N	fenitriniainarasoavololona@gmail.com	\n\n034 73	\N	II	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:27.153271	2024-06-12 11:47:27.153271	\N	\N	\N	\N	activ__resume_1718192847.pdf	\N	\N	\N
1989	Bis Ivandry	\N	\N	fabien.leong.5@gmail.com	\n  034 43	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:27.515825	2024-06-12 11:47:27.515825	\N	\N	\N	\N	activ__resume_1718192847.pdf	\N	\N	\N
1990	Alatsinainy Alasora	\N	\N	sandrahranoromalala@gmail.com	261 38	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:27.794244	2024-06-12 11:47:27.794244	\N	\N	\N	\N	activ__resume_1718192847.pdf	\N	\N	\N
1991	Jean Rivo	\N	\N	jrivorandrianari@gmail.com	038 24 010 28	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:28.164744	2024-06-12 11:47:28.164744	\N	\N	\N	\N	activ__resume_1718192848.pdf	\N	\N	\N
1992	Tojoniaina Sylvie	\N	\N	tojomananjara94@gmail.com	034 96 338 50	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:28.503736	2024-06-12 11:47:28.503736	\N	\N	\N	\N	activ__resume_1718192848.pdf	\N	\N	\N
1993	Ressources Humaines	\N	\N	adorson.marius@gmail.com	034 86 708 37	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:29.247155	2024-06-12 11:47:29.247155	\N	\N	\N	\N	activ__resume_1718192849.pdf	\N	\N	\N
1994	Date De	\N	\N	harimananarivomalala2@gmail.com	0321948166	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:29.82173	2024-06-12 11:47:29.82173	\N	\N	\N	\N	activ__resume_1718192849.pdf	\N	\N	\N
1995	Avotra Jemima	\N	\N	\N	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:30.208468	2024-06-12 11:47:30.208468	\N	\N	\N	\N	activ__resume_1718192850.pdf	\N	\N	\N
1996	Entreprise Exportateurs	\N	\N	misoarazafy@yahoo.fr	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:30.622009	2024-06-12 11:47:30.622009	\N	\N	\N	\N	activ__resume_1718192850.pdf	\N	\N	\N
1997	Formation Professionnalisante	\N	\N	srab.frank7@gmail.com	00 261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:30.899095	2024-06-12 11:47:30.899095	\N	\N	\N	\N	activ__resume_1718192850.pdf	\N	\N	\N
1998	Fara Nantenaina	\N	\N	nantenainaranaivoson339@gmail.com	034 08 099 69	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:31.226009	2024-06-12 11:47:31.226009	\N	\N	\N	\N	activ__resume_1718192851.pdf	\N	\N	\N
1999	Andotiana Mihantalalaina	\N	\N	mihantalalaina@gmail.com	034 42 553 88	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:31.554297	2024-06-12 11:47:31.554297	\N	\N	\N	\N	activ__resume_1718192851.pdf	\N	\N	\N
2000	Soavinandriana Ouest	\N	\N	diarymafonja@gmail.com	034 10 197 96	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:31.853901	2024-06-12 11:47:31.853901	\N	\N	\N	\N	activ__resume_1718192851.pdf	\N	\N	\N
2001	Assistante Virtuelle	\N	\N	rovahari2@gmail.com	034 84 087 67	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:32.249691	2024-06-12 11:47:32.249691	\N	\N	\N	\N	activ__resume_1718192852.pdf	\N	\N	\N
2002	Nalisoa Nantenaina	\N	\N	nantenaina.naly@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:32.669076	2024-06-12 11:47:32.669076	\N	\N	\N	\N	activ__resume_1718192852.pdf	\N	\N	\N
2003	Barikadimy Toamasina	\N	\N	nathaniemalala@gmail.com	\n301 032 028 301	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:32.96771	2024-06-12 11:47:32.96771	\N	\N	\N	\N	activ__resume_1718192852.pdf	\N	\N	\N
2004	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:33.171046	2024-06-12 11:47:33.171046	\N	\N	\N	\N	activ__resume_1718192853.pdf	\N	\N	\N
2005	Miandrarivo Ambanidia	\N	\N	raheliarisoaiandrianina@gmail.com	0329491940	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:33.608995	2024-06-12 11:47:33.608995	\N	\N	\N	\N	activ__resume_1718192853.pdf	\N	\N	\N
2006	Responsable Ressources	\N	\N	felana.raholiderantsoa@gmail.com	034 50 037 16	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:34.057407	2024-06-12 11:47:34.057407	\N	\N	\N	\N	activ__resume_1718192854.pdf	\N	\N	\N
2007	Victoria Milisine	\N	\N	\N	414 012 034 621	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:34.441876	2024-06-12 11:47:34.441876	\N	\N	\N	\N	activ__resume_1718192854.pdf	\N	\N	\N
2008	Inconnu	\N	\N	nadia_rhf@yahoo.fr	034 09 552 57	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:34.767743	2024-06-12 11:47:34.767743	\N	\N	\N	\N	activ__resume_1718192854.pdf	\N	\N	\N
2009	Zaisoa Nirindra	\N	\N	\N	\n\n034 39	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:35.061667	2024-06-12 11:47:35.061667	\N	\N	\N	\N	activ__resume_1718192855.pdf	\N	\N	\N
2010	Nambinintsoa Harivola	\N	\N	rnharivol@yahoo.fr	034 04 010 73	\N	IVE 1A Ambohimanandray Ambohimanarina	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:35.389614	2024-06-12 11:47:35.389614	\N	\N	\N	\N	activ__resume_1718192855.pdf	\N	\N	\N
2011	Fiononana Soloaina	\N	\N	\N	034 53 926 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:35.740106	2024-06-12 11:47:35.740106	\N	\N	\N	\N	activ__resume_1718192855.pdf	\N	\N	\N
2012	Mamitiana Fabiola	\N	\N	fabiolamamitiana@gmail.com	0340932090	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:36.277565	2024-06-12 11:47:36.277565	\N	\N	\N	\N	activ__resume_1718192856.pdf	\N	\N	\N
2013	Elyse Yollande	\N	\N	yollandelise@gmail.com	 102\n26	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:36.593	2024-06-12 11:47:36.593	\N	\N	\N	\N	activ__resume_1718192856.pdf	\N	\N	\N
2014	Fiombonana Marobiby	\N	\N	idjob.job@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:37.030489	2024-06-12 11:47:37.030489	\N	\N	\N	\N	activ__resume_1718192857.pdf	\N	\N	\N
2015	Inconnu	\N	\N	lovatianaranaivoson0@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:37.371928	2024-06-12 11:47:37.371928	\N	\N	\N	\N	activ__resume_1718192857.pdf	\N	\N	\N
2016	Ter Ankerana	\N	\N	debbie.wonderbox@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:37.979172	2024-06-12 11:47:37.979172	\N	\N	\N	\N	activ__resume_1718192857.pdf	\N	\N	\N
2017	Bis Ivato	\N	\N	avotrafrancis@gmail.com	034 85 678 95	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:38.307317	2024-06-12 11:47:38.307317	\N	\N	\N	\N	activ__resume_1718192858.pdf	\N	\N	\N
2018	Spectacle Trade	\N	\N	Rabemananjaralucien123@gmail.com	\n034 86 464 39	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:38.653745	2024-06-12 11:47:38.653745	\N	\N	\N	\N	activ__resume_1718192858.pdf	\N	\N	\N
2019	Lot Ivn	\N	\N	Tiandraycedric@gmail.com	034 26 075 63	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:38.902914	2024-06-12 11:47:38.902914	\N	\N	\N	\N	activ__resume_1718192858.pdf	\N	\N	\N
2020	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:39.101417	2024-06-12 11:47:39.101417	\N	\N	\N	\N	activ__resume_1718192859.pdf	\N	\N	\N
2021	Formation Professionnelle	\N	\N	tinah.mrt@gmail.com	- 2018-2021	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:39.357596	2024-06-12 11:47:39.357596	\N	\N	\N	\N	activ__resume_1718192859.pdf	\N	\N	\N
2022	Beanjafy Kyllie	\N	\N	\N	034 03 249 90	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:39.613819	2024-06-12 11:47:39.613819	\N	\N	\N	\N	activ__resume_1718192859.pdf	\N	\N	\N
2023	Elysa Viviane	\N	\N	elsamartial8863@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:39.937032	2024-06-12 11:47:39.937032	\N	\N	\N	\N	activ__resume_1718192859.pdf	\N	\N	\N
2024	Orange Commercial	\N	\N	nirinarakotovao08@gmai.com	0349979484	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:40.330581	2024-06-12 11:47:40.330581	\N	\N	\N	\N	activ__resume_1718192860.pdf	\N	\N	\N
2025	Mino Harimisy	\N	\N	hhrimis@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:40.635585	2024-06-12 11:47:40.635585	\N	\N	\N	\N	activ__resume_1718192860.pdf	\N	\N	\N
2026	Mirindra Mampihiratra	\N	\N	mampihiritra95@gmail.com	\n 032 96	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:41.0162	2024-06-12 11:47:41.0162	\N	\N	\N	\N	activ__resume_1718192861.pdf	\N	\N	\N
2027	Mangalaza Ambohidratrimo	\N	\N	aandrianaris.tiffany@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:41.391883	2024-06-12 11:47:41.391883	\N	\N	\N	\N	activ__resume_1718192861.pdf	\N	\N	\N
2028	Diary Nokoloina	\N	\N	\N	0327840191	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:42.056437	2024-06-12 11:47:42.056437	\N	\N	\N	\N	activ__resume_1718192862.pdf	\N	\N	\N
2029	Holinirina Jackie	\N	\N	zafyholy@gmail.com	0323866545	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:42.502647	2024-06-12 11:47:42.502647	\N	\N	\N	\N	activ__resume_1718192862.pdf	\N	\N	\N
2030	Sayama Kathidjan	\N	\N	sayamarajoelina8@gmail.com	0346863396	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:42.780811	2024-06-12 11:47:42.780811	\N	\N	\N	\N	activ__resume_1718192862.pdf	\N	\N	\N
2031	Toky Jafeta	\N	\N	trasolomanitra@gmail.com	38 90 016 79	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:43.488476	2024-06-12 11:47:43.488476	\N	\N	\N	\N	activ__resume_1718192863.pdf	\N	\N	\N
2032	Razanatsimba Jenny	\N	\N	tiffanylady70@yahoo.com	0345266074	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:43.767616	2024-06-12 11:47:43.767616	\N	\N	\N	\N	activ__resume_1718192863.pdf	\N	\N	\N
2033	Institut National	\N	\N	soa.noarimialy@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:44.207692	2024-06-12 11:47:44.207692	\N	\N	\N	\N	activ__resume_1718192864.pdf	\N	\N	\N
2035	Stagiaire Ressources	\N	\N	ramahandrynyhasina20@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:44.826387	2024-06-12 11:47:44.826387	\N	\N	\N	\N	activ__resume_1718192864.pdf	\N	\N	\N
2036	Andy Tahina	\N	\N	andyrajaobelina@gmail.com	34 58 993 41	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:45.126704	2024-06-12 11:47:45.126704	\N	\N	\N	\N	activ__resume_1718192865.pdf	\N	\N	\N
2037	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:45.316356	2024-06-12 11:47:45.316356	\N	\N	\N	\N	activ__resume_1718192865.pdf	\N	\N	\N
2038	Benja Philippe	\N	\N	lionbenja@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:46.025443	2024-06-12 11:47:46.025443	\N	\N	\N	\N	activ__resume_1718192866.pdf	\N	\N	\N
2039	Inconnu	\N	\N	\N	344566803252022	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:46.34419	2024-06-12 11:47:46.34419	\N	\N	\N	\N	activ__resume_1718192866.pdf	\N	\N	\N
2040	Hanitriniaina Olivia	\N	\N	\N	034 21 519 19	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:46.708687	2024-06-12 11:47:46.708687	\N	\N	\N	\N	activ__resume_1718192866.pdf	\N	\N	\N
2041	Aro Fahasoavana	\N	\N	arofahasoavanaramanakohajaina@gmail.com	38 29 802 28	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:46.989751	2024-06-12 11:47:46.989751	\N	\N	\N	\N	activ__resume_1718192866.pdf	\N	\N	\N
2042	Rakotonindrainy Toky	\N	\N	tokyrakotonindrainy@gmail.com	\n\n033 03	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:47.63862	2024-06-12 11:47:47.63862	\N	\N	\N	\N	activ__resume_1718192867.pdf	\N	\N	\N
2043	Conseiller Client	\N	\N	andorahe03@gmail.com	101 252 195 287	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:47.914599	2024-06-12 11:47:47.914599	\N	\N	\N	\N	activ__resume_1718192867.pdf	\N	\N	\N
2044	Henintsoa Rakotovao	\N	\N	rmiranahenintsoa@gmail.com	0346339160	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:48.212083	2024-06-12 11:47:48.212083	\N	\N	\N	\N	activ__resume_1718192868.pdf	\N	\N	\N
2045	Agent Commercial	\N	\N	teramuhjse@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:48.673856	2024-06-12 11:47:48.673856	\N	\N	\N	\N	activ__resume_1718192868.pdf	\N	\N	\N
2046	Tourisme Management	\N	\N	julyannah53@gmail.com	034 56 206 57	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:48.982858	2024-06-12 11:47:48.982858	\N	\N	\N	\N	activ__resume_1718192868.pdf	\N	\N	\N
2047	Ankadifotsy Antananarivo	\N	\N	nramanamihamina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:49.405913	2024-06-12 11:47:49.405913	\N	\N	\N	\N	activ__resume_1718192869.pdf	\N	\N	\N
2048	Contenu Web	\N	\N	farajemimaras@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:50.272842	2024-06-12 11:47:50.272842	\N	\N	\N	\N	activ__resume_1718192870.pdf	\N	\N	\N
2049	Ankadifotsy Befelatanana	\N	\N	manitriniainacynthia@gmail.com	261383605395	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:50.670557	2024-06-12 11:47:50.670557	\N	\N	\N	\N	activ__resume_1718192870.pdf	\N	\N	\N
2050	Maminirina Fanja	\N	\N	maminirinafanja@gmail.com	034 93 767 82	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:51.100027	2024-06-12 11:47:51.100027	\N	\N	\N	\N	activ__resume_1718192871.pdf	\N	\N	\N
2051	Ressources Humaines	\N	\N	\N	2017-2018	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:51.553506	2024-06-12 11:47:51.553506	\N	\N	\N	\N	activ__resume_1718192871.pdf	\N	\N	\N
2052	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:51.75758	2024-06-12 11:47:51.75758	\N	\N	\N	\N	activ__resume_1718192871.pdf	\N	\N	\N
2053	Safidiniaina Mendr	\N	\N	\N	0343097031	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:52.371552	2024-06-12 11:47:52.371552	\N	\N	\N	\N	activ__resume_1718192872.pdf	\N	\N	\N
2054	Tolotsoa Mampianina	\N	\N	rtolotsoam@gmail.com	034 55 219 54	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:52.66771	2024-06-12 11:47:52.66771	\N	\N	\N	\N	activ__resume_1718192872.pdf	\N	\N	\N
2055	Appel Sortant	\N	\N	Cecileniaina@gmail.com	0321544467	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:52.988592	2024-06-12 11:47:52.988592	\N	\N	\N	\N	activ__resume_1718192872.pdf	\N	\N	\N
2056	Bis Antohomadinika	\N	\N	\N	033 01 593 80	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:53.391113	2024-06-12 11:47:53.391113	\N	\N	\N	\N	activ__resume_1718192873.pdf	\N	\N	\N
2057	Hanta Malalanirina	\N	\N	hanta5461@gmail.com	034 52 985 25	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:53.796367	2024-06-12 11:47:53.796367	\N	\N	\N	\N	activ__resume_1718192873.pdf	\N	\N	\N
2058	Inconnu	\N	\N	sarobidysedra918@gmail.com	0341275309	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:54.08625	2024-06-12 11:47:54.08625	\N	\N	\N	\N	activ__resume_1718192874.pdf	\N	\N	\N
2059	Zone Galaxy	\N	\N	holyrah251@gmail.com	0345839485	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:54.527483	2024-06-12 11:47:54.527483	\N	\N	\N	\N	activ__resume_1718192874.pdf	\N	\N	\N
2060	Bis Ivandry	\N	\N	fabien.leong.5@gmail.com	\n  034 43	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:54.908278	2024-06-12 11:47:54.908278	\N	\N	\N	\N	activ__resume_1718192874.pdf	\N	\N	\N
2061	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:55.110742	2024-06-12 11:47:55.110742	\N	\N	\N	\N	activ__resume_1718192875.pdf	\N	\N	\N
2062	Minosoa Heritiana	\N	\N	\N	26133 08	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:55.355239	2024-06-12 11:47:55.355239	\N	\N	\N	\N	activ__resume_1718192875.pdf	\N	\N	\N
2063	Edition France	\N	\N	kiaramanasseratsimandresy@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:55.704849	2024-06-12 11:47:55.704849	\N	\N	\N	\N	activ__resume_1718192875.pdf	\N	\N	\N
2064	Haingotiana Sabrina	\N	\N	haingotianasabr26@gmail.com	038 54 436 16	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:55.932194	2024-06-12 11:47:55.932194	\N	\N	\N	\N	activ__resume_1718192875.pdf	\N	\N	\N
2065	Inconnu	\N	\N	\N	0433124	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:56.29836	2024-06-12 11:47:56.29836	\N	\N	\N	\N	activ__resume_1718192876.pdf	\N	\N	\N
2066	Emilson Xavier	\N	\N	ranaivo.xav@gmail.com	034 56 684 67	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:56.773586	2024-06-12 11:47:56.773586	\N	\N	\N	\N	activ__resume_1718192876.pdf	\N	\N	\N
2067	Vivetic Group	\N	\N	rhcolder1@gmail.com	0348534877	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:57.124662	2024-06-12 11:47:57.124662	\N	\N	\N	\N	activ__resume_1718192877.pdf	\N	\N	\N
2068	Nacre Solutions	\N	\N	ambinintsoa.r@yahoo.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:57.519487	2024-06-12 11:47:57.519487	\N	\N	\N	\N	activ__resume_1718192877.pdf	\N	\N	\N
2069	Toky Jafeta	\N	\N	trasolomanitra@gmail.com	38 90 016 79	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:58.142048	2024-06-12 11:47:58.142048	\N	\N	\N	\N	activ__resume_1718192878.pdf	\N	\N	\N
2070	Toky Nestor	\N	\N	tokynest@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:58.605339	2024-06-12 11:47:58.605339	\N	\N	\N	\N	activ__resume_1718192878.pdf	\N	\N	\N
2071	Sitrakiniaina Liliane	\N	\N	fanaja.wendy@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:58.898873	2024-06-12 11:47:58.898873	\N	\N	\N	\N	activ__resume_1718192878.pdf	\N	\N	\N
2072	Henintsoa Rakotovao	\N	\N	rmiranahenintsoa@gmail.com	0346339160	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:59.144072	2024-06-12 11:47:59.144072	\N	\N	\N	\N	activ__resume_1718192879.pdf	\N	\N	\N
2073	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:47:59.345156	2024-06-12 11:47:59.345156	\N	\N	\N	\N	activ__resume_1718192879.pdf	\N	\N	\N
2074	Ambohipo Andohanianto	\N	\N	tsirihavotra77@gmail.com	261338704287	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:47:59.779034	2024-06-12 11:47:59.779034	\N	\N	\N	\N	activ__resume_1718192879.pdf	\N	\N	\N
2075	Manda Herivelo	\N	\N	lambertdaniel6263@gmail.com	034 86 400 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:00.140901	2024-06-12 11:48:00.140901	\N	\N	\N	\N	activ__resume_1718192880.pdf	\N	\N	\N
2076	Intelcia Tanjombato	\N	\N	\N	0342093659	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:00.395979	2024-06-12 11:48:00.395979	\N	\N	\N	\N	activ__resume_1718192880.pdf	\N	\N	\N
2077	Ivandry Antananarivo	\N	\N	fabienneramaroson@yahoo.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:00.835487	2024-06-12 11:48:00.835487	\N	\N	\N	\N	activ__resume_1718192880.pdf	\N	\N	\N
2078	Nofy Prisca	\N	\N	\N	0345057452	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:01.125309	2024-06-12 11:48:01.125309	\N	\N	\N	\N	activ__resume_1718192881.pdf	\N	\N	\N
2079	Rindra Manantsoa	\N	\N	Rindramanantsoa27@gmail.com	034 55 001 06	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:01.428261	2024-06-12 11:48:01.428261	\N	\N	\N	\N	activ__resume_1718192881.pdf	\N	\N	\N
2080	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:01.620182	2024-06-12 11:48:01.620182	\N	\N	\N	\N	activ__resume_1718192881.pdf	\N	\N	\N
2081	Microsoft Word	\N	\N	myrella.soarimanana@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:01.942416	2024-06-12 11:48:01.942416	\N	\N	\N	\N	activ__resume_1718192881.pdf	\N	\N	\N
2082	Back Office	\N	\N	christellearia8@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:02.261309	2024-06-12 11:48:02.261309	\N	\N	\N	\N	activ__resume_1718192882.pdf	\N	\N	\N
2083	Inconnu	\N	\N	tessadrianna008@gmail.com	2019-2021	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:02.595555	2024-06-12 11:48:02.595555	\N	\N	\N	\N	activ__resume_1718192882.pdf	\N	\N	\N
2084	Eva Ny	\N	\N	\N	034 50 200 48	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:02.965982	2024-06-12 11:48:02.965982	\N	\N	\N	\N	activ__resume_1718192882.pdf	\N	\N	\N
2085	Toky Nestor	\N	\N	tokynest@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:03.468451	2024-06-12 11:48:03.468451	\N	\N	\N	\N	activ__resume_1718192883.pdf	\N	\N	\N
2086	Tsilavo Fanomezantsoa	\N	\N	ranarivelo.fano@gmail.com	2014-2017	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:03.927101	2024-06-12 11:48:03.927101	\N	\N	\N	\N	activ__resume_1718192883.pdf	\N	\N	\N
2087	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:04.128077	2024-06-12 11:48:04.128077	\N	\N	\N	\N	activ__resume_1718192884.pdf	\N	\N	\N
2088	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:04.325303	2024-06-12 11:48:04.325303	\N	\N	\N	\N	activ__resume_1718192884.pdf	\N	\N	\N
2089	David Jones	\N	\N	mialyalinoro@gmail.com	261 38	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:04.810801	2024-06-12 11:48:04.810801	\N	\N	\N	\N	activ__resume_1718192884.pdf	\N	\N	\N
2090	Vololonirina Helianja	\N	\N	rinahrandrianantenaina3@gmail.com	0347871994	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:05.09178	2024-06-12 11:48:05.09178	\N	\N	\N	\N	activ__resume_1718192885.pdf	\N	\N	\N
2091	Inconnu	\N	\N	\N	0210310362	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:05.402056	2024-06-12 11:48:05.402056	\N	\N	\N	\N	activ__resume_1718192885.pdf	\N	\N	\N
2092	Inconnu	\N	\N	\N	346684	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:05.663711	2024-06-12 11:48:05.663711	\N	\N	\N	\N	activ__resume_1718192885.pdf	\N	\N	\N
2093	Sabotsy Namehana	\N	\N	\N	\n034 13 977 69	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:05.922525	2024-06-12 11:48:05.922525	\N	\N	\N	\N	activ__resume_1718192885.pdf	\N	\N	\N
2094	Minosoa Lovatiana	\N	\N	hasiniavolovatina@gmail.com	0344185421	\N	41 AB	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:06.280328	2024-06-12 11:48:06.280328	\N	\N	\N	\N	activ__resume_1718192886.pdf	\N	\N	\N
2095	Marie Raelle	\N	\N	marieraellerav@gmail.com	261328736661	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:06.515496	2024-06-12 11:48:06.515496	\N	\N	\N	\N	activ__resume_1718192886.pdf	\N	\N	\N
2096	Heriniaina Mamie	\N	\N	poossymalala@gmail.com	 101 242 193 201	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:06.786252	2024-06-12 11:48:06.786252	\N	\N	\N	\N	activ__resume_1718192886.pdf	\N	\N	\N
2097	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:06.984533	2024-06-12 11:48:06.984533	\N	\N	\N	\N	activ__resume_1718192886.pdf	\N	\N	\N
2098	Bis Antsahabe	\N	\N	sarrafaly@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:07.355746	2024-06-12 11:48:07.355746	\N	\N	\N	\N	activ__resume_1718192887.pdf	\N	\N	\N
2099	Sabotsy Namehana	\N	\N	lalainajenny@gmail.com	0348808322	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:07.650001	2024-06-12 11:48:07.650001	\N	\N	\N	\N	activ__resume_1718192887.pdf	\N	\N	\N
2100	Institute Of	\N	\N	felanarajo55@gmail.com	034 28 605 10	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:07.999004	2024-06-12 11:48:07.999004	\N	\N	\N	\N	activ__resume_1718192887.pdf	\N	\N	\N
2101	Inconnu	\N	\N	ramatsiry8@gmail.com	038 55 908 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:08.414658	2024-06-12 11:48:08.414658	\N	\N	\N	\N	activ__resume_1718192888.pdf	\N	\N	\N
2102	Ambatolampy Avaratra	\N	\N	lionel.cc.spartoo@gmail.com	034 32 653 36	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:08.755004	2024-06-12 11:48:08.755004	\N	\N	\N	\N	activ__resume_1718192888.pdf	\N	\N	\N
2103	Value Alarobia	\N	\N	\N	0340492375	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:09.041822	2024-06-12 11:48:09.041822	\N	\N	\N	\N	activ__resume_1718192889.pdf	\N	\N	\N
2104	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:09.234462	2024-06-12 11:48:09.234462	\N	\N	\N	\N	activ__resume_1718192889.pdf	\N	\N	\N
2105	Njarasoa Fiononana	\N	\N	Fiononana.solotiana@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:09.571471	2024-06-12 11:48:09.571471	\N	\N	\N	\N	activ__resume_1718192889.pdf	\N	\N	\N
2106	Xavier Niavo	\N	\N	rahxavo@gmail.com	032 91 033 13	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:09.880229	2024-06-12 11:48:09.880229	\N	\N	\N	\N	activ__resume_1718192889.pdf	\N	\N	\N
2107	Tsitohaina Jeanne	\N	\N	ainaftjr@gmail.com	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:10.155439	2024-06-12 11:48:10.155439	\N	\N	\N	\N	activ__resume_1718192890.pdf	\N	\N	\N
2108	Soamiampita Andranonahoatra	\N	\N	manantsoa98@gmail.com	261 32 825 50	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:10.579084	2024-06-12 11:48:10.579084	\N	\N	\N	\N	activ__resume_1718192890.pdf	\N	\N	\N
2109	Grace Emmanuella	\N	\N	marsongrace@gmail.com	034 37 431 73	\N	Inconnue	\N	https://www.linkedin.com/in/em	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:10.949002	2024-06-12 11:48:10.949002	\N	\N	\N	\N	activ__resume_1718192890.pdf	\N	\N	\N
2110	Inconnu	\N	\N	TsioryEmirakotoarisoa@gmail.com	101 252 197 365	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:11.263311	2024-06-12 11:48:11.263311	\N	\N	\N	\N	activ__resume_1718192891.pdf	\N	\N	\N
2111	Abraham Emile	\N	\N	Stalinemile@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:11.838893	2024-06-12 11:48:11.838893	\N	\N	\N	\N	activ__resume_1718192891.pdf	\N	\N	\N
2112	Conseiller Client	\N	\N	fa.nambara@gmail.com	038 08 899 79	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:12.347757	2024-06-12 11:48:12.347757	\N	\N	\N	\N	activ__resume_1718192892.pdf	\N	\N	\N
2113	Inconnu	\N	\N	\N	261 32	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:12.593416	2024-06-12 11:48:12.593416	\N	\N	\N	\N	activ__resume_1718192892.pdf	\N	\N	\N
2114	Conseiller Client	\N	\N	\N	034 90 902 16	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:12.976208	2024-06-12 11:48:12.976208	\N	\N	\N	\N	activ__resume_1718192892.pdf	\N	\N	\N
2115	Teddy Johannes	\N	\N	tdyj.tex@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:13.375641	2024-06-12 11:48:13.375641	\N	\N	\N	\N	activ__resume_1718192893.pdf	\N	\N	\N
2116	Inconnu	\N	\N	\N	\N	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:13.849172	2024-06-12 11:48:13.849172	\N	\N	\N	\N	activ__resume_1718192893.pdf	\N	\N	\N
2117	Sabotsy Namehana	\N	\N	tianaralimanana@gmail.com	 0343363148	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:14.279468	2024-06-12 11:48:14.279468	\N	\N	\N	\N	activ__resume_1718192894.pdf	\N	\N	\N
2118	Odity Galaxy	\N	\N	vanilla93000@gmail.com	0347989785	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:14.50563	2024-06-12 11:48:14.50563	\N	\N	\N	\N	activ__resume_1718192894.pdf	\N	\N	\N
2119	Manoa Fahendrena	\N	\N	ndrambao@gmail.com	0324386774	\N	Inconnue	\N	\N	1 an	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	f	2024-06-12 11:48:14.962168	2024-06-12 11:48:14.962168	\N	\N	\N	\N	activ__resume_1718192894.pdf	\N	\N	\N
2120	Nomenjanahary Maminirina	\N	\N	no.maminirina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:15.559977	2024-06-12 11:48:15.559977	\N	\N	\N	\N	activ__resume_1718192895.pdf	\N	\N	\N
2121	Advanced One	\N	\N	\N	261 33	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:15.996898	2024-06-12 11:48:15.996898	\N	\N	\N	\N	activ__resume_1718192895.pdf	\N	\N	\N
2129	Mijoro Toavina	\N	\N	\N	033 79 108 21	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:18.732237	2024-06-12 11:48:18.732237	\N	\N	\N	\N	activ__resume_1718192898.pdf	\N	\N	\N
2130	Community Managment	\N	\N	tkjtoavina@gmail.com	261 34	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:48:19.056299	2024-06-12 11:48:19.056299	\N	\N	\N	\N	activ__resume_1718192899.pdf	\N	\N	\N
2131	Madagascar Call	\N	\N	rojoromaine@gmail.com	034 08 102 76	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 13:07:52.064672	2024-06-12 13:07:52.064672	\N	\N	\N	\N	activ__resume_1718197672.pdf	\N	\N	\N
2132	Back Office	\N	\N	zamakantoniainaavotra@gmail.com	261 32	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 13:07:52.557299	2024-06-12 13:07:52.557299	\N	\N	\N	\N	activ__resume_1718197672.pdf	\N	\N	\N
2128	RABEMIAFARA	\N	Zahova Rianala Victoria	rianalanyaiko@gmail.com	34 61 489 02	1996	III T 256 ZMA Bis Angarangarana-Anosibe	\N	\N	+ de 5 ans	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 11:48:18.413829	2024-06-25 11:37:55.900828	\N	\N	\N	\N	activ__resume_1718192898.pdf	\N	\N	\N
2137	RAHARISEDY	\N	Satelia Fanantenana	satelia.fanant@gmail.com	034 80 708 59	\N	Lot IVH 159 Ter A Antanety Ambohimanarina	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 13:07:54.638015	2024-06-25 11:38:15.04758	\N	\N	\N	\N	activ__resume_1718197674.pdf	\N	\N	\N
2127	ANDRIANJOHANY	\N	Andotiana Mihantalalaina	mihantalalaina@gmail.com	34 42 553 88	1999	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 11:48:17.991888	2024-06-25 11:39:45.662076	\N	\N	\N	\N	activ__resume_1718192897.pdf	\N	\N	\N
2126	Ramanantsoa	\N	Marissa 	andriasarrah@gmail.com	Antananarivo	\N	Inconnue	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 11:48:17.712638	2024-06-25 11:41:57.141814	10	\N	\N	\N	activ__resume_1718192897.pdf	\N	\N	\N
2125	RAHARIMAHANDRY	\N	Faly Lutetia mylen	raharimahand.5@gmail.com	342999608	2003	Lot II E 66 EDB Ter Ampanotokana	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 11:48:17.443838	2024-06-25 11:44:44.817161	10	\N	Disponible immediat	\N	activ__resume_1718192897.pdf	\N	\N	\N
2124	ANDRIAMBOLOLONA	\N	Vola Jessica	volazara.7505@gmail.com	34 89 743 57	\N	IVC 14 H Ambohimanarina	\N	\N	+ de 5 ans	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	t	2024-06-12 11:48:17.224408	2024-06-25 11:46:27.024535	10	\N	\N	\N	activ__resume_1718192897.pdf	\N	\N	\N
2123	RAKOTOVOLOLONA	\N	Ando Mbolatiana	andombolatiana@gmail.com	033 05 933 53	\N	504 E 100 Antsirabe 110	\N	\N	+ de 5 ans	Madagascar	Capter l’attention des lecteurs en publiant des articles sur des thèmes varies	CDI	Malgache	Non spécifiée	t	2024-06-12 11:48:16.852515	2024-06-25 11:48:18.906102	12	\N	Disponible immediat	\N	activ__resume_1718192896.pdf	\N	\N	\N
2122	RANDRIAMIHARY	\N	Barisoa Heriniaina	heriniainarandriamihary75@gmail.com	34.98.009.07	\N	Inconnue	\N	\N	3 ans	Autre résident	Je cherche un poste à responsabilités proposant une mission commerciale et\r\nmanagériale. Je suis dynamique, organisée, à l’écoute des autres, possédant\r\nl’esprit d’équipe. J’aime apprendre et me dépasser chaque jour, relever des\r\ndéfier ne me fais pas peur.	CDI	Autre nationalité	Non spécifiée	t	2024-06-12 11:48:16.479804	2024-06-25 11:50:43.567482	10	\N	\N	\N	activ__resume_1718192896.pdf	\N	\N	\N
2136	RANDRIAKOTOMALALA	\N	ANDRY ANTHONY ARENAH	rakutmalala@gmail.com	034 47 885 48	\N	Inconnue	\N	\N	+ de 10 ans	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	t	2024-06-12 13:07:54.318264	2024-06-25 11:51:32.517333	\N	\N	\N	\N	activ__resume_1718197674.pdf	\N	\N	\N
2135	MIANDRIRAZA	\N	Augustin	miandrirazaa@gmail.com	032 65 624 09	\N	Lot IVJ 200 ANOSISOA AMBOHIMANARINA	\N	\N	1 an	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 13:07:53.705011	2024-06-25 12:05:50.863965	\N	\N	\N	\N	activ__resume_1718197673.pdf	\N	\N	\N
2134	RAKOTOVAO	\N	Ando Nirina	nirinarakotovao08@gmai.com	0349979484	\N	Lot II P 92 Ter Avaradoha	\N	\N	+ de 10 ans	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 13:07:53.320916	2024-06-25 12:14:00.207282	\N	\N	\N	\N	activ__resume_1718197673.pdf	\N	\N	\N
2133	RANDRIANASOLO	\N	Miora Tiana	\N	0340087423	\N	Inconnue	\N	\N	2 ans	Autre résident	\N	CDI	Autre nationalité	Non spécifiée	t	2024-06-12 13:07:52.762425	2024-06-25 12:17:21.762242	\N	\N	\N	\N	activ__resume_1718197672.pdf	\N	\N	\N
1899	RAZAFIMAHATRATRA	\N	Nantenaina Miharisoa	nantenaina.razaf@gmail.com	34 79 859 49	\N	IVB 142 BETAFO AMBOHIMANARINA	\N	\N	3 ans	Madagascar	\N	CDI	Malgache	Non spécifiée	f	2024-06-12 11:46:53.043466	2024-06-25 11:32:09.204425	4	\N	\N	\N	activ__resume_1718192813.pdf	\N	\N	\N
200	RANDRIAMANANTENA	\N	Toky Joela Manoela	toucksjoe@gmail.com	34 14 524 84	\N	 Lot 99AI Ambodirano Ivato	\N	\N	4 ans	Madagascar	Sérieux, Passionné, motivé et capacité d’adaptation élevée\r\n• Maitrise de la langue Malagasy, Français (lu, parler, écrit), et quelques notions\r\nd’Anglais	CDI	Malgache	Non spécifiée	t	2024-06-12 11:35:23.28741	2024-06-25 11:52:47.391438	8	\N	\N	\N	activ__resume_1718192123.pdf	\N	\N	\N
119	RAKOTONDRABE	\N	Safidy Fitiavana N a N	safidyrakotondra@gmail.com	348305870	\N	lot AB 399 Ambohimamory	\N	\N	1 an	Autre résident	Améliorer mes compétences professionnelles, mes capacités et mes connaissances dans une organisation qui reconnait la valeur acharnée et qui me confie des responsabilités et des défis.	CDI	Autre nationalité	Non spécifiée	t	2024-06-12 11:34:48.837043	2024-06-25 11:58:17.188424	3	\N	\N	\N	activ__resume_1718192088.pdf	\N	\N	\N
118	RANDRIAMIHARISOA	\N	Fenitra	FenitraRANDRIAMIHARISOA@gmail.com	349057829	\N	Lot IIN 49 Bis Anjanahary	\N	\N	3 ans	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 11:34:48.53808	2024-06-25 12:00:21.474555	10	\N	Disponible immediat	\N	activ__resume_1718192088.pdf	\N	\N	\N
116	Toutoune	\N	Yves	toonsatatriniaina@gmail.com	322918460	\N	Ankadimbahoaka Ouest	\N	\N	4 ans	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 11:34:47.948708	2024-06-25 12:17:04.485515	10	\N	Disponible immediat	\N	activ__resume_1718192087.pdf	\N	\N	\N
113	NI RI AN TSOA	\N	Vonona Tsiriniaina	ainavonona@gmail.com	34 90 172 98	\N	Inconnue	\N	https://www.linkedin.com/in/aina-vonona-7ba60917a/	2 ans	Madagascar	\N	CDI	Malgache	Non spécifiée	t	2024-06-12 11:34:46.915978	2024-06-25 12:22:45.553901	3	\N	Disponible immediat	\N	activ__resume_1718192086.pdf	\N	\N	\N
112	RASOAVAHOAKA 	\N	RIRA ALICE	rira.rasoavahoaka@gmail.com	034 54 976 97	\N	Lot IVW 54 LAG Anosizato EST II	\N	\N	3 ans	Madagascar	Ayant un bon relationnel avec les clients ou les employés .\r\nJe suis activement à la recherche d’un emploi dans le but d’améliorer\r\nmon expériences professionnelle . Je suis dynamique , organisé ,\r\npossédant l’esprit , j’aime travailler en équipe .	CDI	Malgache	Non spécifiée	t	2024-06-12 11:34:46.266039	2024-06-25 12:24:08.766885	\N	\N	\N	\N	activ__resume_1718192086.pdf	\N	\N	\N
\.


--
-- Data for Name: demand_logins; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.demand_logins (id, name, email, object, numero, description, pays, adresse, ip, prenom, site, priorisation, post, lu, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: diplomes; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.diplomes (id, ecole, datecole, datefinecole, descriptionecole, created_at, updated_at, cv_id) FROM stdin;
1	College	2011	2013	Les   dates de valeur afférentes aux virements émis et reçus,  -   Le   montant de l’opération effectuée,  -   Des   frais et commissions, ainsi que les procédures et voies de recours  disponibles en cas de contestation.  Les   banques   doivent   aussi   communique r   à   leurs   clients,   après   chaque  transfert de fonds   :  -   Le   montant de l’opération effectuée,-   Des   frais et commissions prélevés à cette occasion, et le taux de  change   retenu   dans   le   cas   d’un   transfert   de   fonds   en   monnaie  étrangère.  Ces renseignements sont présentés d’une manière lisible, claire et sans équivoque, sur des avis  d’opéré ou des extrai ts de comptes, dans les deux mois suivants l’exécution de l’opération.	2024-06-10 10:51:22.354015	2024-06-10 10:51:22.354015	2
2	srfbgs gfb				2024-06-12 09:59:48.366349	2024-06-12 09:59:48.366349	3
\.


--
-- Data for Name: entretiens; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.entretiens (id, user_id, cv_id, drdv, hrdv, lu, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: experiences; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.experiences (id, societe, datexp, datefin, descriptionexp, created_at, updated_at, cv_id) FROM stdin;
1	Optiserv	2015	2019	Les   dates de valeur afférentes aux virements émis et reçus,  -   Le   montant de l’opération effectuée,  -   Des   frais et commissions, ainsi que les procédures et voies de recours  disponibles en cas de contestation.  Les   banques   doivent   aussi   communique r   à   leurs   clients,   après   chaque  transfert de fonds   :  -   Le   montant de l’opération effectuée,-   Des   frais et commissions prélevés à cette occasion, et le taux de  change   retenu   dans   le   cas   d’un   transfert   de   fonds   en   monnaie  étrangère.  Ces renseignements sont présentés d’une manière lisible, claire et sans équivoque, sur des avis  d’opéré ou des extrai ts de comptes, dans les deux mois suivants l’exécution de l’opération.	2024-06-10 10:51:21.680076	2024-06-10 10:51:21.680076	2
2	ASM	2020	2021	Les   dates de valeur afférentes aux virements émis et reçus,  -   Le   montant de l’opération effectuée,  -   Des   frais et commissions, ainsi que les procédures et voies de recours  disponibles en cas de contestation.  Les   banques   doivent   aussi   communique r   à   leurs   clients,   après   chaque  transfert de fonds   :  -   Le   montant de l’opération effectuée,-   Des   frais et commissions prélevés à cette occasion, et le taux de  change   retenu   dans   le   cas   d’un   transfert   de   fonds   en   monnaie  étrangère.  Ces renseignements sont présentés d’une manière lisible, claire et sans équivoque, sur des avis  d’opéré ou des extrai ts de comptes, dans les deux mois suivants l’exécution de l’opération.	2024-06-10 10:51:21.891849	2024-06-10 10:51:21.891849	2
3	grs bsr bf 	2020			2024-06-12 09:59:47.869346	2024-06-12 09:59:47.869346	3
\.


--
-- Data for Name: favorites; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.favorites (id, user_id, cv_id, lu, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: informatiques; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.informatiques (id, logiciel, progressinfo, created_at, updated_at, cv_id) FROM stdin;
1	Canva	70	2024-06-10 10:51:22.29287	2024-06-10 10:51:22.29287	2
2	Word	90	2024-06-10 10:51:22.319304	2024-06-10 10:51:22.319304	2
3	Excel	60	2024-06-10 10:51:22.331458	2024-06-10 10:51:22.331458	2
\.


--
-- Data for Name: langages; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.langages (id, langue, progresslangue, created_at, updated_at, cv_id) FROM stdin;
1	Francais	60	2024-06-10 10:51:22.104222	2024-06-10 10:51:22.104222	2
2	Malagasy	90	2024-06-10 10:51:22.108453	2024-06-10 10:51:22.108453	2
3	Anglais	80	2024-06-10 10:51:22.121003	2024-06-10 10:51:22.121003	2
4	allemand	70	2024-06-12 09:59:48.343123	2024-06-12 09:59:48.343123	3
5	francais	90	2024-06-12 09:59:48.378828	2024-06-12 09:59:48.378828	3
\.


--
-- Data for Name: loisirs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.loisirs (id, loisir, created_at, updated_at, cv_id) FROM stdin;
1	Farady	2024-06-10 10:51:22.076013	2024-06-10 10:51:22.076013	2
2	GIMP	2024-06-10 10:51:22.091294	2024-06-10 10:51:22.091294	2
3	Figma	2024-06-10 10:51:22.326145	2024-06-10 10:51:22.326145	2
4	chieuse	2024-06-12 09:59:48.124984	2024-06-12 09:59:48.124984	3
\.


--
-- Data for Name: profil_ideals; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.profil_ideals (id, description, user_id, lu, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.ratings (id, rate, user_id, cv_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.schema_migrations (version) FROM stdin;
20230419105905
20230419125128
20230424071020
20230424143941
20230424144236
20230424145830
20230424151019
20230426073730
20230426073952
20230426074215
20230426074314
20230426074428
20230426121405
20230426125808
20230426133021
20230426135932
20230426141944
20230505123718
20230510150829
20230526081109
20230526113303
20230621132748
20230707140306
20230707140307
20230707140308
20230808100015
20230809121243
20230810131452
20230819065533
20230915070811
20231130064048
20231205101709
20231206134322
\.


--
-- Data for Name: sous_categories; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.sous_categories (id, categorie, categorie_cv_id, description, created_at, updated_at) FROM stdin;
1	Directeur Financier (CFO)	3	Directeur Financier (CFO)	2024-06-06 08:30:20.558485	2024-06-06 08:30:20.558485
2	Comptable	3	Comptable	2024-06-06 08:30:27.837791	2024-06-06 08:30:27.837791
3	Directeur des Ressources Humaines (DRH)	4	Directeur des Ressources Humaines (DRH)	2024-06-06 08:30:56.215346	2024-06-06 08:30:56.215346
4	Responsable RH	4	Responsable RH	2024-06-06 08:31:04.428687	2024-06-06 08:31:04.428687
5	Recruteur	4	Recruteur	2024-06-06 08:31:09.372628	2024-06-06 08:31:09.372628
6	Gestionnaire de Paie	4	Gestionnaire de Paie	2024-06-06 08:31:14.925498	2024-06-06 08:31:14.925498
7	Formation et Développement	4	Formation et Développement	2024-06-06 08:31:21.452293	2024-06-06 08:31:21.452293
8	Directeur Marketing	5	Directeur Marketing	2024-06-06 08:31:53.549545	2024-06-06 08:31:53.549545
9	Chef de Projet Marketing	5	Chef de Projet Marketing	2024-06-06 08:31:59.764621	2024-06-06 08:31:59.764621
10	Community Manager	5	Community Manager	2024-06-06 08:32:07.428632	2024-06-06 08:32:07.428632
11	Spécialiste SEO/SEM	5	Spécialiste SEO/SEM	2024-06-06 08:32:15.103994	2024-06-06 08:32:15.103994
12	Directeur Commercial	6	Directeur Commercial	2024-06-06 08:32:50.739107	2024-06-06 08:32:50.739107
13	Télévendeur	6	Télévendeur	2024-06-06 08:32:59.81442	2024-06-06 08:32:59.81442
14	Directeur Informatique (CIO)	7	Directeur Informatique (CIO)	2024-06-06 08:33:29.031602	2024-06-06 08:33:29.031602
15	Développeur Web	7	Développeur Web	2024-06-06 08:33:35.388945	2024-06-06 08:33:35.388945
16	Administrateur Réseaux	7	Administrateur Réseaux	2024-06-06 08:33:41.701703	2024-06-06 08:33:41.701703
17	Ingénieur Sécurité	7	Ingénieur Sécurité	2024-06-06 08:33:47.902013	2024-06-06 08:33:47.902013
18	Chef de Projet IT	7	Chef de Projet IT	2024-06-06 08:33:53.781288	2024-06-06 08:33:53.781288
19	Responsable Logistique	8	Responsable Logistique	2024-06-06 08:34:21.784553	2024-06-06 08:34:21.784553
20	Contrôleur Qualité	9	Contrôleur Qualité	2024-06-06 08:34:56.075141	2024-06-06 08:34:56.075141
21	Auditeur Qualité	9	Auditeur Qualité	2024-06-06 08:35:01.368528	2024-06-06 08:35:01.368528
22	Conseiller Clientèle	10	Conseiller Clientèle	2024-06-06 08:35:37.340898	2024-06-06 08:35:37.340898
23	Chef de Projet Développement	11	Chef de Projet Développement	2024-06-06 08:36:17.970561	2024-06-06 08:36:17.970561
\.


--
-- Data for Name: user_categorie_cvs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.user_categorie_cvs (id, user_id, categorie_cv_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.users (id, name, prenom, notifier, email, role, phone, societe, site, post, priorisation, pass, expire, pays, adresse, account, password_digest, created_at, updated_at, authentication_token) FROM stdin;
1	Leila	\N	t	contact@activsolution.fr	Administrateur	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	$2a$12$NjPFbrcDxc/bZN2vfNW4KO5gQHPolfln9Mw9oSCmDffgJSyeHfOxK	2024-03-19 10:58:44.595278	2024-03-19 10:58:44.595278	9Wi2s-sT-4xymfJACJaV
\.


--
-- Data for Name: views; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.views (id, cv_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: categorie_cvs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.categorie_cvs_id_seq', 12, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: cvs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.cvs_id_seq', 2196, true);


--
-- Name: demand_logins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.demand_logins_id_seq', 1, false);


--
-- Name: diplomes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.diplomes_id_seq', 2, true);


--
-- Name: entretiens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.entretiens_id_seq', 1, false);


--
-- Name: experiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.experiences_id_seq', 3, true);


--
-- Name: favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.favorites_id_seq', 1, false);


--
-- Name: informatiques_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.informatiques_id_seq', 3, true);


--
-- Name: langages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.langages_id_seq', 5, true);


--
-- Name: loisirs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.loisirs_id_seq', 4, true);


--
-- Name: profil_ideals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.profil_ideals_id_seq', 1, false);


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);


--
-- Name: sous_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.sous_categories_id_seq', 23, true);


--
-- Name: user_categorie_cvs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.user_categorie_cvs_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.views_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: categorie_cvs categorie_cvs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.categorie_cvs
    ADD CONSTRAINT categorie_cvs_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: cvs cvs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT cvs_pkey PRIMARY KEY (id);


--
-- Name: demand_logins demand_logins_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.demand_logins
    ADD CONSTRAINT demand_logins_pkey PRIMARY KEY (id);


--
-- Name: diplomes diplomes_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.diplomes
    ADD CONSTRAINT diplomes_pkey PRIMARY KEY (id);


--
-- Name: entretiens entretiens_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.entretiens
    ADD CONSTRAINT entretiens_pkey PRIMARY KEY (id);


--
-- Name: experiences experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.experiences
    ADD CONSTRAINT experiences_pkey PRIMARY KEY (id);


--
-- Name: favorites favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_pkey PRIMARY KEY (id);


--
-- Name: informatiques informatiques_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.informatiques
    ADD CONSTRAINT informatiques_pkey PRIMARY KEY (id);


--
-- Name: langages langages_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.langages
    ADD CONSTRAINT langages_pkey PRIMARY KEY (id);


--
-- Name: loisirs loisirs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.loisirs
    ADD CONSTRAINT loisirs_pkey PRIMARY KEY (id);


--
-- Name: profil_ideals profil_ideals_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.profil_ideals
    ADD CONSTRAINT profil_ideals_pkey PRIMARY KEY (id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sous_categories sous_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.sous_categories
    ADD CONSTRAINT sous_categories_pkey PRIMARY KEY (id);


--
-- Name: user_categorie_cvs user_categorie_cvs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_categorie_cvs
    ADD CONSTRAINT user_categorie_cvs_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: views views_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT views_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_authentication_token; Type: INDEX; Schema: public; Owner: user
--

CREATE UNIQUE INDEX index_users_on_authentication_token ON public.users USING btree (authentication_token);


--
-- PostgreSQL database dump complete
--

