.class public Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    const/4 v1, 0x0

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .registers 4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/core/JsonLocation;

    if-ne v0, v1, :cond_e

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JsonLocationInstantiator;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JsonLocationInstantiator;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
