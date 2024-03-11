#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYi$P� ���~�����������`D@  � P `�������B�����	��5�F��<�� z�   =F�� 4 ����=LjOP�C@        54���=OL���  ����4  Jh�e#<������z����� h � �@4 @h  �4�@ F�(M M	�0��6�Ҟ���1F�� Fhz0=��)��-�,�epbU��5J��H�n�r稩ц\���ħ���G��9���t�΅�1�0Sb���Ί�W2�[
]2���s�B���xA
����$&������eD����.�8�Oh{��=MkB��t�'KGT�IM� ����E�f���x��׬�Jr��o�4��	;���N3B'�z�jU�U��8	O�OL�lцX`�"��P5x��͐��?��h��A�Q��6�란�F}P���`9�IC�PL`���5u^@&�
3(.�����Xʂ'&/(Z���#��E��a7SU�AIȁSJG�d�8eIg.�|��3k&�TI	E�`������ݼ��PJ�L^r�PXl�6@�#`q���a��Y��)5<g�6�S�y�I��h	(�@��%3S�1F�b�7�}RUx��3 ����K_���Ʋ�H�� P� {����`�@/sC�EF���C?E�P�Y�
�2/��}���$�1�ʆ!0�m��J�8�C�\}��~v}���u�����U�K�T"�H'�Lh�?�I:,"TwJ봵1�NhA2q��-�]UB<���ʲ�W��Lr N$��Ea0��H��m��I)�X�p���8j�]��.��}�8|���S��1�2QO�S�sC��g�����n��2O�("1"z�+�C}���P��qc���e���v{��K{Wgծ��i$�g;�KEѾS�D\�lղ�w@��C6��]��Z���ۡ��TZ��U�_�=γ�T��O!=��ђ��۸Ą$R����T�L~1�sPK)�v}�ۊ|F]��F�mb`���%�&P��;��r40h]�{�M&���PÃ���c�3�
ф���?G����2��ʎ�y��x��G�r�z�3���$"��F��̗P�<<�2�#g{�m�Ǭ^٬�w�����X9�BYT�|&w�D
j�%E�!��+mr�vZ)��ӱ+$\�R�F�2�(�4C�*N�v(���3�Ha�o'V2���!�I��!�i�}�o��B$����*����3�Ҵ��7�fޛc���PC1Hce�Վ�r�Q�q���R�E'=�kԶMv�.E0��*�]�l�H��_��}����>�����F�vr�fc��p%%����l�!*�7�z���e��%�2�Y�#�(�Z����4�P��s�F���/�2O^_+���>?~ k��nc�h3@�	+n��}Bx5�5��փ95c��B�ht�A-��?��D1T4ljS�GO"���<%�x�P$YJ-�i�f���+°�i1=Zg�-�ȆO|0F±�Brh�\ .q�֠��U��Lc�h�����9 k@j�����4K���i���AhG)�5we�Ew��V�!�"�����A'H���rj+.QX���L�qeI����u���$J��D�5�2��[�Ƿ��ɐ�B����H��r�u��H�2��p���`��P���ifH\!�������8����`����/�p������,���@B��Ec�rE8P�i$P�