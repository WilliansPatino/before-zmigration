#!/usr/bin/bash


SAVETO="/tmp/MIGRATION/"

rm -rf $SAVETO
mkdir $SAVETO

cp -f $HOME/zmigration-fase-1/01_get-ldapinfo.sh $SAVETO

chown  zimbra:zimbra $SAVETO

chmod -R 774  $SAVETO/01_get-ldapinfo.sh
chown zimbra:zimbra  $SAVETO/01_get-ldapinfo.sh

ls -lpa $SAVETO



