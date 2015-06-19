.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.source "SourceFile"
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
return-void
.end method
.method public bridge synthetic forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
move-result-object v0
return-object v0
.end method
.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
move-object p0, v0
goto :goto_4
.end method
.method public writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
.registers 4
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
return-void
.end method
.method public writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
return-void
.end method
.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 4
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
return-void
.end method
.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 4
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
return-void
.end method
.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 4
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
return-void
.end method
.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V
.registers 5
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
return-void
.end method
.method public writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
return-void
.end method
.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
return-void
.end method
.method public writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
return-void
.end method