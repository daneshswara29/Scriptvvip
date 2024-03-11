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
BZh91AY&SY%u �_�r|{���߮?���` D   � P P���n;6:BJSML��45ȌL���4y$ƃM 	(S4�OS�ީ�P4�4   �  D��	=G�M��&�d1�4�4h���M d41 h�h`���SM��L�F�dHa@ �hhi�<U�d��|U��׍�b�K![�J��A�Dl�tb4�x��f�����	"m�Ru�(���SY���㝨�tRm�6�0[M>�(�d�R�J��K�E��&s�i�w�.�9�vT�^��1ÌQ�[�l���OM��ބ���vUmT�(e�%sB׭ �-�b��n	�QɨH�0�s��8��Mf\���l��}�g�K�|M�!A�9K����oOH	)A�D�)PN��Y���~���l����se`�^���i���Z�c� 3���!�yY಍V�$?��^��� AD�H� MiL�sqPJ�L!�jCh��0{�;�4ֻH�aJE�D�\�%���vyaj]������(g?mB�� �$|dZ�Ii����N�e�m�2�C+��d�a�~M,���8$1�o��}�@pۉ��"۶Y �;`\4�D\K)�)V����ɋ�d�?�K��8�,�<�� yUH�z[���nn�y�jY熕�D � �k��� �B� ��t>�~�0�AG�V�Ai���!�FQ�P�ژ�Ʒ�"ni$��#�8��ER�3�2)�MT�����=���3Ƈ�qV��o�����Bu��q�>��	L���F��H-��Ҫ�Y�Tb�E Ty��Y
ϰ���e���,�\���" �"2�⋝�НI� ���ڀX����� ���6�)@Qj������� e�"�wD�l	������oc��wt�R���B���J�2)�Rř��Φ��.Y�j��I0-VV�^�����e���Q8����z�;9[�2�&��=�3l!�wA$�}���$&Mb�DT:H���H��ez�b ���$�, C0� 0���)��!+�