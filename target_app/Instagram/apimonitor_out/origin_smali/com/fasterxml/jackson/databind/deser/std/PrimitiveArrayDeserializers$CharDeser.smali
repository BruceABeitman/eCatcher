.class final Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;
.super Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.source "PrimitiveArrayDeserializers.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers",
        "<[C>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, [C

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)[C

    move-result-object v0

    return-object v0
.end method

.method public final deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)[C
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_1b

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextCharacters()[C

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextLength()I

    move-result v3

    new-array v0, v3, [C

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->isExpectedStartArrayToken()Z

    move-result v1

    if-eqz v1, :cond_75

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_28
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_6c

    sget-object v2, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_3b

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_3b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can not convert a JSON String of length "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into a char element of char array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/a/l;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_64
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_1a

    :cond_75
    sget-object v1, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_ab

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_81

    const/4 v0, 0x0

    goto :goto_1a

    :cond_81
    instance-of v1, v0, [C

    if-eqz v1, :cond_8a

    check-cast v0, [C

    check-cast v0, [C

    goto :goto_1a

    :cond_8a
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_95

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_1a

    :cond_95
    instance-of v1, v0, [B

    if-eqz v1, :cond_ab

    invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;

    move-result-object v1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0, v4}, Lcom/fasterxml/jackson/a/a;->a([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto/16 :goto_1a

    :cond_ab
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method
