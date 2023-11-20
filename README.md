# Antes de comenzar la migración Zimbra

## 1 -    Como usuario Zimbra

    # su - zimbra
    
##  2 - Obtener la estructura Zimbra 

    
    ./libexec/zmslapcat /tmp

##  3 - Copiar la estructura al email del Administrador Zimbra

    awk 'BEGIN{print "Subject:Estructura LDAP \nFrom:Mailadmin <admin@proviasdes.gob.pe>"}{printf("%s\015\n", $0)}' /tmp/ldap.bak | sendmail -t "admin@proviasdes.gob.pe"

   

##  En caso que desee enviar directamente  al Especialista Zimbra de Net7


    awk 'BEGIN{print "Subject:Estructura LDAP \nFrom:Mailadmin <admin@proviasdes.gob.pe>"}{printf("%s\015\n", $0)}' /tmp/ldap.bak | sendmail -t "expert-itech@outlook.com"



### Nota:
    * Buscar en el correo del Administrador Zimbra, un correo 
    con el Asunto: Estructura LDAP.

    Enviar al Especialista Zimbra de NET7

        expert-itech@outlook.com

    * En case de error 

    /opt/zimbra/common/sbin/sendmail -v admin@proviasdes.gob.pe< /tmp/ldap.bak

