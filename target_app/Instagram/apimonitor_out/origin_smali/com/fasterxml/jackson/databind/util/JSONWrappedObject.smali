.class public Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;
.super Ljava/lang/Object;
.source "JSONWrappedObject.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/JsonSerializable;


# instance fields
.field protected final _prefix:Ljava/lang/String;

.field protected final _serializationType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _suffix:Ljava/lang/String;

.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    if-nez v0, :cond_1c

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/a/h;)V

    :goto_12
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(Ljava/lang/String;)V

    :cond_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_12

    :cond_2c
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_12
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/JSONWrappedObject;->serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
