.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.source "AsExternalTypeSerializer.java"


# instance fields
.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final _writeArrayPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    return-void
.end method

.method protected final _writeArraySuffix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final _writeObjectPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    return-void
.end method

.method protected final _writeObjectSuffix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final _writeScalarPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 3

    return-void
.end method

.method protected final _writeScalarSuffix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;

    move-result-object v0

    return-object v0
.end method

.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_4
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeCustomTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeArrayPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeObjectPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeCustomTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeScalarPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeCustomTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeArraySuffix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V

    return-void
.end method

.method public writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeObjectSuffix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V

    return-void
.end method

.method public writeCustomTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeScalarSuffix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeArrayPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/a/h;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeArrayPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeObjectPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/a/h;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeObjectPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeScalarPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/a/h;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeScalarPrefix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeArraySuffix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V

    return-void
.end method

.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeObjectSuffix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V

    return-void
.end method

.method public writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;->_writeScalarSuffix(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V

    return-void
.end method
