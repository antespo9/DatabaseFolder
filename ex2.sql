PGDMP  ,    +            
    {            ex2    16.0    16.0 '    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            4           1262    16445    ex2    DATABASE     e   CREATE DATABASE ex2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE ex2;
                postgres    false            �            1259    16501 
   powresults    TABLE     W   CREATE TABLE public.powresults (
    id integer NOT NULL,
    res character varying
);
    DROP TABLE public.powresults;
       public         heap    postgres    false            �            1259    16500    powresults_id_seq    SEQUENCE     �   CREATE SEQUENCE public.powresults_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.powresults_id_seq;
       public          postgres    false    224            5           0    0    powresults_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.powresults_id_seq OWNED BY public.powresults.id;
          public          postgres    false    223            �            1259    16447    prodresults    TABLE     X   CREATE TABLE public.prodresults (
    id integer NOT NULL,
    res character varying
);
    DROP TABLE public.prodresults;
       public         heap    postgres    false            �            1259    16446    prodresults_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prodresults_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.prodresults_id_seq;
       public          postgres    false    216            6           0    0    prodresults_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.prodresults_id_seq OWNED BY public.prodresults.id;
          public          postgres    false    215            �            1259    16456    results    TABLE     W   CREATE TABLE public.results (
    id integer NOT NULL,
    vector character varying
);
    DROP TABLE public.results;
       public         heap    postgres    false            �            1259    16455    results_id_seq    SEQUENCE     �   CREATE SEQUENCE public.results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.results_id_seq;
       public          postgres    false    218            7           0    0    results_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.results_id_seq OWNED BY public.results.id;
          public          postgres    false    217            �            1259    16474 
   subresults    TABLE     Z   CREATE TABLE public.subresults (
    id integer NOT NULL,
    subres character varying
);
    DROP TABLE public.subresults;
       public         heap    postgres    false            �            1259    16473    subresults_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subresults_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.subresults_id_seq;
       public          postgres    false    222            8           0    0    subresults_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.subresults_id_seq OWNED BY public.subresults.id;
          public          postgres    false    221            �            1259    16465    vectors    TABLE     �   CREATE TABLE public.vectors (
    id_couple integer NOT NULL,
    vettore1 character varying,
    vettore2 character varying
);
    DROP TABLE public.vectors;
       public         heap    postgres    false            �            1259    16464    vectors_id_couple_seq    SEQUENCE     �   CREATE SEQUENCE public.vectors_id_couple_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.vectors_id_couple_seq;
       public          postgres    false    220            9           0    0    vectors_id_couple_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.vectors_id_couple_seq OWNED BY public.vectors.id_couple;
          public          postgres    false    219            �           2604    16504    powresults id    DEFAULT     n   ALTER TABLE ONLY public.powresults ALTER COLUMN id SET DEFAULT nextval('public.powresults_id_seq'::regclass);
 <   ALTER TABLE public.powresults ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16450    prodresults id    DEFAULT     p   ALTER TABLE ONLY public.prodresults ALTER COLUMN id SET DEFAULT nextval('public.prodresults_id_seq'::regclass);
 =   ALTER TABLE public.prodresults ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16459 
   results id    DEFAULT     h   ALTER TABLE ONLY public.results ALTER COLUMN id SET DEFAULT nextval('public.results_id_seq'::regclass);
 9   ALTER TABLE public.results ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16477    subresults id    DEFAULT     n   ALTER TABLE ONLY public.subresults ALTER COLUMN id SET DEFAULT nextval('public.subresults_id_seq'::regclass);
 <   ALTER TABLE public.subresults ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16468    vectors id_couple    DEFAULT     v   ALTER TABLE ONLY public.vectors ALTER COLUMN id_couple SET DEFAULT nextval('public.vectors_id_couple_seq'::regclass);
 @   ALTER TABLE public.vectors ALTER COLUMN id_couple DROP DEFAULT;
       public          postgres    false    220    219    220            .          0    16501 
   powresults 
   TABLE DATA           -   COPY public.powresults (id, res) FROM stdin;
    public          postgres    false    224   f'       &          0    16447    prodresults 
   TABLE DATA           .   COPY public.prodresults (id, res) FROM stdin;
    public          postgres    false    216   �'       (          0    16456    results 
   TABLE DATA           -   COPY public.results (id, vector) FROM stdin;
    public          postgres    false    218   �'       ,          0    16474 
   subresults 
   TABLE DATA           0   COPY public.subresults (id, subres) FROM stdin;
    public          postgres    false    222   8(       *          0    16465    vectors 
   TABLE DATA           @   COPY public.vectors (id_couple, vettore1, vettore2) FROM stdin;
    public          postgres    false    220   y(       :           0    0    powresults_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.powresults_id_seq', 6, true);
          public          postgres    false    223            ;           0    0    prodresults_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.prodresults_id_seq', 20, true);
          public          postgres    false    215            <           0    0    results_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.results_id_seq', 17, true);
          public          postgres    false    217            =           0    0    subresults_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.subresults_id_seq', 8, true);
          public          postgres    false    221            >           0    0    vectors_id_couple_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.vectors_id_couple_seq', 2, true);
          public          postgres    false    219            �           2606    16508    powresults powresults_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.powresults
    ADD CONSTRAINT powresults_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.powresults DROP CONSTRAINT powresults_pkey;
       public            postgres    false    224            �           2606    16454    prodresults prodresults_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.prodresults
    ADD CONSTRAINT prodresults_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.prodresults DROP CONSTRAINT prodresults_pkey;
       public            postgres    false    216            �           2606    16463    results results_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.results DROP CONSTRAINT results_pkey;
       public            postgres    false    218            �           2606    16481    subresults subresults_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.subresults
    ADD CONSTRAINT subresults_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.subresults DROP CONSTRAINT subresults_pkey;
       public            postgres    false    222            �           2606    16472    vectors vectors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.vectors
    ADD CONSTRAINT vectors_pkey PRIMARY KEY (id_couple);
 >   ALTER TABLE ONLY public.vectors DROP CONSTRAINT vectors_pkey;
       public            postgres    false    220            .   #   x�3�4��Ա0�2�1�a��0�1b���� &�	�      &   E   x�5���0���,���.�?G�S�خ��3̛��f5��jV�{���c݄'�H���+������6rgN      (   :   x�-�� ����Iz�f�}v�x8:褋&�Ų��um�u衧^:��x�R�      ,   1   x�3�4ѱ�2�4��11�2�420�12�2�1La3�ư�1b���� ���      *       x�3�4�1b#.#NS3NC#c�=... 3��     