.class public Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers;
.super Ljava/lang/Object;
.source "JacksonDeserializers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    const/4 v1, 0x0

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static find(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-ne p0, v0, :cond_7

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;

    :goto_6
    return-object v0

    :cond_7
    const-class v0, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .registers 4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/a/j;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JsonLocationInstantiator;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JsonLocationInstantiator;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
