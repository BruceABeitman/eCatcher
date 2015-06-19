.class final Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;
.super Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.source "PrimitiveArrayDeserializers.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final handleNonArray(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)[B
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v2, :cond_1d

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_1c
    return-object v0

    :cond_1d
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_2c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v2, :cond_38

    sget-object v2, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v2, :cond_43

    :cond_38
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getByteValue()B

    move-result v0

    :goto_3c
    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-byte v0, v2, v1

    move-object v0, v2

    goto :goto_1c

    :cond_43
    sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v2, :cond_52

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_52
    move v0, v1

    goto :goto_3c
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public final deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)[B
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_12

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getBase64Variant()Lcom/fasterxml/jackson/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/l;->getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    sget-object v1, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_27

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_11

    :cond_1e
    instance-of v1, v0, [B

    if-eqz v1, :cond_27

    check-cast v0, [B

    check-cast v0, [B

    goto :goto_11

    :cond_27
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;->handleNonArray(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)[B

    move-result-object v0

    goto :goto_11

    :cond_32
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getArrayBuilders()Lcom/fasterxml/jackson/databind/util/ArrayBuilders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getByteBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;->resetAndStart()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move v3, v2

    move-object v4, v0

    :goto_42
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_7b

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_52

    sget-object v1, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_6a

    :cond_52
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getByteValue()B

    move-result v0

    move v1, v0

    :goto_57
    array-length v0, v4

    if-lt v3, v0, :cond_82

    invoke-virtual {v5, v4, v3}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;->appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v3, v0

    move v0, v2

    :goto_62
    add-int/lit8 v4, v0, 0x1

    aput-byte v1, v3, v0

    move v6, v4

    move-object v4, v3

    move v3, v6

    goto :goto_42

    :cond_6a
    sget-object v1, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_79

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_79
    move v1, v2

    goto :goto_57

    :cond_7b
    invoke-virtual {v5, v4, v3}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;->completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_11

    :cond_82
    move v0, v3

    move-object v3, v4

    goto :goto_62
.end method
