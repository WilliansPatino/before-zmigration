# Antes de comenzar la migración Zimbra

## 1 -    Como usuario Zimbra

    # su - zimbra
    
##  2 - Obtener la estructura Zimbra 

    
    ./libexec/zmslapcat /tmp

##  3 - Copiar la estructura al email del Administrador Zimbra

    awk 'BEGIN{print "Subject:Estructura LDAP \nFrom:Mailadmin <admin@proviasdes.gob.pe>"}{printf("%s\015\n", $0)}' /tmp/ldap.bak | sendmail -t "admin@proviasdes.gob.pe"

   




## NOTAS:

La estructura LDAP es requerida/necesario para crear la base de datos en el servidor destino.

* Siga las instrucciones desde los pasos 1 al 3.

    * Busque en el buzón del Administrador Zimbra, un email con el Asunto: Estructura LDAP

    * Re-enviar al Especialista Zimbra de NET7

        expert-itech@outlook.com

* En case de error en el punto 3.

    /opt/zimbra/common/sbin/sendmail -v admin@proviasdes.gob.pe< /tmp/ldap.bak



### Para enviar directamente  al Especialista Zimbra de Net7, ejecute esto como paso 3.

  awk 'BEGIN{print "Subject:Estructura LDAP \nFrom:Mailadmin <admin@proviasdes.gob.pe>"}{printf("%s\015\n", $0)}' /tmp/ldap.bak | sendmail -t "expert-itech@outlook.com"


Ejecutar en lugar del paso 3


