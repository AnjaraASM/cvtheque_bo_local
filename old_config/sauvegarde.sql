PGDMP     )        	            |            cvtheque_api_development %   14.11 (Ubuntu 14.11-0ubuntu0.22.04.1) %   14.11 (Ubuntu 14.11-0ubuntu0.22.04.1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    21559    cvtheque_api_development    DATABASE     m   CREATE DATABASE cvtheque_api_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
 (   DROP DATABASE cvtheque_api_development;
                user    false            �            1259    21568    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    user    false            �            1259    22666    categorie_cvs    TABLE     �   CREATE TABLE public.categorie_cvs (
    id bigint NOT NULL,
    categorie character varying,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 !   DROP TABLE public.categorie_cvs;
       public         heap    user    false            �            1259    22665    categorie_cvs_id_seq    SEQUENCE     }   CREATE SEQUENCE public.categorie_cvs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.categorie_cvs_id_seq;
       public          user    false    212            �           0    0    categorie_cvs_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.categorie_cvs_id_seq OWNED BY public.categorie_cvs.id;
          public          user    false    211            �            1259    22675    comments    TABLE       CREATE TABLE public.comments (
    id bigint NOT NULL,
    commentaire text,
    user_id character varying,
    cv_id character varying,
    lu character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.comments;
       public         heap    user    false            �            1259    22674    comments_id_seq    SEQUENCE     x   CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          user    false    214            �           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          user    false    213            �            1259    22684    cvs    TABLE     p  CREATE TABLE public.cvs (
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
    DROP TABLE public.cvs;
       public         heap    user    false            �            1259    22683 
   cvs_id_seq    SEQUENCE     s   CREATE SEQUENCE public.cvs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.cvs_id_seq;
       public          user    false    216            �           0    0 
   cvs_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.cvs_id_seq OWNED BY public.cvs.id;
          public          user    false    215            �            1259    22694    demand_logins    TABLE     �  CREATE TABLE public.demand_logins (
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
 !   DROP TABLE public.demand_logins;
       public         heap    user    false            �            1259    22693    demand_logins_id_seq    SEQUENCE     }   CREATE SEQUENCE public.demand_logins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.demand_logins_id_seq;
       public          user    false    218            �           0    0    demand_logins_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.demand_logins_id_seq OWNED BY public.demand_logins.id;
          public          user    false    217            �            1259    22704    diplomes    TABLE     8  CREATE TABLE public.diplomes (
    id bigint NOT NULL,
    ecole character varying,
    datecole character varying,
    datefinecole character varying,
    descriptionecole text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cv_id integer
);
    DROP TABLE public.diplomes;
       public         heap    user    false            �            1259    22703    diplomes_id_seq    SEQUENCE     x   CREATE SEQUENCE public.diplomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.diplomes_id_seq;
       public          user    false    220            �           0    0    diplomes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.diplomes_id_seq OWNED BY public.diplomes.id;
          public          user    false    219            �            1259    22713 
   entretiens    TABLE     )  CREATE TABLE public.entretiens (
    id bigint NOT NULL,
    user_id integer,
    cv_id integer,
    drdv character varying,
    hrdv character varying,
    lu boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.entretiens;
       public         heap    user    false            �            1259    22712    entretiens_id_seq    SEQUENCE     z   CREATE SEQUENCE public.entretiens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.entretiens_id_seq;
       public          user    false    222            �           0    0    entretiens_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.entretiens_id_seq OWNED BY public.entretiens.id;
          public          user    false    221            �            1259    22723    experiences    TABLE     4  CREATE TABLE public.experiences (
    id bigint NOT NULL,
    societe character varying,
    datexp character varying,
    datefin character varying,
    descriptionexp text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cv_id integer
);
    DROP TABLE public.experiences;
       public         heap    user    false            �            1259    22722    experiences_id_seq    SEQUENCE     {   CREATE SEQUENCE public.experiences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.experiences_id_seq;
       public          user    false    224            �           0    0    experiences_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.experiences_id_seq OWNED BY public.experiences.id;
          public          user    false    223            �            1259    22732 	   favorites    TABLE     �   CREATE TABLE public.favorites (
    id bigint NOT NULL,
    user_id integer,
    cv_id integer,
    lu boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.favorites;
       public         heap    user    false            �            1259    22731    favorites_id_seq    SEQUENCE     y   CREATE SEQUENCE public.favorites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.favorites_id_seq;
       public          user    false    226            �           0    0    favorites_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.favorites_id_seq OWNED BY public.favorites.id;
          public          user    false    225            �            1259    22740    informatiques    TABLE     �   CREATE TABLE public.informatiques (
    id bigint NOT NULL,
    logiciel character varying,
    progressinfo integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cv_id integer
);
 !   DROP TABLE public.informatiques;
       public         heap    user    false            �            1259    22739    informatiques_id_seq    SEQUENCE     }   CREATE SEQUENCE public.informatiques_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.informatiques_id_seq;
       public          user    false    228            �           0    0    informatiques_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.informatiques_id_seq OWNED BY public.informatiques.id;
          public          user    false    227            �            1259    22749    langages    TABLE     �   CREATE TABLE public.langages (
    id bigint NOT NULL,
    langue character varying,
    progresslangue integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cv_id integer
);
    DROP TABLE public.langages;
       public         heap    user    false            �            1259    22748    langages_id_seq    SEQUENCE     x   CREATE SEQUENCE public.langages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.langages_id_seq;
       public          user    false    230            �           0    0    langages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.langages_id_seq OWNED BY public.langages.id;
          public          user    false    229            �            1259    22758    loisirs    TABLE     �   CREATE TABLE public.loisirs (
    id bigint NOT NULL,
    loisir character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cv_id integer
);
    DROP TABLE public.loisirs;
       public         heap    user    false            �            1259    22757    loisirs_id_seq    SEQUENCE     w   CREATE SEQUENCE public.loisirs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.loisirs_id_seq;
       public          user    false    232            �           0    0    loisirs_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.loisirs_id_seq OWNED BY public.loisirs.id;
          public          user    false    231            �            1259    22767    profil_ideals    TABLE        CREATE TABLE public.profil_ideals (
    id bigint NOT NULL,
    description text,
    user_id integer,
    lu boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 !   DROP TABLE public.profil_ideals;
       public         heap    user    false            �            1259    22766    profil_ideals_id_seq    SEQUENCE     }   CREATE SEQUENCE public.profil_ideals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.profil_ideals_id_seq;
       public          user    false    234            �           0    0    profil_ideals_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.profil_ideals_id_seq OWNED BY public.profil_ideals.id;
          public          user    false    233            �            1259    22960    ratings    TABLE     �   CREATE TABLE public.ratings (
    id bigint NOT NULL,
    rate integer,
    user_id integer,
    cv_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.ratings;
       public         heap    user    false            �            1259    22959    ratings_id_seq    SEQUENCE     w   CREATE SEQUENCE public.ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          user    false    244            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          user    false    243            �            1259    21561    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    user    false            �            1259    22777    sous_categories    TABLE       CREATE TABLE public.sous_categories (
    id bigint NOT NULL,
    categorie character varying,
    categorie_cv_id integer,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 #   DROP TABLE public.sous_categories;
       public         heap    user    false            �            1259    22776    sous_categories_id_seq    SEQUENCE        CREATE SEQUENCE public.sous_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.sous_categories_id_seq;
       public          user    false    236            �           0    0    sous_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.sous_categories_id_seq OWNED BY public.sous_categories.id;
          public          user    false    235            �            1259    22786    user_categorie_cvs    TABLE     �   CREATE TABLE public.user_categorie_cvs (
    id bigint NOT NULL,
    user_id integer,
    categorie_cv_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 &   DROP TABLE public.user_categorie_cvs;
       public         heap    user    false            �            1259    22785    user_categorie_cvs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_categorie_cvs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.user_categorie_cvs_id_seq;
       public          user    false    238            �           0    0    user_categorie_cvs_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.user_categorie_cvs_id_seq OWNED BY public.user_categorie_cvs.id;
          public          user    false    237            �            1259    22793    users    TABLE     �  CREATE TABLE public.users (
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
    DROP TABLE public.users;
       public         heap    user    false            �            1259    22792    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          user    false    240            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          user    false    239            �            1259    22805    views    TABLE     �   CREATE TABLE public.views (
    id bigint NOT NULL,
    cv_id integer,
    user_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.views;
       public         heap    user    false            �            1259    22804    views_id_seq    SEQUENCE     u   CREATE SEQUENCE public.views_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.views_id_seq;
       public          user    false    242            �           0    0    views_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.views_id_seq OWNED BY public.views.id;
          public          user    false    241            �           2604    22669    categorie_cvs id    DEFAULT     t   ALTER TABLE ONLY public.categorie_cvs ALTER COLUMN id SET DEFAULT nextval('public.categorie_cvs_id_seq'::regclass);
 ?   ALTER TABLE public.categorie_cvs ALTER COLUMN id DROP DEFAULT;
       public          user    false    211    212    212            �           2604    22678    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          user    false    214    213    214            �           2604    22687    cvs id    DEFAULT     `   ALTER TABLE ONLY public.cvs ALTER COLUMN id SET DEFAULT nextval('public.cvs_id_seq'::regclass);
 5   ALTER TABLE public.cvs ALTER COLUMN id DROP DEFAULT;
       public          user    false    215    216    216            �           2604    22697    demand_logins id    DEFAULT     t   ALTER TABLE ONLY public.demand_logins ALTER COLUMN id SET DEFAULT nextval('public.demand_logins_id_seq'::regclass);
 ?   ALTER TABLE public.demand_logins ALTER COLUMN id DROP DEFAULT;
       public          user    false    218    217    218            �           2604    22707    diplomes id    DEFAULT     j   ALTER TABLE ONLY public.diplomes ALTER COLUMN id SET DEFAULT nextval('public.diplomes_id_seq'::regclass);
 :   ALTER TABLE public.diplomes ALTER COLUMN id DROP DEFAULT;
       public          user    false    220    219    220            �           2604    22716    entretiens id    DEFAULT     n   ALTER TABLE ONLY public.entretiens ALTER COLUMN id SET DEFAULT nextval('public.entretiens_id_seq'::regclass);
 <   ALTER TABLE public.entretiens ALTER COLUMN id DROP DEFAULT;
       public          user    false    221    222    222            �           2604    22726    experiences id    DEFAULT     p   ALTER TABLE ONLY public.experiences ALTER COLUMN id SET DEFAULT nextval('public.experiences_id_seq'::regclass);
 =   ALTER TABLE public.experiences ALTER COLUMN id DROP DEFAULT;
       public          user    false    224    223    224            �           2604    22735    favorites id    DEFAULT     l   ALTER TABLE ONLY public.favorites ALTER COLUMN id SET DEFAULT nextval('public.favorites_id_seq'::regclass);
 ;   ALTER TABLE public.favorites ALTER COLUMN id DROP DEFAULT;
       public          user    false    225    226    226            �           2604    22743    informatiques id    DEFAULT     t   ALTER TABLE ONLY public.informatiques ALTER COLUMN id SET DEFAULT nextval('public.informatiques_id_seq'::regclass);
 ?   ALTER TABLE public.informatiques ALTER COLUMN id DROP DEFAULT;
       public          user    false    228    227    228            �           2604    22752    langages id    DEFAULT     j   ALTER TABLE ONLY public.langages ALTER COLUMN id SET DEFAULT nextval('public.langages_id_seq'::regclass);
 :   ALTER TABLE public.langages ALTER COLUMN id DROP DEFAULT;
       public          user    false    229    230    230            �           2604    22761 
   loisirs id    DEFAULT     h   ALTER TABLE ONLY public.loisirs ALTER COLUMN id SET DEFAULT nextval('public.loisirs_id_seq'::regclass);
 9   ALTER TABLE public.loisirs ALTER COLUMN id DROP DEFAULT;
       public          user    false    232    231    232            �           2604    22770    profil_ideals id    DEFAULT     t   ALTER TABLE ONLY public.profil_ideals ALTER COLUMN id SET DEFAULT nextval('public.profil_ideals_id_seq'::regclass);
 ?   ALTER TABLE public.profil_ideals ALTER COLUMN id DROP DEFAULT;
       public          user    false    233    234    234            �           2604    22963 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          user    false    244    243    244            �           2604    22780    sous_categories id    DEFAULT     x   ALTER TABLE ONLY public.sous_categories ALTER COLUMN id SET DEFAULT nextval('public.sous_categories_id_seq'::regclass);
 A   ALTER TABLE public.sous_categories ALTER COLUMN id DROP DEFAULT;
       public          user    false    235    236    236            �           2604    22789    user_categorie_cvs id    DEFAULT     ~   ALTER TABLE ONLY public.user_categorie_cvs ALTER COLUMN id SET DEFAULT nextval('public.user_categorie_cvs_id_seq'::regclass);
 D   ALTER TABLE public.user_categorie_cvs ALTER COLUMN id DROP DEFAULT;
       public          user    false    238    237    238            �           2604    22796    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          user    false    239    240    240            �           2604    22808    views id    DEFAULT     d   ALTER TABLE ONLY public.views ALTER COLUMN id SET DEFAULT nextval('public.views_id_seq'::regclass);
 7   ALTER TABLE public.views ALTER COLUMN id DROP DEFAULT;
       public          user    false    242    241    242            �          0    21568    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          user    false    210   ��       �          0    22666    categorie_cvs 
   TABLE DATA           [   COPY public.categorie_cvs (id, categorie, description, created_at, updated_at) FROM stdin;
    public          user    false    212   C�       �          0    22675    comments 
   TABLE DATA           _   COPY public.comments (id, commentaire, user_id, cv_id, lu, created_at, updated_at) FROM stdin;
    public          user    false    214   ��       �          0    22684    cvs 
   TABLE DATA           F  COPY public.cvs (id, "nomPrenom", nom, prenom, email, telephone, age, adresse, facebook, linkedin, "aExperience", nationalite, "descriptionProfile", contrat, "national", pretention, status, created_at, updated_at, categorie_cv_id, photo, disponibility, sous_category_id, resume, telephone1, telephone2, datedispo) FROM stdin;
    public          user    false    216   ƙ       �          0    22694    demand_logins 
   TABLE DATA           �   COPY public.demand_logins (id, name, email, object, numero, description, pays, adresse, ip, prenom, site, priorisation, post, lu, created_at, updated_at) FROM stdin;
    public          user    false    218   c�       �          0    22704    diplomes 
   TABLE DATA           v   COPY public.diplomes (id, ecole, datecole, datefinecole, descriptionecole, created_at, updated_at, cv_id) FROM stdin;
    public          user    false    220   ��       �          0    22713 
   entretiens 
   TABLE DATA           `   COPY public.entretiens (id, user_id, cv_id, drdv, hrdv, lu, created_at, updated_at) FROM stdin;
    public          user    false    222   ��       �          0    22723    experiences 
   TABLE DATA           r   COPY public.experiences (id, societe, datexp, datefin, descriptionexp, created_at, updated_at, cv_id) FROM stdin;
    public          user    false    224   ��       �          0    22732 	   favorites 
   TABLE DATA           S   COPY public.favorites (id, user_id, cv_id, lu, created_at, updated_at) FROM stdin;
    public          user    false    226   ך       �          0    22740    informatiques 
   TABLE DATA           b   COPY public.informatiques (id, logiciel, progressinfo, created_at, updated_at, cv_id) FROM stdin;
    public          user    false    228   ��       �          0    22749    langages 
   TABLE DATA           ]   COPY public.langages (id, langue, progresslangue, created_at, updated_at, cv_id) FROM stdin;
    public          user    false    230   �       �          0    22758    loisirs 
   TABLE DATA           L   COPY public.loisirs (id, loisir, created_at, updated_at, cv_id) FROM stdin;
    public          user    false    232   .�       �          0    22767    profil_ideals 
   TABLE DATA           ]   COPY public.profil_ideals (id, description, user_id, lu, created_at, updated_at) FROM stdin;
    public          user    false    234   K�       �          0    22960    ratings 
   TABLE DATA           S   COPY public.ratings (id, rate, user_id, cv_id, created_at, updated_at) FROM stdin;
    public          user    false    244   h�       �          0    21561    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          user    false    209   ��       �          0    22777    sous_categories 
   TABLE DATA           n   COPY public.sous_categories (id, categorie, categorie_cv_id, description, created_at, updated_at) FROM stdin;
    public          user    false    236   J�       �          0    22786    user_categorie_cvs 
   TABLE DATA           b   COPY public.user_categorie_cvs (id, user_id, categorie_cv_id, created_at, updated_at) FROM stdin;
    public          user    false    238   g�       �          0    22793    users 
   TABLE DATA           �   COPY public.users (id, name, prenom, notifier, email, role, phone, societe, site, post, priorisation, pass, expire, pays, adresse, account, password_digest, created_at, updated_at, authentication_token) FROM stdin;
    public          user    false    240   ��       �          0    22805    views 
   TABLE DATA           K   COPY public.views (id, cv_id, user_id, created_at, updated_at) FROM stdin;
    public          user    false    242   @�       �           0    0    categorie_cvs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.categorie_cvs_id_seq', 1, true);
          public          user    false    211            �           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 1, false);
          public          user    false    213            �           0    0 
   cvs_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.cvs_id_seq', 1, true);
          public          user    false    215            �           0    0    demand_logins_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.demand_logins_id_seq', 1, false);
          public          user    false    217            �           0    0    diplomes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.diplomes_id_seq', 1, false);
          public          user    false    219            �           0    0    entretiens_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.entretiens_id_seq', 1, false);
          public          user    false    221            �           0    0    experiences_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.experiences_id_seq', 1, false);
          public          user    false    223            �           0    0    favorites_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.favorites_id_seq', 1, false);
          public          user    false    225            �           0    0    informatiques_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.informatiques_id_seq', 1, false);
          public          user    false    227            �           0    0    langages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.langages_id_seq', 1, false);
          public          user    false    229            �           0    0    loisirs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loisirs_id_seq', 1, false);
          public          user    false    231            �           0    0    profil_ideals_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.profil_ideals_id_seq', 1, false);
          public          user    false    233            �           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          user    false    243            �           0    0    sous_categories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.sous_categories_id_seq', 1, false);
          public          user    false    235            �           0    0    user_categorie_cvs_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.user_categorie_cvs_id_seq', 1, false);
          public          user    false    237            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          user    false    239            �           0    0    views_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.views_id_seq', 1, false);
          public          user    false    241            �           2606    21574 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            user    false    210            �           2606    22673     categorie_cvs categorie_cvs_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.categorie_cvs
    ADD CONSTRAINT categorie_cvs_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.categorie_cvs DROP CONSTRAINT categorie_cvs_pkey;
       public            user    false    212            �           2606    22682    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            user    false    214            �           2606    22692    cvs cvs_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT cvs_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT cvs_pkey;
       public            user    false    216            �           2606    22702     demand_logins demand_logins_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.demand_logins
    ADD CONSTRAINT demand_logins_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.demand_logins DROP CONSTRAINT demand_logins_pkey;
       public            user    false    218            �           2606    22711    diplomes diplomes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.diplomes
    ADD CONSTRAINT diplomes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.diplomes DROP CONSTRAINT diplomes_pkey;
       public            user    false    220            �           2606    22721    entretiens entretiens_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.entretiens
    ADD CONSTRAINT entretiens_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.entretiens DROP CONSTRAINT entretiens_pkey;
       public            user    false    222            �           2606    22730    experiences experiences_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.experiences
    ADD CONSTRAINT experiences_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.experiences DROP CONSTRAINT experiences_pkey;
       public            user    false    224            �           2606    22738    favorites favorites_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.favorites DROP CONSTRAINT favorites_pkey;
       public            user    false    226            �           2606    22747     informatiques informatiques_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.informatiques
    ADD CONSTRAINT informatiques_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.informatiques DROP CONSTRAINT informatiques_pkey;
       public            user    false    228            �           2606    22756    langages langages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.langages
    ADD CONSTRAINT langages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.langages DROP CONSTRAINT langages_pkey;
       public            user    false    230            �           2606    22765    loisirs loisirs_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.loisirs
    ADD CONSTRAINT loisirs_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.loisirs DROP CONSTRAINT loisirs_pkey;
       public            user    false    232            �           2606    22775     profil_ideals profil_ideals_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.profil_ideals
    ADD CONSTRAINT profil_ideals_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.profil_ideals DROP CONSTRAINT profil_ideals_pkey;
       public            user    false    234            �           2606    22965    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            user    false    244            �           2606    21567 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            user    false    209            �           2606    22784 $   sous_categories sous_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.sous_categories
    ADD CONSTRAINT sous_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.sous_categories DROP CONSTRAINT sous_categories_pkey;
       public            user    false    236            �           2606    22791 *   user_categorie_cvs user_categorie_cvs_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.user_categorie_cvs
    ADD CONSTRAINT user_categorie_cvs_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.user_categorie_cvs DROP CONSTRAINT user_categorie_cvs_pkey;
       public            user    false    238            �           2606    22802    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            user    false    240            �           2606    22810    views views_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.views
    ADD CONSTRAINT views_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.views DROP CONSTRAINT views_pkey;
       public            user    false    242            �           1259    22803 #   index_users_on_authentication_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_authentication_token ON public.users USING btree (authentication_token);
 7   DROP INDEX public.index_users_on_authentication_token;
       public            user    false    240            �   �   x�}�K
�0@�q��n ���]� i�P��b��7:r��S���ܷ�n�a�g��ok�aDNȀ��g��,u��c�8Xd
{���
�*aj,�qlΥ5���DC'�!	%��b�]IbB28�U��zn'-      �   V   x�3�9�2������Ԓ�̢T��+S2�s8�KRRRJЕ����Z*X�ZX���YX������ �w%�      �      x������ � �      �   �   x�}��
�0�盧��4M�������}�.�%�&`�з�`7A�7Ώ�KHK�vE
��k3�j��~�(���&�2ڻ�X����q���3�������)�p����O�mЃJ�*d�R4�7Zsk�w�_�}��:�{yv0�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�U�ɕ1D�
Ư� -�L�qm�n|�b�/�����QA�B9!|�n���e�alk�A��8�l=�O����������06Z�b�8�|��9�am�f/��V9G��I<�k�}p*I�kv������9m	�λ�g��6g��>�������T\�����Ҡ�!V9'f|7i����� ]^      �      x������ � �      �      x������ � �      �   �   x�}��
�0 @��Wt���<%J��FBx��d��4���
�;�g�S�;
�(P�A�Z>�Y�nR\�������j��;��Q�BZ�̎�XK���	�YR�8��K���u9����>`���	Y�� ���N���2]�q16lb���/��#�˫���g��G�KB���?      �      x������ � �     