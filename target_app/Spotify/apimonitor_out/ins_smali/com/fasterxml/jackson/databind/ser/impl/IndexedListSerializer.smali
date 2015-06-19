.class public final Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;
.source "SourceFile"
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 13
const-class v1, Ljava/util/List;
move-object v0, p0
move-object v2, p1
move v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-void
.end method
.method public final _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_staticTyping:Z
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
move-object v3, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-object v0
.end method
.method public final bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->hasSingleElement(Ljava/util/List;)Z
move-result v0
return v0
.end method
.method public final hasSingleElement(Ljava/util/List;)Z
.registers 4
const/4 v0, 0x1
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
if-ne v1, v0, :cond_8
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final bridge synthetic isEmpty(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->isEmpty(Ljava/util/List;)Z
move-result v0
return v0
.end method
.method public final isEmpty(Ljava/util/List;)Z
.registers 3
if-eqz p1, :cond_8
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
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
.method public final bridge synthetic serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->serializeContents(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public final serializeContents(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->serializeContentsUsing(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
:goto_9
:cond_9
return-void
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
if-eqz v0, :cond_12
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->serializeTypedContents(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_9
:cond_12
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v3
if-eqz v3, :cond_9
const/4 v1, 0x0
:try_start_19
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
:goto_1b
if-ge v1, v3, :cond_9
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
if-nez v4, :cond_29
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_26
add-int/lit8 v1, v1, 0x1
goto :goto_1b
:cond_29
invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
if-nez v2, :cond_4a
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z
move-result v2
if-eqz v2, :cond_53
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p3, v2, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {p0, v0, v2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_45
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
move-object v6, v0
move-object v0, v2
move-object v2, v6
:cond_4a
invoke-virtual {v2, v4, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:try_end_4d
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4d} :catch_4e
goto :goto_26
:catch_4e
move-exception v0
invoke-virtual {p0, p3, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
goto :goto_9
:try_start_53
:cond_53
invoke-virtual {p0, v0, v5, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
:try_end_56
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_4e
move-result-object v0
goto :goto_45
.end method
.method public final serializeContentsUsing(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 9
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
if-nez v2, :cond_7
:cond_6
return-void
:cond_7
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
const/4 v0, 0x0
move v1, v0
:goto_b
if-ge v1, v2, :cond_6
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_1a
:try_start_13
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_16
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_b
:cond_1a
if-nez v3, :cond_25
invoke-virtual {p4, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_20
goto :goto_16
:catch_20
move-exception v0
invoke-virtual {p0, p3, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
goto :goto_16
:cond_25
:try_start_25
invoke-virtual {p4, v0, p2, p3, v3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
:try_end_28
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_20
goto :goto_16
.end method
.method public final serializeTypedContents(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 12
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v3
if-nez v3, :cond_7
:goto_6
:cond_6
return-void
:cond_7
const/4 v1, 0x0
:try_start_8
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
:goto_c
if-ge v1, v3, :cond_6
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
if-nez v5, :cond_1a
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_17
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_1a
invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
if-nez v2, :cond_3b
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z
move-result v2
if-eqz v2, :cond_44
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p3, v2, v6}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {p0, v0, v2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_36
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
move-object v7, v0
move-object v0, v2
move-object v2, v7
:cond_3b
invoke-virtual {v2, v5, p2, p3, v4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3e} :catch_3f
goto :goto_17
:catch_3f
move-exception v0
invoke-virtual {p0, p3, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
goto :goto_6
:cond_44
:try_start_44
invoke-virtual {p0, v0, v6, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
:try_end_47
.catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_3f
move-result-object v0
goto :goto_36
.end method
.method public final withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-object v0
.end method
.method public final bridge synthetic withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/AsArraySerializerBase;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;
move-result-object v0
return-object v0
.end method