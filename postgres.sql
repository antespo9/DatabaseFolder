PGDMP  +    ,            
    {            postgres    16.0    16.0 *    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            5           1262    5    postgres    DATABASE     j   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE postgres;
                postgres    false            6           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3637                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            7           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16492 
   powresults    TABLE     W   CREATE TABLE public.powresults (
    id integer NOT NULL,
    res character varying
);
    DROP TABLE public.powresults;
       public         heap    postgres    false            �            1259    16491    powresults_id_seq    SEQUENCE     �   CREATE SEQUENCE public.powresults_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.powresults_id_seq;
       public          postgres    false    225            8           0    0    powresults_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.powresults_id_seq OWNED BY public.powresults.id;
          public          postgres    false    224            �            1259    16434    prodresults    TABLE     X   CREATE TABLE public.prodresults (
    id integer NOT NULL,
    res character varying
);
    DROP TABLE public.prodresults;
       public         heap    postgres    false            �            1259    16433    prodresults_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prodresults_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.prodresults_id_seq;
       public          postgres    false    221            9           0    0    prodresults_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.prodresults_id_seq OWNED BY public.prodresults.id;
          public          postgres    false    220            �            1259    16413    results    TABLE     \   CREATE TABLE public.results (
    id integer NOT NULL,
    vector character varying(255)
);
    DROP TABLE public.results;
       public         heap    postgres    false            �            1259    16412    results_id_seq    SEQUENCE     �   CREATE SEQUENCE public.results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.results_id_seq;
       public          postgres    false    217            :           0    0    results_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.results_id_seq OWNED BY public.results.id;
          public          postgres    false    216            �            1259    16483 
   subresults    TABLE     Z   CREATE TABLE public.subresults (
    id integer NOT NULL,
    subres character varying
);
    DROP TABLE public.subresults;
       public         heap    postgres    false            �            1259    16482    subresults_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subresults_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.subresults_id_seq;
       public          postgres    false    223            ;           0    0    subresults_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.subresults_id_seq OWNED BY public.subresults.id;
          public          postgres    false    222            �            1259    16426    vectors    TABLE     �   CREATE TABLE public.vectors (
    id_couple integer NOT NULL,
    vettore1 character varying,
    vettore2 character varying
);
    DROP TABLE public.vectors;
       public         heap    postgres    false            �            1259    16425    vectors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vectors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.vectors_id_seq;
       public          postgres    false    219            <           0    0    vectors_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.vectors_id_seq OWNED BY public.vectors.id_couple;
          public          postgres    false    218            �           2604    16495    powresults id    DEFAULT     n   ALTER TABLE ONLY public.powresults ALTER COLUMN id SET DEFAULT nextval('public.powresults_id_seq'::regclass);
 <   ALTER TABLE public.powresults ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16437    prodresults id    DEFAULT     p   ALTER TABLE ONLY public.prodresults ALTER COLUMN id SET DEFAULT nextval('public.prodresults_id_seq'::regclass);
 =   ALTER TABLE public.prodresults ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16416 
   results id    DEFAULT     h   ALTER TABLE ONLY public.results ALTER COLUMN id SET DEFAULT nextval('public.results_id_seq'::regclass);
 9   ALTER TABLE public.results ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16486    subresults id    DEFAULT     n   ALTER TABLE ONLY public.subresults ALTER COLUMN id SET DEFAULT nextval('public.subresults_id_seq'::regclass);
 <   ALTER TABLE public.subresults ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16429    vectors id_couple    DEFAULT     o   ALTER TABLE ONLY public.vectors ALTER COLUMN id_couple SET DEFAULT nextval('public.vectors_id_seq'::regclass);
 @   ALTER TABLE public.vectors ALTER COLUMN id_couple DROP DEFAULT;
       public          postgres    false    219    218    219            /          0    16492 
   powresults 
   TABLE DATA           -   COPY public.powresults (id, res) FROM stdin;
    public          postgres    false    225   �)       +          0    16434    prodresults 
   TABLE DATA           .   COPY public.prodresults (id, res) FROM stdin;
    public          postgres    false    221   *       '          0    16413    results 
   TABLE DATA           -   COPY public.results (id, vector) FROM stdin;
    public          postgres    false    217   -+       -          0    16483 
   subresults 
   TABLE DATA           0   COPY public.subresults (id, subres) FROM stdin;
    public          postgres    false    223   �,       )          0    16426    vectors 
   TABLE DATA           @   COPY public.vectors (id_couple, vettore1, vettore2) FROM stdin;
    public          postgres    false    219   -       =           0    0    powresults_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.powresults_id_seq', 18, true);
          public          postgres    false    224            >           0    0    prodresults_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.prodresults_id_seq', 121, true);
          public          postgres    false    220            ?           0    0    results_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.results_id_seq', 188, true);
          public          postgres    false    216            @           0    0    subresults_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.subresults_id_seq', 20, true);
          public          postgres    false    222            A           0    0    vectors_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vectors_id_seq', 10, true);
          public          postgres    false    218            �           2606    16499    powresults powresults_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.powresults
    ADD CONSTRAINT powresults_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.powresults DROP CONSTRAINT powresults_pkey;
       public            postgres    false    225            �           2606    16439    prodresults prodresults_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.prodresults
    ADD CONSTRAINT prodresults_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.prodresults DROP CONSTRAINT prodresults_pkey;
       public            postgres    false    221            �           2606    16418    results results_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.results DROP CONSTRAINT results_pkey;
       public            postgres    false    217            �           2606    16490    subresults subresults_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.subresults
    ADD CONSTRAINT subresults_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.subresults DROP CONSTRAINT subresults_pkey;
       public            postgres    false    223            �           2606    16431    vectors vectors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.vectors
    ADD CONSTRAINT vectors_pkey PRIMARY KEY (id_couple);
 >   ALTER TABLE ONLY public.vectors DROP CONSTRAINT vectors_pkey;
       public            postgres    false    219            /   >   x�5̹� ����0�`�^��S���ҳ�T�#�q����7�.�S���8�����.�      +     x�]�ˍ�@E�5iK�Ed�}i��hfT7�b�	�C�ھ{�+wl���]���˧b*�j����1��}�|]����>�Ď%���u����]����s�n�����S?O�ğ�q"�$��O�Mq%�Y�Y�ِِِِِّّّّّ9�9�9�9�9�9�9�9�9�9���������������������Y�{J�ΔNٔO�TN��l�l�l�l�l�l�l�l�l�l�l��8l����� �      '   �  x�U�K��PD�1��(�}���_GөkE�ʖ�	H�q�5�}�c^�t.r��kPYC�Y�F��U�f���5d%G�Qr�%G�Yr��%g�Yr���x�Z�����;�CW<_��v�x������5?�j�����_�xm����γ�9��ϻ�t4Gw�t,��ĸrXV��aeXV��aeZ�V��ieZ�V��ieZ�V��eeYYV��eeYYV��ee[�V��me��ml��ml[�Vtߤ� �ld'9�E�	Ox����'<�	Ox�x�x�x�x�x��x��x��x��x��x��5����^�kx��u������'/n^��zq�������/n_��~q���EDDDD	DDDDDDDDDDD-D!DD3DD7~���r���      -   @   x�5̱�0�����a^l��� 9ER�l�N�H��J�t�+}�7�I4EYtFy(GU�Oz�      )   A   x����0��x_/�@�]��5}J�ʜ�i���m&�e[����>Gk1q��>l�y�} | �     