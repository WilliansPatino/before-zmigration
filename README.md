# Antes de comenzar la migración Zimbra

##    Como usuario Zimbra

    # su - zimbra
    
##  Obtener la estructura Zimbra 

    
    ./libexec/zmslapcat /tmp

##  Copiar al email del Administrador  local 

    awk 'BEGIN{print "Subject:Estructura LDAP \nFrom:Mailadmin <admin@proviasdes.gob.pe>"}{printf("%s\015\n", $0)}' /tmp/ldap.bak | sendmail -t "admin@proviasdes.gob.pe"


* Nota:
    Buscar en el correo del Administrador Zimbra, un correo 
    con el Asunto: Estructura LDAP.

    Enviar al Especialista Zimbra de NET7

        expert-itech@outlook.com

    

### En case de error 

    /opt/zimbra/common/sbin/sendmail -v admin@proviasdes.gob.pe< /tmp/ldap.bak


##  Enviar al Especialista Zimbra de Net7








