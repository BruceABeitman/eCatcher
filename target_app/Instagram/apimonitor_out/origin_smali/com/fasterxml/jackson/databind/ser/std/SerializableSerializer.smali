.class public Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SerializableSerializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/fasterxml/jackson/databind/JsonSerializable;",
        ">;"
    }
.end annotation


# static fields
.field private static final _mapperReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->_mapperReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const-class v0, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static final declared-synchronized _getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 3

    const-class v1, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->_mapperReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    if-nez v0, :cond_17

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->_mapperReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectAnyFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonAnyFormatVisitor;

    return-void
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v4

    const-string v0, "any"

    if-eqz p2, :cond_7c

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7c

    const-class v0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->schemaType()Ljava/lang/String;

    move-result-object v3

    const-string v1, "##irrelevant"

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v1

    :goto_31
    const-string v5, "##irrelevant"

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_78

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v2

    move-object v0, v3

    :goto_42
    const-string v3, "type"

    invoke-virtual {v4, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_56

    :try_start_49
    const-string v0, "properties"

    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->_getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_56} :catch_66

    :cond_56
    if-eqz v2, :cond_65

    :try_start_58
    const-string v0, "items"

    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->_getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_65} :catch_6f

    :cond_65
    return-object v4

    :catch_66
    move-exception v0

    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const-string v1, "Failed to parse @JsonSerializableSchema.schemaObjectPropertiesDefinition value"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6f
    move-exception v0

    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const-string v1, "Failed to parse @JsonSerializableSchema.schemaItemDefinition value"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    move-object v0, v3

    goto :goto_42

    :cond_7a
    move-object v1, v2

    goto :goto_31

    :cond_7c
    move-object v1, v2

    goto :goto_42
.end method

.method public serialize(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    invoke-interface {p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializable;->serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->serialize(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public final serializeWithType(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 5

    invoke-interface {p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonSerializable;->serializeWithType(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 5

    check-cast p1, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->serializeWithType(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method
