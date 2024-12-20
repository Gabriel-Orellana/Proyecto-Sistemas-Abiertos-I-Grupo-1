PGDMP              
        |            game    16.6    16.6     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    49413    game    DATABASE     w   CREATE DATABASE game WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE game;
                postgres    false            �            1259    49453    players    TABLE     �   CREATE TABLE public.players (
    id_player integer NOT NULL,
    id_user integer,
    games integer DEFAULT 0,
    wins integer DEFAULT 0,
    draws integer DEFAULT 0,
    losses integer DEFAULT 0
);
    DROP TABLE public.players;
       public         heap    postgres    false            �            1259    49452    players_id_player_seq    SEQUENCE     �   CREATE SEQUENCE public.players_id_player_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.players_id_player_seq;
       public          postgres    false    218            �           0    0    players_id_player_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.players_id_player_seq OWNED BY public.players.id_player;
          public          postgres    false    217            �            1259    49442    users    TABLE     �   CREATE TABLE public.users (
    id_user integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    session_token character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    49441    users_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_id_user_seq;
       public          postgres    false    216            �           0    0    users_id_user_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_id_user_seq OWNED BY public.users.id_user;
          public          postgres    false    215                        2604    49456    players id_player    DEFAULT     v   ALTER TABLE ONLY public.players ALTER COLUMN id_player SET DEFAULT nextval('public.players_id_player_seq'::regclass);
 @   ALTER TABLE public.players ALTER COLUMN id_player DROP DEFAULT;
       public          postgres    false    217    218    218                       2604    49445    users id_user    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN id_user SET DEFAULT nextval('public.users_id_user_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    49453    players 
   TABLE DATA           Q   COPY public.players (id_player, id_user, games, wins, draws, losses) FROM stdin;
    public          postgres    false    218   �       �          0    49442    users 
   TABLE DATA           R   COPY public.users (id_user, username, email, password, session_token) FROM stdin;
    public          postgres    false    216          �           0    0    players_id_player_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.players_id_player_seq', 8, true);
          public          postgres    false    217            �           0    0    users_id_user_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_id_user_seq', 4, true);
          public          postgres    false    215            ,           2606    49462    players players_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id_player);
 >   ALTER TABLE ONLY public.players DROP CONSTRAINT players_pkey;
       public            postgres    false    218            &           2606    49451    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    216            (           2606    49447    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_user);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            *           2606    49449    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    216            -           2606    49463    players players_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.users(id_user) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.players DROP CONSTRAINT players_id_user_fkey;
       public          postgres    false    216    4648    218            �   7   x����0���0�i8Zva�9�ʒ-�`S�hs��J��l��H���������=5      �   �  x����r�@F���	4���CH4�(�����e�Q���[u����-�SG8�U��,k�eP�s�C�=Fe.HP�e�R*]Ǫ%�c�Mh����Kvc{}w�ߖ���������-���?��I��n�:��Ay3�]����`[]$�u�dR
�i&�.i�����t}�W��}5[��y;�����G�E��b��Ab�؆uo�����j�5�H ��bY��1���)2b�]E���C8x�S������]��98��=��pjw�<-ҝt:.�.gޡ��*�;��gI.�Ƌ��m�O����4CBIa0��M:��+�^���:���_����vE�X�fS��>�?�|���[o�|�u/�~~/��m3#X@H#�"3����dS1���9�!]?EQ�'���     