.class public Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;
.source "IterableSerializer.java"
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
.registers 12
const-class v1, Ljava/lang/Iterable;
const/4 v6, 0x0
move-object v0, p0
move-object v2, p1
move v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-void
.end method
.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->_staticTyping:Z
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
return-object v0
.end method
.method public hasSingleElement(Ljava/lang/Iterable;)Z
.registers 4
if-eqz p1, :cond_17
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_17
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_17
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Ljava/lang/Iterable;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->hasSingleElement(Ljava/lang/Iterable;)Z
move-result v0
return v0
.end method
.method public isEmpty(Ljava/lang/Iterable;)Z
.registers 3
if-eqz p1, :cond_c
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Ljava/lang/Iterable;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->isEmpty(Ljava/lang/Iterable;)Z
move-result v0
return v0
.end method
.method public serializeContents(Ljava/lang/Iterable;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 10
const/4 v0, 0x0
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v3
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1d
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
move-object v1, v0
:cond_e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
if-nez v5, :cond_1e
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_17
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_e
:cond_1d
return-void
:cond_1e
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v2, :cond_29
invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
if-ne v2, v0, :cond_2f
move-object v2, v1
:cond_29
:goto_29
if-nez v4, :cond_38
invoke-virtual {v2, v5, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_17
:cond_2f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p3, v2, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v1
move-object v0, v2
move-object v2, v1
goto :goto_29
:cond_38
invoke-virtual {v2, v5, p2, p3, v4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
goto :goto_17
.end method
.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/lang/Iterable;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->serializeContents(Ljava/lang/Iterable;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public bridge synthetic withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;
move-result-object v0
return-object v0
.end method
.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-object v0
.end method