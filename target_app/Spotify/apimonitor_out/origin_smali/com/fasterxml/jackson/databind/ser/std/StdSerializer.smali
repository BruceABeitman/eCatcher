.class public abstract Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "SourceFile"


# instance fields
.field protected final _handledType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 3

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public handledType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isDefaultSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation
.end method

.method public wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .registers 8

    move-object v0, p2

    :goto_1
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_10
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_17

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_17
    if-eqz p1, :cond_21

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_21
    const/4 v1, 0x1

    :goto_22
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_31

    if-eqz v1, :cond_2c

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-nez v1, :cond_3a

    :cond_2c
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2f
    const/4 v1, 0x0

    goto :goto_22

    :cond_31
    if-nez v1, :cond_3a

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3a

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_3a
    invoke-static {v0, p3, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    move-object v0, p2

    :goto_1
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_10
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_17

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_17
    if-eqz p1, :cond_21

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_21
    const/4 v1, 0x1

    :goto_22
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_31

    if-eqz v1, :cond_2c

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-nez v1, :cond_3a

    :cond_2c
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2f
    const/4 v1, 0x0

    goto :goto_22

    :cond_31
    if-nez v1, :cond_3a

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3a

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_3a
    invoke-static {v0, p3, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method
