PGDMP     ,                	    {         
   NutriStyle    15.2    15.2 6    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    16505 
   NutriStyle    DATABASE        CREATE DATABASE "NutriStyle" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "NutriStyle";
                postgres    false            �            1259    16574    clientes    TABLE     �   CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    usuario_id integer,
    telefono character varying(15),
    direccion_entrega text,
    preferencias_alimentarias text,
    informacion_medica text
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    16573    clientes_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_cliente_seq;
       public          postgres    false    217            ;           0    0    clientes_id_cliente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;
          public          postgres    false    216            �            1259    16626    detalle_pedido    TABLE     �   CREATE TABLE public.detalle_pedido (
    id_detalle integer NOT NULL,
    pedido_id integer,
    producto_id integer,
    cantidad integer,
    subtotal numeric
);
 "   DROP TABLE public.detalle_pedido;
       public         heap    postgres    false            �            1259    16625    detalle_pedido_id_detalle_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_pedido_id_detalle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.detalle_pedido_id_detalle_seq;
       public          postgres    false    226            <           0    0    detalle_pedido_id_detalle_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.detalle_pedido_id_detalle_seq OWNED BY public.detalle_pedido.id_detalle;
          public          postgres    false    225            �            1259    16603    informacion_nutricional    TABLE     �   CREATE TABLE public.informacion_nutricional (
    nombre_caloria character varying(255),
    cantidad numeric,
    producto_id integer
);
 +   DROP TABLE public.informacion_nutricional;
       public         heap    postgres    false            �            1259    16597    ingredientes    TABLE     �   CREATE TABLE public.ingredientes (
    id_ingrediente integer NOT NULL,
    nombre_ingrediente character varying(255),
    id_producto integer
);
     DROP TABLE public.ingredientes;
       public         heap    postgres    false            �            1259    16596    ingredientes_id_ingrediente_seq    SEQUENCE     �   CREATE SEQUENCE public.ingredientes_id_ingrediente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ingredientes_id_ingrediente_seq;
       public          postgres    false    221            =           0    0    ingredientes_id_ingrediente_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ingredientes_id_ingrediente_seq OWNED BY public.ingredientes.id_ingrediente;
          public          postgres    false    220            �            1259    16614    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    id_pedido integer NOT NULL,
    cliente_id integer,
    fecha_hora_pedido timestamp without time zone,
    estado_pedido character varying(255)
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    16613    pedidos_id_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pedidos_id_pedido_seq;
       public          postgres    false    224            >           0    0    pedidos_id_pedido_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pedidos_id_pedido_seq OWNED BY public.pedidos.id_pedido;
          public          postgres    false    223            �            1259    16588    producto    TABLE     1  CREATE TABLE public.producto (
    id_producto integer NOT NULL,
    nombre_producto character varying(255),
    descripcion text,
    calorias_por_porcion numeric,
    precio_por_porcion numeric,
    tipo_producto character varying(255),
    disponibilidad boolean,
    img_url character varying(255)
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    16587    producto_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.producto_id_producto_seq;
       public          postgres    false    219            ?           0    0    producto_id_producto_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.producto_id_producto_seq OWNED BY public.producto.id_producto;
          public          postgres    false    218            �            1259    16565    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character varying(255),
    apellido character varying(255),
    contrasena character varying(255),
    rol character varying(255)
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16564    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public          postgres    false    215            @           0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public          postgres    false    214            �           2604    16577    clientes id_cliente    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16629    detalle_pedido id_detalle    DEFAULT     �   ALTER TABLE ONLY public.detalle_pedido ALTER COLUMN id_detalle SET DEFAULT nextval('public.detalle_pedido_id_detalle_seq'::regclass);
 H   ALTER TABLE public.detalle_pedido ALTER COLUMN id_detalle DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16600    ingredientes id_ingrediente    DEFAULT     �   ALTER TABLE ONLY public.ingredientes ALTER COLUMN id_ingrediente SET DEFAULT nextval('public.ingredientes_id_ingrediente_seq'::regclass);
 J   ALTER TABLE public.ingredientes ALTER COLUMN id_ingrediente DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16617    pedidos id_pedido    DEFAULT     v   ALTER TABLE ONLY public.pedidos ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedidos_id_pedido_seq'::regclass);
 @   ALTER TABLE public.pedidos ALTER COLUMN id_pedido DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16591    producto id_producto    DEFAULT     |   ALTER TABLE ONLY public.producto ALTER COLUMN id_producto SET DEFAULT nextval('public.producto_id_producto_seq'::regclass);
 C   ALTER TABLE public.producto ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16568    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    214    215    215            +          0    16574    clientes 
   TABLE DATA           �   COPY public.clientes (id_cliente, usuario_id, telefono, direccion_entrega, preferencias_alimentarias, informacion_medica) FROM stdin;
    public          postgres    false    217   �A       4          0    16626    detalle_pedido 
   TABLE DATA           `   COPY public.detalle_pedido (id_detalle, pedido_id, producto_id, cantidad, subtotal) FROM stdin;
    public          postgres    false    226   �A       0          0    16603    informacion_nutricional 
   TABLE DATA           X   COPY public.informacion_nutricional (nombre_caloria, cantidad, producto_id) FROM stdin;
    public          postgres    false    222   �A       /          0    16597    ingredientes 
   TABLE DATA           W   COPY public.ingredientes (id_ingrediente, nombre_ingrediente, id_producto) FROM stdin;
    public          postgres    false    221   B       2          0    16614    pedidos 
   TABLE DATA           Z   COPY public.pedidos (id_pedido, cliente_id, fecha_hora_pedido, estado_pedido) FROM stdin;
    public          postgres    false    224   B       -          0    16588    producto 
   TABLE DATA           �   COPY public.producto (id_producto, nombre_producto, descripcion, calorias_por_porcion, precio_por_porcion, tipo_producto, disponibilidad, img_url) FROM stdin;
    public          postgres    false    219   �B       )          0    16565    usuarios 
   TABLE DATA           Q   COPY public.usuarios (id_usuario, nombre, apellido, contrasena, rol) FROM stdin;
    public          postgres    false    215   C       A           0    0    clientes_id_cliente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 1, false);
          public          postgres    false    216            B           0    0    detalle_pedido_id_detalle_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.detalle_pedido_id_detalle_seq', 1, false);
          public          postgres    false    225            C           0    0    ingredientes_id_ingrediente_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ingredientes_id_ingrediente_seq', 7, true);
          public          postgres    false    220            D           0    0    pedidos_id_pedido_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pedidos_id_pedido_seq', 1, false);
          public          postgres    false    223            E           0    0    producto_id_producto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.producto_id_producto_seq', 1, true);
          public          postgres    false    218            F           0    0    usuarios_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 1, false);
          public          postgres    false    214            �           2606    16581    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    217            �           2606    16633 "   detalle_pedido detalle_pedido_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.detalle_pedido
    ADD CONSTRAINT detalle_pedido_pkey PRIMARY KEY (id_detalle);
 L   ALTER TABLE ONLY public.detalle_pedido DROP CONSTRAINT detalle_pedido_pkey;
       public            postgres    false    226            �           2606    16602    ingredientes ingredientes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ingredientes
    ADD CONSTRAINT ingredientes_pkey PRIMARY KEY (id_ingrediente);
 H   ALTER TABLE ONLY public.ingredientes DROP CONSTRAINT ingredientes_pkey;
       public            postgres    false    221            �           2606    16619    pedidos pedidos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id_pedido);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public            postgres    false    224            �           2606    16595    producto producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    219            �           2606    16572    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    215            �           2606    16582 !   clientes clientes_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id_usuario);
 K   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_usuario_id_fkey;
       public          postgres    false    217    3209    215            �           2606    16634 ,   detalle_pedido detalle_pedido_pedido_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_pedido
    ADD CONSTRAINT detalle_pedido_pedido_id_fkey FOREIGN KEY (pedido_id) REFERENCES public.pedidos(id_pedido);
 V   ALTER TABLE ONLY public.detalle_pedido DROP CONSTRAINT detalle_pedido_pedido_id_fkey;
       public          postgres    false    224    3217    226            �           2606    16639 .   detalle_pedido detalle_pedido_producto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_pedido
    ADD CONSTRAINT detalle_pedido_producto_id_fkey FOREIGN KEY (producto_id) REFERENCES public.producto(id_producto);
 X   ALTER TABLE ONLY public.detalle_pedido DROP CONSTRAINT detalle_pedido_producto_id_fkey;
       public          postgres    false    226    3213    219            �           2606    16644    ingredientes fk_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingredientes
    ADD CONSTRAINT fk_producto_id FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);
 E   ALTER TABLE ONLY public.ingredientes DROP CONSTRAINT fk_producto_id;
       public          postgres    false    3213    221    219            �           2606    16608 @   informacion_nutricional informacion_nutricional_producto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.informacion_nutricional
    ADD CONSTRAINT informacion_nutricional_producto_id_fkey FOREIGN KEY (producto_id) REFERENCES public.producto(id_producto);
 j   ALTER TABLE ONLY public.informacion_nutricional DROP CONSTRAINT informacion_nutricional_producto_id_fkey;
       public          postgres    false    222    3213    219            �           2606    16620    pedidos pedidos_cliente_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(id_cliente);
 I   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_cliente_id_fkey;
       public          postgres    false    217    224    3211            +      x������ � �      4      x������ � �      0   L   x�KN,J���L)J,�/�45�4�*(�/I��K,�4��	�%y�zF@Nq~Jf>��%������4+����� ��K      /   S   x��K
�0����0B}^F�(���H�MOo���I�����v�xL��ö�a�(�%Y�8�Q8�a.5�b=�*o=���3      2      x������ � �      -   W   x�3�K-J)-J,V(N�)IMLI,����RR�`���y
�99�
�
�EE�U����z����9���y%�Ŝ%�1~\1z\\\ ���      )      x������ � �     