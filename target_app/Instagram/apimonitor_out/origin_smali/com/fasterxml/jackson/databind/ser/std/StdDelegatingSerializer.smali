.class public Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdDelegatingSerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
.implements Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.implements Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;",
        "Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;",
        "Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;"
    }
.end annotation


# instance fields
.field protected final _converter:Lcom/fasterxml/jackson/databind/util/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/Converter",
            "<",
            "Ljava/lang/Object;",
            "*>;"
        }
    .end annotation
.end field

.field protected final _delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _delegateType:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/Converter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/Converter",
            "<**>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/Converter",
            "<",
            "Ljava/lang/Object;",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/Converter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/fasterxml/jackson/databind/util/Converter",
            "<TT;*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-void
.end method

.method protected convertValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;->createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-ne v0, v1, :cond_17

    :cond_16
    :goto_16
    return-object p0

    :cond_17
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->withDelegate(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    move-result-object p0

    goto :goto_16

    :cond_20
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :cond_2e
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->withDelegate(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    move-result-object p0

    goto :goto_16
.end method

.method protected getConverter()Lcom/fasterxml/jackson/databind/util/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/Converter",
            "<",
            "Ljava/lang/Object;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;

    return-object v0
.end method

.method public getDelegatee()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    check-cast v0, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    goto :goto_e
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;Z)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    check-cast v0, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;

    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;Z)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    goto :goto_e
.end method

.method public isEmpty(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :cond_11
    return-void
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/a/h;)V

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_9
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;->_delegateSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method protected withDelegate(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/Converter",
            "<",
            "Ljava/lang/Object;",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    if-eq v0, v1, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sub-class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must override \'withDelegate\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    return-object v0
.end method
