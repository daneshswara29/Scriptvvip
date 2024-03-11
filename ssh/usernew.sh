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
BZh91AY&SY� ��� ����������  D  � P `��:@� �@ 
�S�z&��D�ba0 	�0�P�#&`p�i��@   �M@� b*z	�� �   �     F�h4�  ��4�4 h�!�Tԧ�MC#@ 4 ��  4   $�4iOЙ���i���2��(�O
f��a��m���'���07�AC/c���9 ��JH�1��}֊���K��.�����_���6�aW�n��5>������S��磗�n\��1����Y2\��1��U�/�G�XҔ��U-IT)E�m�Im&w˛u�m��̯������/�a�'	gm�D5�az�;)������?y�/��I$��7&O>
���p��w�}���v8�wd��m�G֯�\l��n&�����L2��gR�E�S�������xh�h�r;����g�[;���n�ٮ��a̷�U%�'�Tk����sb떌�e�hN�@p0� E"h�pq�`%+á�^�$�8�;O���p��Jl7L^�	:�U�J�[�^uTT|+}7r�鷯�E*��R�C٨����K3�,���S�?���ڤX>Dx�~�뾧��v�x�v����c�����U<�@p�(0&@�@
*IZO� ����w�r�v�{uǮ�z�Ke��ӟmyeD��~2I3�V^����ɚ��ͽ������,?�ؽ�"3>��-o'��'�p�͋��6S�p�\A�������8%,����-���c����e��=�^�~\�c����������1`��v�%�?�%ׂ�HZ�H�R�)��e��Ȍx�/�X<?����^��3{���?���5��/���Y�3�}�*|S�`�c����	F�~Y�Ų}�w~lXO����T�y�.;�WM	?	s�'�����[����r2]�\_��\�
G3k.��f�k{��eisF-N9��0e*�4�����_�!��d���x���&�8u�f�wݥ��<�\ɥi%��y�aJ��d满r�%�љ�ҹs���p�,��Z�\�)~������۹�s������j~Mߏ��IExB�v�Χ���Lx{����#����,Oqw��_<�SS���r���&j�I�kf��>�a�D�[�q��7q�|\���ٜ���5P��K �|a���"ZP���|R�.�O���=?�U
�yy��*��WZ^S�vo�I��ۉ����ͪ0�c���<]�F�ګ<s�]�m1�p������t��� A�0A 5��RJP��U 
4��lA�
��L������[��<���E5R�,�������I%J+޲�|>���qgN��'m��p�4ߋO��Avݏ��N$ȯ���)樚9U��شA��L�=w#j�����<��U�F&<��v��K�KI�gŴ�I�l�ou���bsI���s�We�Z�H�d�^X��[�S�bo�#�=�$���c����#�]�?f�H۷�_�4��,�~|n�b��Qu%�k-U%��q�L�g)��B�7�¤��T���׈;{��Ѓ�&����{�s^��������J3�k��g+>�⠺��8�GTT�f�O`�U��?S��.f�nk��K�:S���Rۧ�9�j���F::	��i����+�%Wp���y��{�6e��5͊�D�� ;e����\h���7�S'�4]����-~�8�2ȹ��dݑ���ͤ̅�f&��44m�g.*%D� �ΦƐ��T����`&�9S�N�'��b� �d�Sg;a��"�8��p��µ��Th��h�*QJN-<�"D�{>�w�>�[S)�����������o|i	HP.���)��xp(