.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
.source "AsPropertyTypeSerializer.java"
.field protected final _typePropertyName:Ljava/lang/String;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;
return-void
.end method
.method public bridge synthetic forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;
move-result-object v0
return-object v0
.end method
.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;
invoke-direct {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V
move-object p0, v0
goto :goto_4
.end method
.method public getPropertyName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;
return-object v0
.end method
.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
return-object v0
.end method
.method public writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
.registers 5
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;
invoke-virtual {p2, v0, p3}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/String;)V
.registers 4
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
return-void
.end method
.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
.registers 5
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Ljava/lang/Class;)V
.registers 6
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->_typePropertyName:Ljava/lang/String;
invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
.registers 3
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
return-void
.end method