# Antes de comenzar la migración Zimbra

    
##  Como usuario Zimbra 

    # su - zimbra
    $  ./libexec/zmslapcat /tmp

##  Obtenga la estructura LDAP 

    $ /opt/zimbra/common/sbin/sendmail -v admin@proviasdes.gob.pe< /tmp/ldap.bak


### En case de error 

   awk 'BEGIN{print "Subject:test mail!\nFrom:Mailadmin <admin@proviasdes.gob.pe>"}{printf("%s\015\n", $0)}' $message file-name=/tmp/ldap.bak | sendmail -t "admin@proviasdes.gob.pe"



