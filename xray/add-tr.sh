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
BZh91AY&SY��- `��s� �����������  D  � P P�o-�.�̪�*���d�OS�T{
e=OPi�g���G�OS@2S��� $�4&��SЀ hhi�  @h D�d��z�� !� ��  h�@4 @h  �4�@ F�H&�$؛E'�i#�SL#򧩦� 6������M@Ip.(
��_D��z��d�e1�τ�S
kN�l7�Ⱦ��������ܢ�U��A�ӭ%�a19�e�SYK���S܉�UR����C��4�cy� e�$�z�q��g++������y��w�)B��,C,�{%֒�h��(�F��,�~�1x}m~x�W���E�4���������-wޡ6��T�6�����,1��4�f������0��$����-�Et�b"�m�[ �@���1�C�w�@�D��9H4�	Q�
C�<p�" 'vq��Rb�ќ5�l-�k0��i�8�+����c�Iunf�s&��}���O�5yfO�Ǔ�ܽ*��h����F!������C�A�B�Y)���ձLb� ���m�Z�aVm8��1�H�	��gf�%���� ������<P�n��U���J˦�-��l>�yjǑ\��-|������`:�HN��k6��M�d5� �c0�7�"<��ᰊ��|78�v����Ljo��W������2���z�=�:���21���a�
��s��=�Y���}wYB��wJa*k��	/)�)j}U�9{:���觰̓�0I^�<`���`�a@;K��鑴�,BF/�!�t�`8�1�[oѼ�Y(]��L��׎�v���äx�L֐Hg�?b�>JpXb�Ӵ3r$6�(=�
�����X���"C�IR�D�1�IP�D�n�O]��[˃�t'f�����C��h�+�Cu�ww���
�$�.���	�2dTd�A$Mc��w �w�.'��J��H�,$3.ӹ� ��l�ٕ��.�41�kHH�$�cL��0�:��r��Ø��� }T>���cS�G	�)�{����(�-!
�M	�����a��2�.H��Y9�Cʪ�@�����ŭ�C���B�U�v/��$�|u���@!�1������u
��������1�����w�0�#�f`r�NC�6 ��fBE	o�*J�ta�G6}��hUf���^k����U&�S1esrI�1`�I�82Q]�l�HlZ)"�u��b�U�_m�}�`Y;����ي(�(�E�8�����fyi-�qA�G�P�њ�Y���IK�.2�F�$�'a���HP�j(Е)"1Ӎ~2<��"�GVMC�.�3���Y��H��*h��sl���9<�6(��J!jL���XⰘ�9������*í��< Q���L		�!|�N�UV�GƐyu?�H �H ���G��gP�B[�0 ��rE8P���-