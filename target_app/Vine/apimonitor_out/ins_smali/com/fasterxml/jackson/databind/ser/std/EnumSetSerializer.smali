.class public Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;
.source "EnumSetSerializer.java"
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)V
.registers 10
const/4 v4, 0x0
const-class v1, Ljava/util/EnumSet;
const/4 v3, 0x1
move-object v0, p0
move-object v2, p1
move-object v5, p2
move-object v6, v4
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-void
.end method
.method public bridge synthetic _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;->_withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;
move-result-object v0
return-object v0
.end method
.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;
.registers 2
return-object p0
.end method
.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Ljava/util/EnumSet;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;->hasSingleElement(Ljava/util/EnumSet;)Z
move-result v0
return v0
.end method
.method public hasSingleElement(Ljava/util/EnumSet;)Z
.registers 4
const/4 v0, 0x1
invoke-virtual {p1}, Ljava/util/EnumSet;->size()I
move-result v1
if-ne v1, v0, :cond_8
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Ljava/util/EnumSet;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;->isEmpty(Ljava/util/EnumSet;)Z
move-result v0
return v0
.end method
.method public isEmpty(Ljava/util/EnumSet;)Z
.registers 3
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/util/EnumSet;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;->serializeContents(Ljava/util/EnumSet;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public serializeContents(Ljava/util/EnumSet;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;
move-result-object v2
move-object v1, v0
:goto_7
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Enum;
if-nez v1, :cond_1f
invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;
move-result-object v1
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p3, v1, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v1
:cond_1f
invoke-virtual {v1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_7
:cond_23
return-void
.end method
.method public bridge synthetic withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;
move-result-object v0
return-object v0
.end method
.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-object v0
.end method