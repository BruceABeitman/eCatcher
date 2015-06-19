.class public Lcom/fasterxml/jackson/databind/ser/std/MapProperty;
.super Lcom/fasterxml/jackson/databind/ser/PropertyWriter;
.source "MapProperty.java"
.field protected _key:Ljava/lang/Object;
.field protected _keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field protected _typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.field protected _value:Ljava/lang/Object;
.field protected _valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
return-void
.end method
.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;)V
.registers 2
return-void
.end method
.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 3
return-void
.end method
.method public getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->getName()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_key:Ljava/lang/Object;
instance-of v0, v0, Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_key:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_key:Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method public reset(Ljava/lang/Object;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 5
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_key:Ljava/lang/Object;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_value:Ljava/lang/Object;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_value:Ljava/lang/Object;
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_value:Ljava/lang/Object;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
invoke-virtual {v0, v1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
goto :goto_b
.end method
.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_key:Ljava/lang/Object;
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
if-nez v0, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_value:Ljava/lang/Object;
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_value:Ljava/lang/Object;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
invoke-virtual {v0, v1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
goto :goto_12
.end method
.method public serializeAsOmittedField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canOmitFields()Z
move-result v0
if-nez v0, :cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeOmittedField(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method public serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
return-void
.end method