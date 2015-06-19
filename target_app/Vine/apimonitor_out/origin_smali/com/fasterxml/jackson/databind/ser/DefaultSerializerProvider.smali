.class public abstract Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.super Lcom/fasterxml/jackson/databind/SerializerProvider;
.source "DefaultSerializerProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _objectIdGenerators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected transient _seenObjectIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/SerializerProvider;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;-><init>(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)V

    return-void
.end method


# virtual methods
.method protected _createObjectIdMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    goto :goto_d
.end method

.method protected _serializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, v1, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_b

    return-void

    :catch_9
    move-exception v0

    throw v0

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[no message for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_33
    new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v2, v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A class must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {p2, p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->setProvider(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-void
.end method

.method public cachedSerializersCount()I
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/SerializerCache;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->size()I

    move-result v0

    return v0
.end method

.method public abstract createInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.end method

.method public findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/Map;

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_createObjectIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/Map;

    :cond_a
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;

    if-nez v0, :cond_3b

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;

    move-object v0, v1

    :cond_19
    :goto_19
    if-nez v0, :cond_24

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->newForSerialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;-><init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :goto_2f
    return-object v0

    :cond_30
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    if-eqz v0, :cond_a

    goto :goto_2f

    :cond_3b
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    :goto_43
    if-ge v2, v3, :cond_57

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z

    move-result v4

    if-nez v4, :cond_19

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_43

    :cond_57
    move-object v0, v1

    goto :goto_19
.end method

.method public flushCachedSerializers()V
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/SerializerCache;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->flush()V

    return-void
.end method

.method public generateJsonSchema(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A class must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;

    if-eqz v1, :cond_40

    check-cast v0, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;

    invoke-interface {v0, p0, v2}, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    :goto_19
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_45

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " would not be serialized as a JSON object and therefore has no schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-static {}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->getDefaultSchemaNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    goto :goto_19

    :cond_45
    new-instance v1, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;-><init>(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    return-object v1
.end method

.method public hasSerializerFor(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->hasSerializerFor(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public hasSerializerFor(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_findExplicitUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    :try_end_4
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_1 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_10

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    :goto_8
    return v0

    :catch_9
    move-exception v1

    if-eqz p2, :cond_8

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_8

    :catch_10
    move-exception v1

    if-nez p2, :cond_14

    throw v1

    :cond_14
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getRootName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3f

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/io/SerializedString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    :cond_34
    :goto_34
    :try_start_34
    invoke-virtual {v1, p2, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_4e

    goto :goto_6

    :catch_3d
    move-exception v0

    throw v0

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_47

    const/4 v0, 0x0

    goto :goto_34

    :cond_47
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_34

    :catch_4e
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_77

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[no message for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_77
    new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v2, v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_reportIncompatibleRootType(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    :cond_18
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getRootName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_48

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v2, p3, v3}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/io/SerializedString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-virtual {v1, p2, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_45} :catch_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_45} :catch_57

    goto :goto_6

    :catch_46
    move-exception v0

    throw v0

    :cond_48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_50

    const/4 v0, 0x0

    goto :goto_3d

    :cond_50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_3d

    :catch_57
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_80

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[no message for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_80
    new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v2, v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_serializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_6
    :goto_6
    return-void

    :cond_7
    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_reportIncompatibleRootType(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    :cond_1a
    if-nez p4, :cond_21

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p4

    :cond_21
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getRootName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5c

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    if-nez p3, :cond_53

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/io/SerializedString;

    move-result-object v0

    :goto_44
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    move v0, v1

    :goto_48
    :try_start_48
    invoke-virtual {p4, p2, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_50} :catch_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_50} :catch_6b

    goto :goto_6

    :catch_51
    move-exception v0

    throw v0

    :cond_53
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p3, v2}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/io/SerializedString;

    move-result-object v0

    goto :goto_44

    :cond_5c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_64

    const/4 v0, 0x0

    goto :goto_48

    :cond_64
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_48

    :catch_6b
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_94

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[no message for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_94
    new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v2, v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_9a
    move v0, v1

    goto :goto_48
.end method

.method public serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v1, :cond_f

    check-cast p2, Lcom/fasterxml/jackson/databind/JsonSerializer;

    :goto_a
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_handleResolvable(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_3

    :cond_f
    instance-of v1, p2, Ljava/lang/Class;

    if-nez v1, :cond_3a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned serializer definition of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    check-cast p2, Ljava/lang/Class;

    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq p2, v1, :cond_3

    const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    if-eq p2, v1, :cond_3

    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected Class<JsonSerializer>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v1

    if-nez v1, :cond_87

    :goto_77
    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-object p2, v0

    goto :goto_a

    :cond_87
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->serializerInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_77

    :cond_8e
    move-object p2, v0

    goto/16 :goto_a
.end method
