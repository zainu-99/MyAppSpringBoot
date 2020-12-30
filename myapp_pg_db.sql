PGDMP         #                x            myapp    13.1    13.1 7    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    myapp    DATABASE     i   CREATE DATABASE myapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE myapp;
                postgres    false                        0    0    DATABASE myapp    COMMENT     0   COMMENT ON DATABASE myapp IS 'myapp db system';
                   postgres    false    3071                        2615    16399    myapp    SCHEMA        CREATE SCHEMA myapp;
    DROP SCHEMA myapp;
                postgres    false            �            1259    16495    grouplevel_roles    TABLE     �   CREATE TABLE myapp.grouplevel_roles (
    id bigint NOT NULL,
    grouplevel_id bigint,
    role_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 #   DROP TABLE myapp.grouplevel_roles;
       myapp         heap    postgres    false    6            �            1259    16493    grouplevel_roles_id_seq    SEQUENCE     �   ALTER TABLE myapp.grouplevel_roles ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME myapp.grouplevel_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            myapp          postgres    false    6    215            �            1259    16426    grouplevels    TABLE     �   CREATE TABLE myapp.grouplevels (
    id bigint NOT NULL,
    group_id bigint,
    remark character varying(150),
    parent_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE myapp.grouplevels;
       myapp         heap    postgres    false    6            �            1259    16424    grouplevels_id_seq    SEQUENCE     �   ALTER TABLE myapp.grouplevels ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME myapp.grouplevels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            myapp          postgres    false    208    6            �            1259    16412    groups    TABLE     �   CREATE TABLE myapp.groups (
    id bigint NOT NULL,
    name character varying(50),
    remark character varying(150),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE myapp.groups;
       myapp         heap    postgres    false    6            �            1259    16410    groups_id_seq    SEQUENCE     �   ALTER TABLE myapp.groups ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME myapp.groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            myapp          postgres    false    6    204            �            1259    16436    menus    TABLE       CREATE TABLE myapp.menus (
    id bigint NOT NULL,
    role_id bigint,
    menu_text character varying(50),
    parent_id bigint,
    icon character varying(50),
    sort integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE myapp.menus;
       myapp         heap    postgres    false    6            �            1259    16419    roles    TABLE       CREATE TABLE myapp.roles (
    id bigint NOT NULL,
    name character varying(50),
    controller character varying(50),
    url character varying(150),
    remark character varying(150),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE myapp.roles;
       myapp         heap    postgres    false    6            �            1259    16417    roles_id_seq    SEQUENCE     �   ALTER TABLE myapp.roles ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME myapp.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            myapp          postgres    false    206    6            �            1259    16478    user_grouplevels    TABLE     �   CREATE TABLE myapp.user_grouplevels (
    id bigint NOT NULL,
    user_id bigint,
    grouplevel_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 #   DROP TABLE myapp.user_grouplevels;
       myapp         heap    postgres    false    6            �            1259    16476    user_grouplevels_id_seq    SEQUENCE     �   ALTER TABLE myapp.user_grouplevels ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME myapp.user_grouplevels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            myapp          postgres    false    6    213            �            1259    16402    users    TABLE     �  CREATE TABLE myapp.users (
    id bigint NOT NULL,
    name character varying(99) NOT NULL,
    email character varying(150),
    phone character varying(15),
    address character varying(100),
    gender character varying(1),
    avatar character varying(150),
    userid character varying(50),
    password character varying(150),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE myapp.users;
       myapp         heap    postgres    false    6            �            1259    16400    user_id_seq    SEQUENCE     �   ALTER TABLE myapp.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME myapp.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            myapp          postgres    false    6    202            �            1259    16461 
   user_roles    TABLE     �   CREATE TABLE myapp.user_roles (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE myapp.user_roles;
       myapp         heap    postgres    false    6            �            1259    16459    user_roles_id_seq    SEQUENCE     �   ALTER TABLE myapp.user_roles ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME myapp.user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            myapp          postgres    false    6    211            �          0    16495    grouplevel_roles 
   TABLE DATA           ]   COPY myapp.grouplevel_roles (id, grouplevel_id, role_id, created_at, updated_at) FROM stdin;
    myapp          postgres    false    215   �C       �          0    16426    grouplevels 
   TABLE DATA           ]   COPY myapp.grouplevels (id, group_id, remark, parent_id, created_at, updated_at) FROM stdin;
    myapp          postgres    false    208   �C       �          0    16412    groups 
   TABLE DATA           I   COPY myapp.groups (id, name, remark, created_at, updated_at) FROM stdin;
    myapp          postgres    false    204   �C       �          0    16436    menus 
   TABLE DATA           e   COPY myapp.menus (id, role_id, menu_text, parent_id, icon, sort, created_at, updated_at) FROM stdin;
    myapp          postgres    false    209   �C       �          0    16419    roles 
   TABLE DATA           Y   COPY myapp.roles (id, name, controller, url, remark, created_at, updated_at) FROM stdin;
    myapp          postgres    false    206   D       �          0    16478    user_grouplevels 
   TABLE DATA           ]   COPY myapp.user_grouplevels (id, user_id, grouplevel_id, created_at, updated_at) FROM stdin;
    myapp          postgres    false    213   $D       �          0    16461 
   user_roles 
   TABLE DATA           Q   COPY myapp.user_roles (id, user_id, role_id, created_at, updated_at) FROM stdin;
    myapp          postgres    false    211   AD       �          0    16402    users 
   TABLE DATA           y   COPY myapp.users (id, name, email, phone, address, gender, avatar, userid, password, created_at, updated_at) FROM stdin;
    myapp          postgres    false    202   ^D                  0    0    grouplevel_roles_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('myapp.grouplevel_roles_id_seq', 1, false);
          myapp          postgres    false    214                       0    0    grouplevels_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('myapp.grouplevels_id_seq', 1, false);
          myapp          postgres    false    207                       0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('myapp.groups_id_seq', 1, false);
          myapp          postgres    false    203                       0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('myapp.roles_id_seq', 1, false);
          myapp          postgres    false    205                       0    0    user_grouplevels_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('myapp.user_grouplevels_id_seq', 1, false);
          myapp          postgres    false    212                       0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('myapp.user_id_seq', 1, false);
          myapp          postgres    false    201                       0    0    user_roles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('myapp.user_roles_id_seq', 1, false);
          myapp          postgres    false    210            ^           2606    16499 &   grouplevel_roles grouplevel_roles_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY myapp.grouplevel_roles
    ADD CONSTRAINT grouplevel_roles_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY myapp.grouplevel_roles DROP CONSTRAINT grouplevel_roles_pkey;
       myapp            postgres    false    215            V           2606    16430    grouplevels grouplevels_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY myapp.grouplevels
    ADD CONSTRAINT grouplevels_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY myapp.grouplevels DROP CONSTRAINT grouplevels_pkey;
       myapp            postgres    false    208            R           2606    16416    groups groups_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY myapp.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY myapp.groups DROP CONSTRAINT groups_pkey;
       myapp            postgres    false    204            X           2606    16440    menus menus_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY myapp.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY myapp.menus DROP CONSTRAINT menus_pkey;
       myapp            postgres    false    209            T           2606    16423    roles roles_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY myapp.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY myapp.roles DROP CONSTRAINT roles_pkey;
       myapp            postgres    false    206            \           2606    16482 &   user_grouplevels user_grouplevels_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY myapp.user_grouplevels
    ADD CONSTRAINT user_grouplevels_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY myapp.user_grouplevels DROP CONSTRAINT user_grouplevels_pkey;
       myapp            postgres    false    213            N           2606    16409    users user_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY myapp.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY myapp.users DROP CONSTRAINT user_pkey;
       myapp            postgres    false    202            Z           2606    16465    user_roles user_roles_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY myapp.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY myapp.user_roles DROP CONSTRAINT user_roles_pkey;
       myapp            postgres    false    211            P           2606    16511    users users_userid_key 
   CONSTRAINT     R   ALTER TABLE ONLY myapp.users
    ADD CONSTRAINT users_userid_key UNIQUE (userid);
 ?   ALTER TABLE ONLY myapp.users DROP CONSTRAINT users_userid_key;
       myapp            postgres    false    202            g           2606    16500 4   grouplevel_roles grouplevel_roles_grouplevel_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY myapp.grouplevel_roles
    ADD CONSTRAINT grouplevel_roles_grouplevel_id_fkey FOREIGN KEY (grouplevel_id) REFERENCES myapp.grouplevels(id);
 ]   ALTER TABLE ONLY myapp.grouplevel_roles DROP CONSTRAINT grouplevel_roles_grouplevel_id_fkey;
       myapp          postgres    false    215    2902    208            h           2606    16505 .   grouplevel_roles grouplevel_roles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY myapp.grouplevel_roles
    ADD CONSTRAINT grouplevel_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES myapp.roles(id);
 W   ALTER TABLE ONLY myapp.grouplevel_roles DROP CONSTRAINT grouplevel_roles_role_id_fkey;
       myapp          postgres    false    215    2900    206            _           2606    16431 %   grouplevels grouplevels_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY myapp.grouplevels
    ADD CONSTRAINT grouplevels_group_id_fkey FOREIGN KEY (group_id) REFERENCES myapp.groups(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY myapp.grouplevels DROP CONSTRAINT grouplevels_group_id_fkey;
       myapp          postgres    false    2898    208    204            `           2606    16451 &   grouplevels grouplevels_parent_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY myapp.grouplevels
    ADD CONSTRAINT grouplevels_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES myapp.grouplevels(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY myapp.grouplevels DROP CONSTRAINT grouplevels_parent_id_fkey;
       myapp          postgres    false    208    208    2902            b           2606    16446    menus menus_parent_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY myapp.menus
    ADD CONSTRAINT menus_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES myapp.menus(id) NOT VALID;
 C   ALTER TABLE ONLY myapp.menus DROP CONSTRAINT menus_parent_id_fkey;
       myapp          postgres    false    209    209    2904            a           2606    16441    menus menus_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY myapp.menus
    ADD CONSTRAINT menus_role_id_fkey FOREIGN KEY (role_id) REFERENCES myapp.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY myapp.menus DROP CONSTRAINT menus_role_id_fkey;
       myapp          postgres    false    2900    209    206            f           2606    16488 4   user_grouplevels user_grouplevels_grouplevel_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY myapp.user_grouplevels
    ADD CONSTRAINT user_grouplevels_grouplevel_id_fkey FOREIGN KEY (grouplevel_id) REFERENCES myapp.grouplevels(id);
 ]   ALTER TABLE ONLY myapp.user_grouplevels DROP CONSTRAINT user_grouplevels_grouplevel_id_fkey;
       myapp          postgres    false    208    2902    213            e           2606    16483 .   user_grouplevels user_grouplevels_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY myapp.user_grouplevels
    ADD CONSTRAINT user_grouplevels_user_id_fkey FOREIGN KEY (user_id) REFERENCES myapp.users(id);
 W   ALTER TABLE ONLY myapp.user_grouplevels DROP CONSTRAINT user_grouplevels_user_id_fkey;
       myapp          postgres    false    213    202    2894            d           2606    16471 "   user_roles user_roles_role_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY myapp.user_roles
    ADD CONSTRAINT user_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES myapp.roles(id);
 K   ALTER TABLE ONLY myapp.user_roles DROP CONSTRAINT user_roles_role_id_fkey;
       myapp          postgres    false    2900    211    206            c           2606    16466 "   user_roles user_roles_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY myapp.user_roles
    ADD CONSTRAINT user_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES myapp.users(id);
 K   ALTER TABLE ONLY myapp.user_roles DROP CONSTRAINT user_roles_user_id_fkey;
       myapp          postgres    false    202    2894    211            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     