.class public Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/fasterxml/jackson/databind/util/Provider;
.field static final _serializers:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers;->_serializers:Ljava/util/HashMap;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
sget-object v1, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers;->_serializers:Ljava/util/HashMap;
const-class v2, Ljavax/xml/datatype/Duration;
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers;->_serializers:Ljava/util/HashMap;
const-class v2, Ljavax/xml/datatype/XMLGregorianCalendar;
new-instance v3, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;
invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;-><init>()V
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers;->_serializers:Ljava/util/HashMap;
const-class v2, Ljavax/xml/namespace/QName;
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public provide()Ljava/util/Collection;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLSerializers;->_serializers:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method