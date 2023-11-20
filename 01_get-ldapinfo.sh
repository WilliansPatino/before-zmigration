#!/usr/bin/bash


SAVETO="/tmp/MIGRATION/"
FILE="ldap-info.ldif"

/opt/zimbra/libexec/zmslapcat $SAVETO
ls -lpa $SAVETO

sendmail -v admin@proviasdes.gob.pe < $SAVETO/ldap.bak

