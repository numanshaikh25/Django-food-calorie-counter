PGDMP                         y            Fat2Fit    13.2    13.2 }    ^           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            _           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            `           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            a           1262    16828    Fat2Fit    DATABASE     e   CREATE DATABASE "Fat2Fit" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE "Fat2Fit";
                postgres    false            ?            1259    16860 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    16858    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            b           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    16870    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    16868    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            c           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    16852    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    16850    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            d           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    16878 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    16888    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    16886    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            e           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            ?            1259    16876    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            f           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            ?            1259    16896    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    16894 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            g           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            ?            1259    41676    caloriecounter_caloriegoal    TABLE     {   CREATE TABLE public.caloriecounter_caloriegoal (
    id integer NOT NULL,
    usercalgoal character varying(5) NOT NULL
);
 .   DROP TABLE public.caloriecounter_caloriegoal;
       public         heap    postgres    false            ?            1259    41674 !   caloriecounter_caloriegoal_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.caloriecounter_caloriegoal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.caloriecounter_caloriegoal_id_seq;
       public          postgres    false    225            h           0    0 !   caloriecounter_caloriegoal_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.caloriecounter_caloriegoal_id_seq OWNED BY public.caloriecounter_caloriegoal.id;
          public          postgres    false    224            ?            1259    16999    caloriecounter_contact    TABLE     ?   CREATE TABLE public.caloriecounter_contact (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    phone character varying(30) NOT NULL,
    "desc" text NOT NULL
);
 *   DROP TABLE public.caloriecounter_contact;
       public         heap    postgres    false            ?            1259    16997    caloriecounter_contact_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.caloriecounter_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.caloriecounter_contact_id_seq;
       public          postgres    false    220            i           0    0    caloriecounter_contact_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.caloriecounter_contact_id_seq OWNED BY public.caloriecounter_contact.id;
          public          postgres    false    219            ?            1259    25202    caloriecounter_tablefood    TABLE     ^  CREATE TABLE public.caloriecounter_tablefood (
    id integer NOT NULL,
    "Tfname" character varying(30) NOT NULL,
    "Tprotein" double precision NOT NULL,
    "Tcarbohydrate" double precision NOT NULL,
    "Tfats" double precision NOT NULL,
    "Tenergy" double precision NOT NULL,
    "Tamount" double precision NOT NULL,
    user_id integer
);
 ,   DROP TABLE public.caloriecounter_tablefood;
       public         heap    postgres    false            ?            1259    33398    caloriecounter_tablefood_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.caloriecounter_tablefood_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.caloriecounter_tablefood_id_seq;
       public          postgres    false    222            j           0    0    caloriecounter_tablefood_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.caloriecounter_tablefood_id_seq OWNED BY public.caloriecounter_tablefood.id;
          public          postgres    false    223            ?            1259    17023 	   calories_    TABLE     ?   CREATE TABLE public.calories_ (
    id integer NOT NULL,
    food_item character varying(40),
    protein real,
    carbohydrate real,
    total_fat real,
    energy real
);
    DROP TABLE public.calories_;
       public         heap    postgres    false            ?            1259    16956    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    16954    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            k           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            ?            1259    16842    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    16840    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            l           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    16831    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16829    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            m           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    16987    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            t           2604    16863    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            u           2604    16873    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            s           2604    16855    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            v           2604    16881    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            w           2604    16891    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            x           2604    16899    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            }           2604    41679    caloriecounter_caloriegoal id    DEFAULT     ?   ALTER TABLE ONLY public.caloriecounter_caloriegoal ALTER COLUMN id SET DEFAULT nextval('public.caloriecounter_caloriegoal_id_seq'::regclass);
 L   ALTER TABLE public.caloriecounter_caloriegoal ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            {           2604    17002    caloriecounter_contact id    DEFAULT     ?   ALTER TABLE ONLY public.caloriecounter_contact ALTER COLUMN id SET DEFAULT nextval('public.caloriecounter_contact_id_seq'::regclass);
 H   ALTER TABLE public.caloriecounter_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            |           2604    41641    caloriecounter_tablefood id    DEFAULT     ?   ALTER TABLE ONLY public.caloriecounter_tablefood ALTER COLUMN id SET DEFAULT nextval('public.caloriecounter_tablefood_id_seq'::regclass);
 J   ALTER TABLE public.caloriecounter_tablefood ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            y           2604    16959    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            r           2604    16845    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            q           2604    16834    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            I          0    16860 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ??       K          0    16870    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ??       G          0    16852    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ˥       M          0    16878 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   t?       O          0    16888    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   ??       Q          0    16896    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ?       [          0    41676    caloriecounter_caloriegoal 
   TABLE DATA           E   COPY public.caloriecounter_caloriegoal (id, usercalgoal) FROM stdin;
    public          postgres    false    225   6?       V          0    16999    caloriecounter_contact 
   TABLE DATA           P   COPY public.caloriecounter_contact (id, name, email, phone, "desc") FROM stdin;
    public          postgres    false    220   k?       X          0    25202    caloriecounter_tablefood 
   TABLE DATA           ?   COPY public.caloriecounter_tablefood (id, "Tfname", "Tprotein", "Tcarbohydrate", "Tfats", "Tenergy", "Tamount", user_id) FROM stdin;
    public          postgres    false    222   ?       W          0    17023 	   calories_ 
   TABLE DATA           \   COPY public.calories_ (id, food_item, protein, carbohydrate, total_fat, energy) FROM stdin;
    public          postgres    false    221   ??       S          0    16956    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   B?       E          0    16842    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   ϸ       C          0    16831    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ]?       T          0    16987    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218   u?       n           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            o           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            p           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 65, true);
          public          postgres    false    204            q           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            r           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 8, true);
          public          postgres    false    210            s           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            t           0    0 !   caloriecounter_caloriegoal_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.caloriecounter_caloriegoal_id_seq', 5, true);
          public          postgres    false    224            u           0    0    caloriecounter_contact_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.caloriecounter_contact_id_seq', 10, true);
          public          postgres    false    219            v           0    0    caloriecounter_tablefood_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.caloriecounter_tablefood_id_seq', 19, true);
          public          postgres    false    223            w           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 39, true);
          public          postgres    false    216            x           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 42, true);
          public          postgres    false    202            y           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 68, true);
          public          postgres    false    200            ?           2606    16985    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ?           2606    16912 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    16875 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            ?           2606    16865    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            ?           2606    16903 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            ?           2606    16857 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ?           2606    16893 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            ?           2606    16927 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            ?           2606    16883    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            ?           2606    16901 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            ?           2606    16941 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            ?           2606    16979     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            ?           2606    41681 :   caloriecounter_caloriegoal caloriecounter_caloriegoal_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.caloriecounter_caloriegoal
    ADD CONSTRAINT caloriecounter_caloriegoal_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.caloriecounter_caloriegoal DROP CONSTRAINT caloriecounter_caloriegoal_pkey;
       public            postgres    false    225            ?           2606    17007 2   caloriecounter_contact caloriecounter_contact_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.caloriecounter_contact
    ADD CONSTRAINT caloriecounter_contact_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.caloriecounter_contact DROP CONSTRAINT caloriecounter_contact_pkey;
       public            postgres    false    220            ?           2606    41643 6   caloriecounter_tablefood caloriecounter_tablefood_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.caloriecounter_tablefood
    ADD CONSTRAINT caloriecounter_tablefood_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.caloriecounter_tablefood DROP CONSTRAINT caloriecounter_tablefood_pkey;
       public            postgres    false    222            ?           2606    17027    calories_ calories__pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.calories_
    ADD CONSTRAINT calories__pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.calories_ DROP CONSTRAINT calories__pkey;
       public            postgres    false    221            ?           2606    16965 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            ?           2606    16849 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            ?           2606    16847 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203                       2606    16839 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    16994 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            ?           1259    16986    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ?           1259    16923 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            ?           1259    16924 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            ?           1259    16909 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            ?           1259    16939 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            ?           1259    16938 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            ?           1259    16953 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            ?           1259    16952 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            ?           1259    16980     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            ?           1259    41624 )   caloriecounter_tablefood_user_id_53deebb2    INDEX     q   CREATE INDEX caloriecounter_tablefood_user_id_53deebb2 ON public.caloriecounter_tablefood USING btree (user_id);
 =   DROP INDEX public.caloriecounter_tablefood_user_id_53deebb2;
       public            postgres    false    222            ?           1259    16976 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            ?           1259    16977 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            ?           1259    16996 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218            ?           1259    16995 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218            ?           2606    16918 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    2952    209            ?           2606    16913 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    2957    209            ?           2606    16904 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    203    2947    205            ?           2606    16933 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2957    213    207            ?           2606    16928 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    211    2965    213            ?           2606    16947 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    205    2952            ?           2606    16942 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    211    2965    215            ?           2606    41619 R   caloriecounter_tablefood caloriecounter_tablefood_user_id_53deebb2_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.caloriecounter_tablefood
    ADD CONSTRAINT caloriecounter_tablefood_user_id_53deebb2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.caloriecounter_tablefood DROP CONSTRAINT caloriecounter_tablefood_user_id_53deebb2_fk_auth_user_id;
       public          postgres    false    211    2965    222            ?           2606    16966 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2947    203    217            ?           2606    16971 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    217    2965    211            I      x?????? ? ?      K      x?????? ? ?      G   ?  x?m?Kn?0???}
NP?̺רT??R$?# ?r??x왡???'??????Ι??l?C??my?\???}Km?t_v?Pa?`?w??$[K?????? T???[??u???ц?y??X?l????@f[J????a???* ~?????9v!?yS$???PJP??E*??nQ%?u^???????#????n<???a?n????_-?7?*(??cG?-9a?ʻN??7?<i?6Oի_??`\i#?;?LL?vb??{넠*?J??v?j???6?y|???k?S?X+?P?z՝??2?U?!	??o????x?Ƭ?;g,?%D?}?????WWHKk]?w??1*??b????!??yv???*?߱????#?c?|2???4???4j>T?o/Z??`?      M   x  x?}?mo?@?_????L?}^?䒳J???,hs?TP?~??V??jo7???lf??Y"m?????Y? ?d @E??|?a??D^4????l?5?86l??5?[????F??>?씁?> ? A"B
?S^T?@????	S.M΋4
?0
$/v?????*?M\???
h?+c???P?>?c???ѣHUy??Lm???+?~A??iiص?c?L?C???G??????> X-?ш??CJn??N???Is/r?7?.??@XU8\\??}t??a?ed?C*/?????z??nNC???????VI??\??6(????.4L@U??{?q?0?ʱ? .?gq	?S G?!?O?X(?t???Ɣ?F?`f?6éƇ^ڵ???"???s^?1O?iO|?R?󼉛b'??o????A??2OL?%????6]5?A??<ַ???9FfXPX??ӎ]????y1?:y-???=?~?&??9 4?
??Ɲn?p?Q????????U?54?BUF.
T?}???^??h'?)????3+??????ه^????Ƹ??׬s?yMf????**???|c????????B?w??+??R??!+?5D??????/?R??I]+      O      x?????? ? ?      Q      x?????? ? ?      [   %   x?3?4260?2?4257?2R@?	D?"???? |??      V   ?   x?m???0Dϻ_?/ ?6????m[b???@??Id2;??35????xr??k?J?M??u?pI??/?u??;??	،B?&26@I??,)iOȫ??*?m)(?y#?0P????-??	2%??ј???
?΀M?      X   ?   x?U?A
?@E?N???L2M?z7c)V,????????!??X???z??Ic3?Ӡ????
4Bc???cZ??6??? ??ɿ??Q'??V2w:?	?9???6%?{???Cr??,??s]??\?u?Qo??`bM??
?V??K?P??$6?      W   ?
  x??X?Ϋ?]?O?*??E?ò???5??X)?b?D??(??+?? ??3?(???????SU?N??aJ??ɊC?OEm?c?Q&K߇:???:??)~??!s]?lv?R}ˏ?4??̶?ď????N???2?Q??????١?*?a?h>?,?#S?VS:?Wѫ??׏?y?W??,fϴ4ӽ醞?h??e?7ӏ????8vJ?ni??l ???????}^??-yG:?_???̡,?W?Ȏ????3C.???? ??:(?Ʃ??E???R?Tx?D???????S?{?YkK?J???
7#*S?N?????y}},}?"??V?W?U?j??vY=L=???L?\#.[???b?}6?m????e???1]??N??֏{>?.1v?J c?²R:f?????????v??ߛ˥??fv??;??a
F!??????ַ?ӥ?Ȝ???@Uf?T???̧????>??3??8????N?R#z?WF????o???J?%N?=??`$9?87?{??D?g?}?e??@???ϩ-?R??⳶nvC-Eb*????3?
?зRbQy??Ѝ???b6?ө??!?R+?'??N????H??i(?&z.????/??¡e?PM?i???k%??????	m???v}^i??q˚^?e)?Q?? ~?????:J??̰b?	%2K?dRw????8??-?x?,A?J?&1J?&y#???bS??|vBf????ؠd??(?u?V???ɇ???D,|!\!4?+G?fC?l?n?	??Ӷ9oO?V??Q疋T??*?B郊.9<\x?J?r?@???e???1?k????????'?|I?[zGr?ϼ影
?'>?E>?^R#\B??~??8??^?7T穕|g*?R?6???I??A?Ӱ???L\Nʫ(	??X???C~n?`S1?H/?p_/?Q?"xee?????$=7?"2y?~?ʰ?!????	h???s?p???-???7???ð\???Tp(?m??	?+??ͨ?v_H.ao??"\??????ǟ??闶??Fv+Б?1??XM?????[?C?????N??!?>-ђ?%?{ׇ?~do?m???a??[L67)??	О??$?k??[?????>hl??????3HR(??=L?(èp????k?n???,!??s?{??3B&:T???
r%LC6N??D>??+	*??6i3?`??v[??^??_D??uRQ>Rv?f?c)????T????|?3ѪP?>ˉw <~E???+?(???nhpO?w???s c	???"?^8~??h???΀?͖ԟP???4?a$5 O??LԨRO?8?h??7?&	b?`?g!?<??e:_?+?U??1ZTo?o?fj%?E\p=hIcA?????/i???aEĈ????Rh??u?BC????[KLH?CDB?Yd.??_????H???Qp.?X???f??Hc2t"l,ё?aa?6;-M?U?rM??w?????/M?pg????ja _?|???HA??W@f-q?#"??A???V?M%ł??ى??-??,W?ei	FO=-N?O??"NE??C?Tc??ZE??(???g??\?,??1?%??p?N}?@ӟV??C5?x#?R?Y*7?bV?2?6o????"c?Se??h?x??v?4{Ydc??K٫@֩?C???6lz??+?G?}?)???????z?=Mm?"cͶe?"???v?±???4?8?<=?e?L
??L!m?????ߠh??E֯'8???X?4?W?=? X????e??:??V??? =?|?ψ?^??^???b??|L}???yT?(,?<(7?6????q??U<k??N*ܠ?+h9??zx?f?z-??Zf2?ƱO#???p­?5?v?? J?*گ
??:P2?tuJm????=???E?08J?S?n???*?`??[???????^?ķUǭ?IRꂴV?L?????u??X?+??lSh???? i"?~<??h??p???fr;?&?_??c????z????2C=?>T?ǫ???so ??l֨t܋ٚ)hY?v????P
_?/>?V??'?D?[$R????4@?<:_?u???8?? ??n?}O?Z%M&W@w?}0??x*~t?y?????~E?h|??[???GF??.S???2?ٷ?=+??*?d?H8??~X`?=OM??Z~??nL??>???K??????Rw?? ?~?6K~??E???B??GG?}??K>p?8L[?gL?a??[!Ь?/{??=?耷4x"?f.C9?g?lz??ԍ??????j?s+????1??????폡Ԅ????	?	??0X*?{??w????}?A??#??	C0%???E1#?i<??#&-#?2@?*:?4\? ?κ??!?_V??s??39??MM?b?n?2??M|???}`?N!?{?\Q??Ԋ?Oڏu??p??sʏk:C???q~???G?-]??B?bP|?ur????~????qä8??hO?L %?--1???lo?B	?? I??FH?P7?/g??v^?5n
?M?? ?"??|m??,q!???(???ׯh??>$?dt??O???޸,???r?*?YjEV???nX??F???a!??I>&??<???ς?(d,Kv???"????g?qK$?&?????????????????G#?????V?_#      S   }  x?u?;o?0 ?Y?B?6?=xGRs37@?"???nv
'
??=?%J2?ŀ>??6????!?(??%????B????a{l?iB?????LIR/?9=?<??WDp???????WB;Ў?i@??T?RB??a??]???4???0? ????^{??????áℊ?NR??"?P??lGA-?,?;"O?????=??g???%?ѡ?&-??a4?"Z??W?)iࡑ?K$?07s??=3C???c?Qc?Rs??x?????N???k?<?>W]3?e2?+dѸ??<"???h?d?s?)Y??>?Ч?LetiȪA$RJ?g&?qI`̇g$.	????2v?6i?X:?Z?57sj?????2Eyj*?KcA?????????Z??O":??8#?J@?ܡZ,F?$?e?ԩ?`ܟ?g *ݴ???????K.??ڄu?X?|?)?s"B^?	??X?ej?	 [p??&!{???&?aŠ?֛?X??q/-?9ɔ?}?!???|???̮?uB(?e??D.??H????CY632L?\?????f?7KD4]X??ƦX ?% ??~????~???d????o҆???%j???b?L?h?????<?/ۧ????j???wW]?????]??f??4?y      E   ~   x?u?K?0Dמ? Q??.lBjB?4??d??S5BB v?f???Ms̔$p??` ???
?͢dzTZ?ء+??%?U?Ka???x??p&??hd/m=??w???3t4\?????"????%?v ^M       C     x????n?0F?ӧ??P??D??Y^???8??a}?ɝ%'????????tDw??45?i?87? 0??vj?nG@???3?? ?S?-~V?D??2???ql??K??կ?????*b???*
]?ah???&?.?P??1Z?f^0?bԊ????Om
o]}?????0?8???eG???F???S}l?0F?)-??4)??????v??fD8ֿCל?WEY6?7?ij?]?xi?u?=??F??\?k?|?l??O??X;'????kLW?Ӽm\??+??? 23Hb??/????܆0X戊F%?*?Y?Uw?k=???iD3???8և???&?Pe?-&? uaE	?3????%?af?h?h?0????HV???$?0\?1?&????Ǖ?????i`??zyo?????d??hwc?<??\??r?n???~h?}???'??*!??LP???|7????5o}??&?gD???X?f#???*????6??Y?e?AY??5T?4??$?%9?????u???L.??e?(?IU?(???,????UܑA?3x?ހBL"?)0?M;j ???3??JU?8?????G?-?y6?"ct?I\??ݡ?6?Y)??[?<?R
>?g?
??????j깺?ys??	~嶨?@??8?)T@?*?????h?Q&[)m %.???8G?I?#cL??<??`?-?  d?3?F?U?/????57??Q`1)^@?ڠ(.?+C?J????\? ????s? ??
zz?z??"E'?I~}????? ????      T   h  x?=?K??@  е???L}?Bء?j?-???I(??
?N߽??;???X?)i???
'?@#?>tM?Q???(???ep???}?)axZ?v?????ʖ?Тݶz.ds޻?c?V?9B A??M4k*????8|?=?}???K???-?^????Trm4IXwʭ?N??~????k+sH?#?O??K???ڮ?8q6Q?By:??
?n???g?[>???]xݓ??p??m?j?????%?`-=^?/?V?+?????b???̔???r?UڌU?Չ@F??y?QȖ????e?????q??w?60?n?^ֈ??8??ʏ?͡UڟQn?̯yX_??Mp???????PB4????d<? ????     