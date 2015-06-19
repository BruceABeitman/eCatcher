.class public Lcom/fasterxml/jackson/databind/ObjectMapper;
.super Lcom/fasterxml/jackson/a/s;
.source "ObjectMapper.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/x;
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/fasterxml/jackson/databind/AnnotationIntrospector; = null

.field protected static final DEFAULT_BASE:Lcom/fasterxml/jackson/databind/cfg/BaseSettings; = null

.field protected static final DEFAULT_INTROSPECTOR:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector; = null

.field private static final JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType; = null

.field protected static final STD_VISIBILITY_CHECKER:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field

.field protected static final _defaultPrettyPrinter:Lcom/fasterxml/jackson/a/t; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

.field protected _deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

.field protected _injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

.field protected final _jsonFactory:Lcom/fasterxml/jackson/a/e;

.field protected final _mixInAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final _rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

.field protected _serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected _serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

.field protected _serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

.field protected _subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

.field protected _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v4, 0x0

    const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->instance:Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_INTROSPECTOR:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->defaultInstance()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->STD_VISIBILITY_CHECKER:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    new-instance v0, Lcom/fasterxml/jackson/a/g/e;

    invoke-direct {v0}, Lcom/fasterxml/jackson/a/g/e;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_INTROSPECTOR:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    sget-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    sget-object v3, Lcom/fasterxml/jackson/databind/ObjectMapper;->STD_VISIBILITY_CHECKER:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v5

    sget-object v7, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;

    move-result-object v11

    move-object v6, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/a/a;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_BASE:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/a/e;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/e;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/a/e;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/e;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;)V
    .registers 8

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/s;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const v2, 0x3f19999a

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p1, :cond_67

    new-instance v0, Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    :cond_20
    :goto_20
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    new-instance v0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_BASE:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_BASE:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    if-nez p2, :cond_55

    new-instance p2, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    invoke-direct {p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;-><init>()V

    :cond_55
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    if-nez p3, :cond_60

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->instance:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    invoke-direct {p3, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;-><init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)V

    :cond_60
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    return-void

    :cond_67
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/e;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/a/e;->setCodec(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/e;

    goto :goto_20
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .registers 6

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/s;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const v2, 0x3f19999a

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e;->copy()Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/a/e;->setCodec(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/e;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    new-instance v0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    return-void
.end method

.method private final _configAndWriteCloseable(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .registers 9

    move-object v1, p2

    check-cast v1, Ljava/io/Closeable;

    :try_start_3
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_13

    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_26

    const/4 v2, 0x0

    :try_start_f
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_2c

    return-void

    :catchall_13
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_17
    if-eqz p1, :cond_1c

    :try_start_19
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_22

    :cond_1c
    :goto_1c
    if-eqz v2, :cond_21

    :try_start_1e
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_24

    :cond_21
    :goto_21
    throw v1

    :catch_22
    move-exception v3

    goto :goto_1c

    :catch_24
    move-exception v2

    goto :goto_21

    :catchall_26
    move-exception v2

    move-object p1, v0

    move-object v4, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_17

    :catchall_2c
    move-exception v1

    move-object p1, v0

    goto :goto_17
.end method

.method private final _writeCloseableValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .registers 7

    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    :try_start_3
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->flush()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1a

    :cond_15
    const/4 v1, 0x0

    :try_start_16
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_26

    return-void

    :catchall_1a
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_1e
    if-eqz v1, :cond_23

    :try_start_20
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    throw v0

    :catch_24
    move-exception v1

    goto :goto_23

    :catchall_26
    move-exception v0

    goto :goto_1e
.end method

.method public static findModules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->findModules(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findModules(Ljava/lang/ClassLoader;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_21

    const-class v0, Lcom/fasterxml/jackson/databind/Module;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    :goto_d
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/Module;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_21
    const-class v0, Lcom/fasterxml/jackson/databind/Module;

    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    goto :goto_d

    :cond_28
    return-object v1
.end method


# virtual methods
.method protected _checkInvalidCopy(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p1, :cond_37

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed copy(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->version()Lcom/fasterxml/jackson/a/w;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not override copy(); it has to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    return-void
.end method

.method protected final _configAndWriteValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->useDefaultPrettyPrinter()Lcom/fasterxml/jackson/a/h;

    :cond_f
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_1f

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_1f

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteCloseable(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    :goto_1e
    return-void

    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2c

    goto :goto_1e

    :catchall_2c
    move-exception v0

    if-nez v1, :cond_32

    :try_start_2f
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    throw v0

    :catch_33
    move-exception v1

    goto :goto_32
.end method

.method protected final _configAndWriteValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/a/h;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->useDefaultPrettyPrinter()Lcom/fasterxml/jackson/a/h;

    :cond_13
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_23

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_23

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteCloseable(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    :goto_22
    return-void

    :cond_23
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_30

    goto :goto_22

    :catchall_30
    move-exception v0

    if-nez v1, :cond_36

    :try_start_33
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    throw v0

    :catch_37
    move-exception v1

    goto :goto_36
.end method

.method protected _convert(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_19

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_18
    return-object p1

    :cond_19
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/a/s;)V

    :try_start_1e
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_initForReading(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_5a

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    :goto_4b
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4e} :catch_4f

    goto :goto_18

    :catch_4f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5a
    :try_start_5a
    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_62

    sget-object v3, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_64

    :cond_62
    const/4 p1, 0x0

    goto :goto_4b

    :cond_64
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6f} :catch_4f

    move-result-object p1

    goto :goto_4b
.end method

.method protected _defaultPrettyPrinter()Lcom/fasterxml/jackson/a/t;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/a/t;

    return-object v0
.end method

.method protected _findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    if-nez v0, :cond_26

    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not find a deserializer for type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method protected _initForReading(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/r;
    .registers 3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "No content to map due to end-of-input"

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/a/l;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_13
    return-object v0
.end method

.method protected _readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 9

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_initForReading(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v0

    :goto_18
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->clearCurrentToken()V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_48

    :try_start_1b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_4d

    :goto_1e
    return-object v0

    :cond_1f
    :try_start_1f
    sget-object v1, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_27

    sget-object v1, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_18

    :cond_29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->useRootWrapping()Z

    move-result v0

    if-eqz v0, :cond_43

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_unwrapAndDeserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    :cond_43
    invoke-virtual {v5, p1, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_48

    move-result-object v0

    goto :goto_18

    :catchall_48
    move-exception v0

    :try_start_49
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4f

    :goto_4c
    throw v0

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_4c
.end method

.method protected _readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 10

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_initForReading(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_18

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v0

    :goto_14
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->clearCurrentToken()V

    return-object v0

    :cond_18
    sget-object v1, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_20

    sget-object v1, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_22

    :cond_20
    const/4 v0, 0x0

    goto :goto_14

    :cond_22
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->useRootWrapping()Z

    move-result v0

    if-eqz v0, :cond_39

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_unwrapAndDeserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    :cond_39
    invoke-virtual {v5, p2, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method protected _serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->createInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    return-object v0
.end method

.method protected _unwrapAndDeserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getRootName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    invoke-virtual {v0, p4, p3}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/a/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/l;->a()Ljava/lang/String;

    move-result-object v0

    :cond_10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current token not START_OBJECT (needed to unwrap root name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'), but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/a/l;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_3a
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_64

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current token not FIELD_NAME (to contain expected root name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'), but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/a/l;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_64
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Root name \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not match expected (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/a/l;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_96
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p5, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_c7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current token not END_OBJECT (to match wrapper object with root name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'), but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/a/l;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_c7
    return-object v1
.end method

.method protected _verifySchemaType(Lcom/fasterxml/jackson/a/c;)V
    .registers 5

    if-eqz p1, :cond_37

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->canUseSchema(Lcom/fasterxml/jackson/a/c;)Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not use FormatSchema of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/e;->getFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    return-void
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V

    return-void
.end method

.method public acceptJsonFormatVisitor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V

    return-void
.end method

.method public addHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public final addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public canDeserialize(Lcom/fasterxml/jackson/databind/JavaType;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->hasValueDeserializerFor(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    return v0
.end method

.method public canSerialize(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->hasSerializerFor(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public clearProblemHandlers()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withNoProblemHandlers()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public configure(Lcom/fasterxml/jackson/a/i;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/e;->configure(Lcom/fasterxml/jackson/a/i;Z)Lcom/fasterxml/jackson/a/e;

    return-object p0
.end method

.method public configure(Lcom/fasterxml/jackson/a/n;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/e;->configure(Lcom/fasterxml/jackson/a/n;Z)Lcom/fasterxml/jackson/a/e;

    return-object p0
.end method

.method public configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    goto :goto_8
.end method

.method public configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1f

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    new-array v1, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-eqz p2, :cond_2a

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    new-array v1, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    :goto_1c
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0

    :cond_1f
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    new-array v1, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    goto :goto_e

    :cond_2a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    new-array v1, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    goto :goto_1c
.end method

.method public configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    goto :goto_8
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/a/f/b",
            "<*>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_convert(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_convert(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public copy()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    const-class v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_checkInvalidCopy(Ljava/lang/Class;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v0
.end method

.method public bridge synthetic createArrayNode()Lcom/fasterxml/jackson/a/v;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method protected createDeserializationContext(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    invoke-virtual {v0, p2, p1, v1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->createInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createObjectNode()Lcom/fasterxml/jackson/a/v;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public varargs disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public varargs disable(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public disableDefaultTyping()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public enable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public varargs enable(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public varargs enable(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public enableDefaultTyping()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->OBJECT_AND_NON_CONCRETE:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enableDefaultTyping(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public enableDefaultTyping(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enableDefaultTyping(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public enableDefaultTyping(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 6

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)V

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public enableDefaultTypingAsProperty(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 6

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)V

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public findAndRegisterModules()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    invoke-static {}, Lcom/fasterxml/jackson/databind/ObjectMapper;->findModules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModules(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public final findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_5
.end method

.method public generateJsonSchema(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->generateJsonSchema(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object v0
.end method

.method public getDeserializationContext()Lcom/fasterxml/jackson/databind/DeserializationContext;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-object v0
.end method

.method public getFactory()Lcom/fasterxml/jackson/a/e;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    return-object v0
.end method

.method public getJsonFactory()Lcom/fasterxml/jackson/a/e;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    return-object v0
.end method

.method public getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object v0
.end method

.method public getSerializerFactory()Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    return-object v0
.end method

.method public getSerializerProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    return-object v0
.end method

.method public getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    return-object v0
.end method

.method public getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    return-object v0
.end method

.method public getVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/a/f;)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/a/i;)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/a/n;)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    return v0
.end method

.method public final mixInCount()I
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_5
.end method

.method public readTree(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/v;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/fasterxml/jackson/a/v;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v0, 0x0

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    goto :goto_11
.end method

.method public readTree(Ljava/io/File;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v0, :cond_12

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    :cond_12
    return-object v0
.end method

.method public readTree(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v0, :cond_12

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    :cond_12
    return-object v0
.end method

.method public readTree(Ljava/io/Reader;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v0, :cond_12

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    :cond_12
    return-object v0
.end method

.method public readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v0, :cond_12

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    :cond_12
    return-object v0
.end method

.method public readTree(Ljava/net/URL;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v0, :cond_12

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    :cond_12
    return-object v0
.end method

.method public readTree([B)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser([B)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v0, :cond_12

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    :cond_12
    return-object v0
.end method

.method public final readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/a;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/a/f/a;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/a/f/b",
            "<*>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/File;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/fasterxml/jackson/a/f/b;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/File;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/fasterxml/jackson/a/f/b;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lcom/fasterxml/jackson/a/f/b;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/f/b;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Lcom/fasterxml/jackson/a/f/b;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BIILcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/fasterxml/jackson/a/f/b;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/e;->createParser([BII)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BIILcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/e;->createParser([BII)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BIILjava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/e;->createParser([BII)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/fasterxml/jackson/a/f/b;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser([B)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser([B)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLjava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser([B)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/a;)Lcom/fasterxml/jackson/databind/MappingIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/a/f/a;",
            ")",
            "Lcom/fasterxml/jackson/databind/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/MappingIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/a/f/b",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/MappingIterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v4

    new-instance v0, Lcom/fasterxml/jackson/databind/MappingIterator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/MappingIterator;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public readValues(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/MappingIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/a;)Ljava/util/Iterator;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/a;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/util/Iterator;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readValues(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public reader()Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->with(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/a/c;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_verifySchemaType(Lcom/fasterxml/jackson/a/c;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/a/c;Lcom/fasterxml/jackson/databind/InjectableValues;)V

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/a/f/b",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->reader(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    return-object v0
.end method

.method public varargs reader(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 5

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 9

    const/4 v3, 0x0

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/a/c;Lcom/fasterxml/jackson/databind/InjectableValues;)V

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 9

    const/4 v4, 0x0

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v1, p0

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/a/c;Lcom/fasterxml/jackson/databind/InjectableValues;)V

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->reader(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 9

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/a/c;Lcom/fasterxml/jackson/databind/InjectableValues;)V

    return-object v0
.end method

.method public readerWithView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    return-object v0
.end method

.method public registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/Module;->getModuleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Module without defined name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/Module;->version()Lcom/fasterxml/jackson/a/w;

    move-result-object v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Module without defined version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;

    invoke-direct {v0, p0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper$1;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/Module;->setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;)V

    return-object p0
.end method

.method public registerModules(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/Module;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    goto :goto_4

    :cond_14
    return-object p0
.end method

.method public varargs registerModules([Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 5

    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_c

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    return-object p0
.end method

.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V
    .registers 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->registerSubtypes([Ljava/lang/Class;)V

    return-void
.end method

.method public setAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public setAnnotationIntrospectors(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public setBase64Variant(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public setDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public setFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)V
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-void
.end method

.method public setHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public setInjectableValues(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public final setMixInAnnotations(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_36

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_36

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixInAnnotations:Ljava/util/HashMap;

    new-instance v4, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v4, v1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_36
    return-void
.end method

.method public setNodeFactory(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object p0
.end method

.method public setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public setSerializerFactory(Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    return-object p0
.end method

.method public setSerializerProvider(Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    return-object p0
.end method

.method public setSubtypeResolver(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public setTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public setVisibilityChecker(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-void
.end method

.method public treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;

    check-cast p1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/a/s;)V

    return-object v0
.end method

.method public treeToValue(Lcom/fasterxml/jackson/a/v;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/v;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    const-class v0, Ljava/lang/Object;

    if-eq p2, v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-object p1

    :cond_f
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_16
    .catch Lcom/fasterxml/jackson/a/p; {:try_start_0 .. :try_end_16} :catch_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_1a

    move-result-object p1

    goto :goto_e

    :catch_18
    move-exception v0

    throw v0

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/a/s;)V

    :try_start_9
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/v;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_19} :catch_1a

    goto :goto_3

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public version()Lcom/fasterxml/jackson/a/w;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/a/w;

    return-object v0
.end method

.method public writeTree(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .registers 5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->flush()V

    :cond_16
    return-void
.end method

.method public writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->useDefaultPrettyPrinter()Lcom/fasterxml/jackson/a/h;

    :cond_f
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_1f

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_1f

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_writeCloseableValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->flush()V

    goto :goto_1e
.end method

.method public writeValue(Ljava/io/File;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    sget-object v1, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    sget-object v1, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValue(Ljava/io/Writer;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .registers 5

    new-instance v0, Lcom/fasterxml/jackson/a/g/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/e;->_getBufferRecycler()Lcom/fasterxml/jackson/a/g/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/g/d;-><init>(Lcom/fasterxml/jackson/a/g/a;)V

    :try_start_b
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    sget-object v2, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V
    :try_end_16
    .catch Lcom/fasterxml/jackson/a/p; {:try_start_b .. :try_end_16} :catch_1e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_20

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/d;->b()V

    return-object v1

    :catch_1e
    move-exception v0

    throw v0

    :catch_20
    move-exception v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/a/c/k;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/e;->_getBufferRecycler()Lcom/fasterxml/jackson/a/g/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/c/k;-><init>(Lcom/fasterxml/jackson/a/g/a;)V

    :try_start_b
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V
    :try_end_14
    .catch Lcom/fasterxml/jackson/a/p; {:try_start_b .. :try_end_14} :catch_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_1b

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_19
    move-exception v0

    throw v0

    :catch_1b
    move-exception v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public writer()Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/a/c;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_verifySchemaType(Lcom/fasterxml/jackson/a/c;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/a/c;)V

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/a/t;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 5

    if-nez p1, :cond_4

    sget-object p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/a/t;

    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/a/t;)V

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    return-object v0
.end method

.method public varargs writer(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 5

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    return-object v0
.end method

.method public writer(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    return-object v0
.end method

.method public writerWithDefaultPrettyPrinter()Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 5

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_defaultPrettyPrinter()Lcom/fasterxml/jackson/a/t;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/a/t;)V

    return-object v0
.end method

.method public writerWithType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/a/f/b",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v3

    if-nez p1, :cond_e

    move-object v0, v1

    :goto_a
    invoke-direct {v2, p0, v3, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/a/t;)V

    return-object v2

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_a
.end method

.method public writerWithType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 5

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/a/t;)V

    return-object v0
.end method

.method public writerWithType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v3

    if-nez p1, :cond_e

    move-object v0, v1

    :goto_a
    invoke-direct {v2, p0, v3, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/a/t;)V

    return-object v2

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_a
.end method

.method public writerWithView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    return-object v0
.end method
