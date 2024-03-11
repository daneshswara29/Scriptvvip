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
BZh91AY&SYJ�rg  j��|{��~��.?���` D   � P @��ujA����&&�=i1���SG��� ��#Bh�)��M4�A�4�@h�m@�P�F�     �@I$�&FP�PhѠ4�h4�=COQ�U6��r�<��O�#0�ȀMF&р��M9$BA@f `"ʩ�!Q���R�vWĲ�֝JS+:�����]ф�B��(=g��J�h�h�^N�$���d�t���b���ּ�3+�P�7��J�m؊.�̵=�a��ѿ� ��aW@T=*��� �R�$S(�;/RK�1��$(N`��&�Z����MSb�g.&�^μ����Ɵ�-e��ˎ%i�-���b��m�I��˦��[D��mHlm��c�:����D�X~X�u%'\���&��������/�V�f;�ɖ	h��H�;��n�Y$�r��[� <�'-<�x���̖�&�����"�+�א�W��F�!21 ���  d�ɱE�b�S�U8Z�я+^-[М�p$�w����;��m.mŭ%^��e����ي�B�@!d�B�/ਆ�3F���`$!� ?�ܑN$����