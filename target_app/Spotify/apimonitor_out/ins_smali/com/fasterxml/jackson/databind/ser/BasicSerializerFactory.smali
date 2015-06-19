.class public abstract Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.super Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field protected static final _concrete:Ljava/util/HashMap; = null
.field protected static final _concreteLazy:Ljava/util/HashMap; = null
.field private static final serialVersionUID:J = -0x13a8d63a26390094L
.field protected final _factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
.field protected optionalHandlers:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
.method static constructor <clinit>()V
.registers 5
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v1, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v2, Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v2, Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v2, Ljava/lang/Character;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers;->addAll(Ljava/util/Map;)V
sget-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;
const/4 v3, 0x1
invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(Z)V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;
const/4 v3, 0x0
invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(Z)V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;-><init>()V
sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v2, Ljava/math/BigInteger;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v2, Ljava/math/BigDecimal;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v1, Ljava/util/Calendar;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v2, Ljava/util/Date;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v2, Ljava/sql/Timestamp;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v1, Ljava/sql/Date;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
const-class v1, Ljava/sql/Time;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/SqlTimeSerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/SqlTimeSerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;-><init>()V
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->provide()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_e0
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_13a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
instance-of v3, v1, Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v3, :cond_107
sget-object v3, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
move-object v0, v1
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_e0
:cond_107
instance-of v3, v1, Ljava/lang/Class;
if-eqz v3, :cond_11d
check-cast v1, Ljava/lang/Class;
sget-object v3, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_e0
:cond_11d
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Internal error: unrecognized value of type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_13a
sget-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;
const-class v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const-class v2, Lcom/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/SerializerFactory;-><init>()V
sget-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->optionalHandlers:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
if-nez p1, :cond_e
new-instance p1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
invoke-direct {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>()V
:cond_e
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
return-void
.end method
.method protected static modifySecondaryTypesByAnnotation(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 9
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v2
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z
move-result v1
if-eqz v1, :cond_49
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v2, p1, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
move-result-object v3
if-eqz v3, :cond_3b
instance-of v1, p2, Lcom/fasterxml/jackson/databind/type/MapType;
if-nez v1, :cond_33
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Illegal key-type annotation: type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is not a Map type"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_33
:try_start_33
move-object v0, p2
check-cast v0, Lcom/fasterxml/jackson/databind/type/MapType;
move-object v1, v0
invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/type/MapType;->widenKey(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
:try_end_3a
.catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_3a} :catch_4a
move-result-object p2
:cond_3b
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v2, p1, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_49
:try_start_45
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JavaType;->widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
:try_end_48
.catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_48} :catch_7c
move-result-object p2
:cond_49
return-object p2
:catch_4a
move-exception v1
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed to narrow key type "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " with key-type annotation ("
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "): "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:catch_7c
move-exception v2
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed to narrow content type "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " with content-type annotation ("
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "): "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method protected _findContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method protected _findKeySerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method protected buildArraySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 14
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_8
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/ser/Serializers;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p5
move-object v5, p6
invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findArraySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-eqz v0, :cond_8
:cond_1f
:goto_1f
return-object v0
:cond_20
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getRawClass()Ljava/lang/Class;
move-result-object v0
if-eqz p6, :cond_2c
invoke-static {p6}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_39
:cond_2c
const-class v1, [Ljava/lang/String;
if-ne v1, v0, :cond_33
sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;
goto :goto_1f
:cond_33
invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->findStandardImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_1f
:cond_39
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-direct {v0, v1, p4, p5, p6}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
goto :goto_1f
.end method
.method protected buildCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 9
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getRawClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/util/EnumSet;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_1c
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z
move-result v1
if-nez v1, :cond_17
const/4 v0, 0x0
:cond_17
invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdContainerSerializers;->enumSetSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->isIndexedList(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_42
const-class v0, Ljava/lang/String;
if-ne v1, v0, :cond_39
if-eqz p6, :cond_36
invoke-static {p6}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_39
:cond_36
sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;
goto :goto_1b
:cond_39
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-static {v0, p4, p5, p6}, Lcom/fasterxml/jackson/databind/ser/std/StdContainerSerializers;->indexedListSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
move-result-object v0
goto :goto_1b
:cond_42
const-class v0, Ljava/lang/String;
if-ne v1, v0, :cond_51
if-eqz p6, :cond_4e
invoke-static {p6}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_51
:cond_4e
sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;
goto :goto_1b
:cond_51
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-static {v0, p4, p5, p6}, Lcom/fasterxml/jackson/databind/ser/std/StdContainerSerializers;->collectionSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
move-result-object v0
goto :goto_1b
.end method
.method protected buildContainerSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 22
invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v3
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
move-object/from16 v0, p0
invoke-virtual {v0, v3, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
move-result-object v8
if-eqz v8, :cond_101
const/4 v6, 0x0
:goto_11
invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v2
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v9
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z
move-result v2
if-eqz v2, :cond_6d
move-object/from16 v2, p2
check-cast v2, Lcom/fasterxml/jackson/databind/type/MapLikeType;
invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v4
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findKeySerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v7
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->isTrueMapType()Z
move-result v4
if-eqz v4, :cond_45
move-object v4, v2
check-cast v4, Lcom/fasterxml/jackson/databind/type/MapType;
move-object/from16 v2, p0
move-object/from16 v5, p3
invoke-virtual/range {v2 .. v9}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildMapSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
:goto_44
return-object v2
:cond_45
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;
move-result-object v2
invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_4d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_6b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Lcom/fasterxml/jackson/databind/ser/Serializers;
move-object/from16 v12, p2
check-cast v12, Lcom/fasterxml/jackson/databind/type/MapLikeType;
move-object v11, v3
move-object/from16 v13, p3
move-object v14, v7
move-object v15, v8
move-object/from16 v16, v9
invoke-interface/range {v10 .. v16}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findMapLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
if-eqz v2, :cond_4d
goto :goto_44
:cond_6b
const/4 v2, 0x0
goto :goto_44
:cond_6d
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z
move-result v2
if-eqz v2, :cond_e5
move-object/from16 v2, p2
check-cast v2, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->isTrueCollectionType()Z
move-result v4
if-eqz v4, :cond_bf
move-object v12, v2
check-cast v12, Lcom/fasterxml/jackson/databind/type/CollectionType;
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;
move-result-object v2
invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_88
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_a0
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Lcom/fasterxml/jackson/databind/ser/Serializers;
move-object v11, v3
move-object/from16 v13, p3
move-object v14, v8
move-object v15, v9
invoke-interface/range {v10 .. v15}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
if-eqz v2, :cond_88
goto :goto_44
:cond_a0
const/4 v2, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
move-result-object v2
if-eqz v2, :cond_b1
invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
move-result-object v2
sget-object v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
if-eq v2, v4, :cond_e5
:cond_b1
move-object/from16 v10, p0
move-object v11, v3
move-object/from16 v13, p3
move v14, v6
move-object v15, v8
move-object/from16 v16, v9
invoke-virtual/range {v10 .. v16}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
goto :goto_44
:cond_bf
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;
move-result-object v2
invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_c7
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_e2
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/fasterxml/jackson/databind/ser/Serializers;
move-object/from16 v6, p2
check-cast v6, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
move-object v5, v3
move-object/from16 v7, p3
invoke-interface/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findCollectionLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
if-eqz v2, :cond_c7
goto/16 :goto_44
:cond_e2
const/4 v2, 0x0
goto/16 :goto_44
:cond_e5
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z
move-result v2
if-eqz v2, :cond_fe
move-object/from16 v12, p2
check-cast v12, Lcom/fasterxml/jackson/databind/type/ArrayType;
move-object/from16 v10, p0
move-object v11, v3
move-object/from16 v13, p3
move v14, v6
move-object v15, v8
move-object/from16 v16, v9
invoke-virtual/range {v10 .. v16}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildArraySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
goto/16 :goto_44
:cond_fe
const/4 v2, 0x0
goto/16 :goto_44
:cond_101
move/from16 v6, p4
goto/16 :goto_11
.end method
.method protected buildIterableSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 8
const/4 v0, 0x0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
if-nez v0, :cond_b
invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
:cond_b
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
move-result-object v1
invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Z
move-result v2
invoke-static {v0, v2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdContainerSerializers;->iterableSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
move-result-object v0
return-object v0
.end method
.method protected buildIteratorSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 8
const/4 v0, 0x0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
if-nez v0, :cond_b
invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
:cond_b
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
move-result-object v1
invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Z
move-result v2
invoke-static {v0, v2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdContainerSerializers;->iteratorSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
move-result-object v0
return-object v0
.end method
.method protected buildMapSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 16
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_8
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/ser/Serializers;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p5
move-object v5, p6
move-object v6, p7
invoke-interface/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findMapSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-eqz v0, :cond_8
:goto_20
return-object v0
:cond_21
const-class v0, Ljava/util/EnumMap;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_51
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
const/4 v3, 0x0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z
move-result v1
if-eqz v1, :cond_44
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v1
invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/EnumValues;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumValues;
move-result-object v3
:cond_44
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
move v2, p4
move-object v4, p6
move-object v5, p7
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/util/EnumValues;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
goto :goto_20
:cond_51
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
move-result-object v0
move-object v1, p2
move v2, p4
move-object v3, p6
move-object v4, p5
move-object v5, p7
invoke-static/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct([Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
move-result-object v0
goto :goto_20
.end method
.method public createKeySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasKeySerializers()Z
move-result v1
if-nez v1, :cond_a
:cond_9
:goto_9
return-object v0
:cond_a
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->keySerializers()Ljava/lang/Iterable;
move-result-object v2
invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_1c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_9
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/ser/Serializers;
invoke-interface {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-eqz v0, :cond_1c
goto :goto_9
.end method
.method public createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.registers 8
const/4 v0, 0x0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v3
invoke-virtual {v3, p1, v1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
move-result-object v2
if-nez v2, :cond_20
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
move-result-object v1
move-object v2, v1
move-object v1, v0
:goto_1d
if-nez v2, :cond_29
:goto_1f
return-object v0
:cond_20
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
move-result-object v4
invoke-virtual {v4, v1, p1, v3}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Ljava/util/Collection;
move-result-object v1
goto :goto_1d
:cond_29
invoke-interface {v2, p1, p2, v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
move-result-object v0
goto :goto_1f
.end method
.method protected abstract customSerializers()Ljava/lang/Iterable;
.end method
.method protected final findSerializerByAddonType(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 7
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/util/Iterator;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_11
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildIteratorSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_10
return-object v0
:cond_11
const-class v1, Ljava/lang/Iterable;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_1e
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildIterableSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
goto :goto_10
:cond_1e
const-class v1, Ljava/lang/CharSequence;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_29
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
goto :goto_10
:cond_29
const/4 v0, 0x0
goto :goto_10
.end method
.method protected final findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 7
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializable;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;
:goto_e
return-object v0
:cond_f
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v0
if-eqz v0, :cond_2c
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->canOverrideAccessModifiers()Z
move-result v2
if-eqz v2, :cond_22
invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
:cond_22
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
goto :goto_e
:cond_2c
const/4 v0, 0x0
goto :goto_e
.end method
.method protected final findSerializerByLookup(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 11
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v1, :cond_13
:goto_12
return-object v1
:cond_13
sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Class;
if-eqz v1, :cond_4e
:try_start_1d
invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v2
move-object v0, v2
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
move-object v1, v0
:try_end_25
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_26
goto :goto_12
:catch_26
move-exception v2
new-instance v3, Ljava/lang/IllegalStateException;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed to instantiate standard serializer (of type "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "): "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:cond_4e
const/4 v1, 0x0
goto :goto_12
.end method
.method protected final findSerializerByPrimaryType(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 10
const/4 v1, 0x0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
const-class v0, Ljava/net/InetAddress;
invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_10
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/InetAddressSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/InetAddressSerializer;
:cond_f
:goto_f
return-object v0
:cond_10
const-class v0, Ljava/util/TimeZone;
invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_1b
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/TimeZoneSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/TimeZoneSerializer;
goto :goto_f
:cond_1b
const-class v0, Ljava/nio/charset/Charset;
invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_26
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
goto :goto_f
:cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->optionalHandlers:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v3
invoke-virtual {v0, v3, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_f
const-class v0, Ljava/lang/Number;
invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_3d
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;
goto :goto_f
:cond_3d
const-class v0, Ljava/lang/Enum;
invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_5a
invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
move-result-object v0
if-eqz v0, :cond_65
invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
if-ne v3, v4, :cond_65
check-cast p3, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
const-string v0, "declaringClass"
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->removeProperty(Ljava/lang/String;)Z
:cond_5a
const-class v0, Ljava/util/Calendar;
invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_6e
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
goto :goto_f
:cond_65
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v1
invoke-static {v2, v1, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
move-result-object v0
goto :goto_f
:cond_6e
const-class v0, Ljava/util/Date;
invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_79
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
goto :goto_f
:cond_79
move-object v0, v1
goto :goto_f
.end method
.method protected findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
goto :goto_b
.end method
.method protected isIndexedList(Ljava/lang/Class;)Z
.registers 3
const-class v0, Ljava/util/RandomAccess;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
return v0
.end method
.method protected modifyTypeByAnnotation(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 9
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_e
:try_start_a
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
:try_end_d
.catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_13
move-result-object p3
:cond_e
invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->modifySecondaryTypesByAnnotation(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
:catch_13
move-exception v1
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Failed to widen type "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " with concrete-type annotation (value "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "), method \'"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "\': "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method protected usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
if-eqz p3, :cond_5
:goto_4
:cond_4
return v0
:cond_5
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v2
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
move-result-object v2
if-eqz v2, :cond_19
sget-object v3, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
if-ne v2, v3, :cond_4
move v0, v1
goto :goto_4
:cond_19
sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v2
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
.end method