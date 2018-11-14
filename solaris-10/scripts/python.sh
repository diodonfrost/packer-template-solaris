#!/bin/sh -ux
echo "Installing OpenCSW"
NOASK_FILE=/tmp/noask
INPUT_FILE=/tmp/input
echo "mail=
instance=overwrite
partial=nocheck
runlevel=nocheck
idepend=nocheck
rdepend=nocheck
space=nocheck
setuid=nocheck
conflict=nocheck
action=nocheck
basedir=default" > $NOASK_FILE
echo "all" > $INPUT_FILE
pkgadd -a $NOASK_FILE -d http://get.opencsw.org/now < $INPUT_FILE
rm $NOASK_FILE
rm $INPUT_FILE

/opt/csw/bin/pkgutil -U
/opt/csw/bin/pkgutil -y -i python27
/usr/sbin/pkgchk -L CSWpython27

ln -s /opt/csw/bin/python* /bin/
