.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.source "AsWrapperTypeSerializer.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;

    move-result-object v0

    return-object v0
.end method

.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    move-object p0, v0

    goto :goto_4
.end method

.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method

.method public writeCustomTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/a/h;->writeArrayFieldStart(Ljava/lang/String;)V

    return-void
.end method

.method public writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/a/h;->writeObjectFieldStart(Ljava/lang/String;)V

    return-void
.end method

.method public writeCustomTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeCustomTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeCustomTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeArrayFieldStart(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/a/h;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeArrayFieldStart(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeObjectFieldStart(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/a/h;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeObjectFieldStart(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/a/h;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void
.end method

.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void
.end method

.method public writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
    .registers 3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void
.end method
