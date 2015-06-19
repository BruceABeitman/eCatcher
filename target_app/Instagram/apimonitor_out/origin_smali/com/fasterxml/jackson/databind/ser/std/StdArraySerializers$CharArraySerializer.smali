.class public final Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdArraySerializers.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<[C>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, [C

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final _writeArrayContents(Lcom/fasterxml/jackson/a/h;[C)V
    .registers 6

    const/4 v0, 0x0

    array-length v1, p2

    :goto_2
    if-ge v0, v1, :cond_b

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeString([CII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 5

    if-eqz p1, :cond_d

    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectArrayFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;->itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V

    :cond_d
    return-void
.end method

.method public final getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 7

    const-string v0, "array"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "items"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public final bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->isEmpty([C)Z

    move-result v0

    return v0
.end method

.method public final isEmpty([C)Z
    .registers 3

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->serialize([CLcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public final serialize([CLcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 6

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    invoke-direct {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->_writeArrayContents(Lcom/fasterxml/jackson/a/h;[C)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    :goto_11
    return-void

    :cond_12
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeString([CII)V

    goto :goto_11
.end method

.method public final bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 5

    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->serializeWithType([CLcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public final serializeWithType([CLcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 7

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    invoke-direct {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->_writeArrayContents(Lcom/fasterxml/jackson/a/h;[C)V

    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeString([CII)V

    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    goto :goto_11
.end method
