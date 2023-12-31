PGDMP  ,                     |            indonesia_database    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    115130    indonesia_database    DATABASE     �   CREATE DATABASE indonesia_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
 "   DROP DATABASE indonesia_database;
                postgres    false            �            1259    115132 	   provinces    TABLE     h   CREATE TABLE public.provinces (
    id integer NOT NULL,
    province character varying(26) NOT NULL
);
    DROP TABLE public.provinces;
       public         heap    postgres    false            �            1259    115131    provinces_id_seq    SEQUENCE     �   CREATE SEQUENCE public.provinces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.provinces_id_seq;
       public          postgres    false    216            �           0    0    provinces_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;
          public          postgres    false    215            �            1259    115139 	   regencies    TABLE     �   CREATE TABLE public.regencies (
    id integer NOT NULL,
    province_id integer NOT NULL,
    regency character varying(31) NOT NULL,
    type character varying(11) NOT NULL
);
    DROP TABLE public.regencies;
       public         heap    postgres    false            �            1259    115138    regencies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regencies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.regencies_id_seq;
       public          postgres    false    218            �           0    0    regencies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.regencies_id_seq OWNED BY public.regencies.id;
          public          postgres    false    217            U           2604    115135    provinces id    DEFAULT     l   ALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);
 ;   ALTER TABLE public.provinces ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            V           2604    115142    regencies id    DEFAULT     l   ALTER TABLE ONLY public.regencies ALTER COLUMN id SET DEFAULT nextval('public.regencies_id_seq'::regclass);
 ;   ALTER TABLE public.regencies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    115132 	   provinces 
   TABLE DATA           1   COPY public.provinces (id, province) FROM stdin;
    public          postgres    false    216   �       �          0    115139 	   regencies 
   TABLE DATA           C   COPY public.regencies (id, province_id, regency, type) FROM stdin;
    public          postgres    false    218   0       �           0    0    provinces_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.provinces_id_seq', 1, false);
          public          postgres    false    215            �           0    0    regencies_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.regencies_id_seq', 1, false);
          public          postgres    false    217            X           2606    115137    provinces provinces_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.provinces DROP CONSTRAINT provinces_pkey;
       public            postgres    false    216            Z           2606    115144    regencies regencies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.regencies
    ADD CONSTRAINT regencies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.regencies DROP CONSTRAINT regencies_pkey;
       public            postgres    false    218            [           2606    115145 $   regencies regencies_province_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.regencies
    ADD CONSTRAINT regencies_province_id_fkey FOREIGN KEY (province_id) REFERENCES public.provinces(id);
 N   ALTER TABLE ONLY public.regencies DROP CONSTRAINT regencies_province_id_fkey;
       public          postgres    false    218    4696    216            �   G  x�]Q�N�0=�_�#\��4�z�T	1`���uQ�v�M�{�%�7�����s��1��n����-z3`��q@�rBVx�9{��+�����egz�le��	�����!t5�=�Cp�#9"��q�_��φW�Y��l�A
r<�9���;��d�*�����mkh����qU%�m� R32��ũr�`�p�b5��U�p�ה��ZҸ��B�b��PZ���8:��FI5���N�ux2G;"bB�E!'h4(�[Z}�U�z�w=zb���^х&�B�*���m���H�L�h[�	H�J����CG_|��FV��� ~��o      �      x�u[]��:�}��~�y�E$J��؞��{����E0��бƭ�>�\����)J���I���G�T�>Hu}�VQ��WMik[�^��^̭l��/1��_��z_��sUKX=�67�J8�ෲ=�Lo$�>𪱽31ؼKTO膦�I0���x� wձ�[���}S��-�6�h���(����ͧ׃I�j>���-��1d�ʴ'	3A��ɴ�����ӳ)۲_o˾�؋�p���nL{4k̾z�n��ӽ9��C����;_Kۘ{9��W�z5S�fodf׫�M3 1,0^}��`'��ū-$�j2��w2�ZvQ��f.��u�d�1�p�%4�v8�(9�-R��`�{�tת���J-廊��Y	瀟��ݗ� @�Զ=Y	��ճ��J�3W/��d3s�\�յ쏞!őr��g%����E�"���@��?�նGtbzv�|1����?�q��,115{'1�#���]����X�ŭ˃_͝��.��N�}�-�����R.�t���Y¡�O�y�u�̲�� �L5A,ήl �|�io�s�,�<�̼�?��@�bKD�SkoS������+���bgXi_mk޺z�p��ꥼ��� r=$�]jT�T+��Z�5,��p��j���Y�'�^�Db)0"˼��I��p��h;C������t�S�7�h~�#�ޑ�z_c��GᦾS��X�f�l=�yi̵�ܰ��ټ��(=�4��qC�㒴�N᧽u�JH��y�̍=W���|�x�4gr	�}j׮}$�[�C�z�0Ζ���"�1$�?�coN���ɲ��:P$�e�=vDpM�l%�ۯ�\?�_$��l��o:�Gw&�Cir�Wɏ���X1H	cH���I���Nh����H�f
�)��zH�lJ��U�K̑��tų�R��9j㇛,�����ެ)�ji,%��C3����F�/�K�l�-0���^�l.X@#�5S1��������j�+��N3����K׀���/���}��ԙ�ˌ	1��۪�`���M��nе�l�DH@ʽ>��J�e�/[�?X���%���ȥ���2���3  b&��s�*�q1������`��1Z�s)�K=3���L]6��3�n��z6��Mz��u��c��H43�4C)�	�Ɍ�L�2�;�v�8�Ы�gd�r�61�"؄�]hj�4k���$��.��֞���JHZ"�5ʋy��	��3a�79��ɞ)X:�9��q����^%��ch��ʣG`�9���9hzth��U��i>�/�x��,��G<f����
A�7��0��ky�cƶ��~T���w�Hh��e9E
q��s�֯����ұ[�֏����
t��5���������S�6�	%(��	uR@i���J{,���,�g�׻���}�J��Q�ic\XĨ�[�^����4�f$� xeo ���"�SK1F8��2���5�l�%��\n��|J*|���rf�.�����sn<�=�H͡��Ba�̡A��Ρ��0��\QYН��^�rjߓ_'�[IH�g��{���VڙB�M�WJwn�=C�E�3��29V���J�H�jm^lK��Pm�NS t��>(�xgD����6�WU+��qnژO+1��AL���wǺ�2l�)٠��ëd=�3n���PccAB��S�<jv�מ��V%T84&�ӡ1�K:�����e�LjL�P����@�P��e�B��MP�_�2�JLB8UjĉU�-	"���ϼB���2m�]X*�
�-�"�
L7���ˏNb�Ϯ�����r@[s*kOߨ+!J�I�z-4��b��Q�i���ғ"�G)N�J� �V���ɞ�/5f�kO��Κ���M�yFLŏ1��#����<ј�{�R�1S���o��)x�\�,�y�{j���c��Ad��r::�Rg*�`:g
d�u�;!2dº�q���/���X)9Б4w*�ۨ�G�24�&���:=Z��К�;ڳ��܄_�ħ��]߉�L��'�����P ����:�px_��JE�B&����S���J�z~U2�+��@��}�P����D]�%�0hq3k|�@=L膒yXP
+�G�%`��.��>� �NK)W�H�C��+E�Ŧk�ݝ<�Ę�=�\�c:v8��=4q_mo=���Mz�|��FLǶ���e�0f�[��4bJ���GH�D�c�XY)C����7�8&�K�����ё��z)[�L�[�3�q';����=%�R�8��D���q�q��a��, %iK�p23?w6t<�աMͭqhK�@*U?�����\CC[��2��S]8^nC��p;�P�����\�H�t츉�v����qC�>t�rh^�2
��vjT�I��D��yz�<?���:�O)
����+EST()j	/ENQ���Cs�����s0*sӵ'�=�x:M�!گ��e#ќ�ٺD., ͻz.ۋ�����NH��+��d�)ʅ�)j��U�)
���o�I�<wT���훪���DKr�39�;�ir�@3n]Ǐ��)i��*�HK'4�*2����
R$�Ѐ�\��S$�~�`�S���V6k4?՝'R��Qsy]����T�\����N�X639䉏^w�ek��Ę�ݭ\?�Nb��@x��lY�Ԗ�x�"a��WΥ�z.W�=Բ�a�+g���������`WJ��w�"�;!`[R ���e�'<f��#	�
���e�(��'�� s���?�dp*Y4<�|Cs��(?�(x5
qGOD2!�W-�v��1X��n�/���-s�)1�C)��+5�[[&����ز����߮����N�!d�q���I @�V�n�Lgpr��n��2W�7���9���.�Gw��/W8Ao��I�;��|q���ޜ�5$�[o�Q<�EHO��l)������y�0�*g3�!x�l|�}5�)��%=�6+1l�M��X�K�J8u^��K�J��Á{uZP&���+�I\��)P;�.�q��L@P�H�O����j��^g��q�K�d?�ǫd��/K���$C͗�"�-x��߄���nY2TS��Z��	����W�S�TG5k�+�$F��:_����h�z�sT�G35�(TK���f��s�JPlfx�䢱���О�/C�I�w��29NGn��AZ�p@훮68�[2��f5"�ْ���j$� ͮ�QC���O"����أ��WX0y��1���C#n,�d�g����X��?���&��=����rD!?AԈ3��/m&Zf=�Q�H��I��nԙf}l�������5�{7)W;�釦;�N�v�#�W�'���F"d'�}����!����P�
��u�7[��خ����T)ߍ?B�$[O6#��,#�SE�ٛ�\��E��@ך��J��(|!u�K��M;>Vj��~��s��X��c�fE@�A�ґ����A����ˀ|���:��ᳫ9�� ][���[��h1jx'� �(�m�u ��[�E8�H�!Jw��;�����Cn6J��ǲ��勗Ij�ސ�j� aB~��� bR^��0w��yv=9x���8(t��������cu�(?��T�jD&���s9�*�:"$�,}>+$�o�;�Fd�旮�h�@� �PЈ�ӈ%��o� ߰yC5��4��h|�4-r�0;�j�1N"-��l�@I�F/�p��� � 0y��V�x�.���U�x{��`����[�@��_��������$�}�����w{77J܄tz7�q��b֐Xd	r]j:��f)�	.��uu	g��O�{�C����<�N���J } ������ɑ�䈙��S���#�	����ᯔ �X�s�3�x���8��T-|��#��;�v�#�y�x�#y�\���O���#���7;>����x����^.���A��BA]f�Ԋ\"G.!�X9���G��BJⳆ,#w�]#����#Øp�V+#���B�����F�4@y�����X�B�Ň~�����}�H ��E<�R�T�Ru��,���V��p]�H��\��}F��� W  _��q�R@�����^��*0@v��I��i<<y���ƶ��S��,��]~!Z@��ၖ>�*����r ?���9���&��D����<�ޠ(r.�1K���W|�}"u4��YGvY��ӵ�K"�,���oٮ��SW�V���&U�=�v�繇.�=�깬>)��~����w�%�.�	�D�?��k��{
�n��:{@�9T�'K�R��[* ���$u�H��Y�l���# c���m?F*��������|?ړ74E�L������-uBIt���.A�6��\��_�	����l�D�	Y6z�^ã��;KV�\d���w6)�����~�?[��     