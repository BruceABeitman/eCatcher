.class public Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers;
.super Lcom/fasterxml/jackson/databind/deser/Deserializers$Base;
.source "CoreXMLDeserializers.java"
.field static final _dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;
.method static constructor <clinit>()V
.registers 2
:try_start_0
invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers;->_dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;
:try_end_6
.catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_6} :catch_7
return-void
:catch_7
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/Deserializers$Base;-><init>()V
return-void
.end method
.method public findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Ljavax/xml/namespace/QName;
if-ne v0, v1, :cond_b
sget-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;->instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;
:goto_a
return-object v0
:cond_b
const-class v1, Ljavax/xml/datatype/XMLGregorianCalendar;
if-ne v0, v1, :cond_12
sget-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;->instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;
goto :goto_a
:cond_12
const-class v1, Ljavax/xml/datatype/Duration;
if-ne v0, v1, :cond_19
sget-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;->instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;
goto :goto_a
:cond_19
const/4 v0, 0x0
goto :goto_a
.end method