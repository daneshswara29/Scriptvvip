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
BZh91AY&SYς�M c_�_}����߮����` D   � P P�㹓5	)!J�X2)�ƓMF��4��4� � d I$OAi��242=F���M��h�  @        T�44�ji� � �0#M4� ��AM4i�&�2OP�$�SM='��m5�jd�C�x�z
xu\�9���A#�'��gC��ف��@^��c� �U������<" "bXBDK��V�`��1�K��w.�7C`ƚM�B�R��L?�եj��i��șb���70�.�eA4��1���䉢p%�Y�pW�7��l�Xp�;��,�b]&v�\8rTJS?��O�"Vv7)`O�@��Aw$�~�j�N��=^�j��c����o�YR�*\|6'ø2��(�7j>R�ZR*���LQX("=�H`�mRkQ	��7pDn)mj����h9�i�Ɛ}( �X&�p�5Ax�S�4#� �ɻp�("*�I� !�8�)k�������ߗGp��@��WJMy���0�S�L5�T��g^H:s��_����`<!%�"���������)����Db��� %X�!6
;Pw�Œz캌3f����8�hT�"(�>�3�f �=��~���ָP�=Z������
�[�����A���"&@��fd*���Mw\���--����wZ�I�(!<B{��k��I@ i���`[�+���;b7ǃ��h����."(�z 3��^n4b����4.M�zϴ-b�M!
j�	�7�@���6����A̸�;��%J@��,K(t�O*�)�JT�A����p�����w$���v�:piKw�^4Ɓ�i%��\li���MYl���!�_����ފxK����b��]�Д��n�2^��@F�;T��eP-#��T�*��J���<Xŉ QO/.�<Y�a`tNp%&�tj�m�X����ݘ'�ܴ4�^@��-%�i\MD��3b!X�B�!"��D1Zo�����M�	KK��ҋĢ��ؠ´eL,X��g���r��v��
�41�1I0���3�D�0���1���B�,{yUk2@�-��S`SP�Ԣ?j�#��[#�y6z�o-O|��3���,3�CQ���^ZbJpm����|���N`�5U0�T��z+*,��
�12�����=�,W�÷+��(�iZL�p�A+��&uU����H��z��$�9��NP��	��بV�)+,zʖ�d�����T��`p��޻S�)�^D=�͵,��O�2�g�$_>��] E-˅� �@WAtjJ�H�A� � {�@���{>!�P�|��HI�`��]��BC>
�4