# Antes de comenzar la migración Zimbra

    
##  Como usuario Zimbra 

    # su - zimbra
    $  ./libexec/zmslapcat /tmp

##  Obtenga la estructura LDAP 

    $ /opt/zimbra/common/sbin/sendmail -v admin@proviasdes.gob.pe< /tmp/ldap.bak


### En caso de error

    $ ~/sendmail -v admin@proviasdes.gob.pe< /tmp/ldap.bak

