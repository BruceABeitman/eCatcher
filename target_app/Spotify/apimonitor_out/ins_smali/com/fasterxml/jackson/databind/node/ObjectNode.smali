.class public Lcom/fasterxml/jackson/databind/node/ObjectNode;
.super Lcom/fasterxml/jackson/databind/node/ContainerNode;
.source "SourceFile"
.field protected _children:Ljava/util/Map;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
.registers 3
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
return-void
.end method
.method private final _put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
if-nez v0, :cond_a
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_createMap()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
return-object v0
.end method
.method protected _createMap()Ljava/util/Map;
.registers 2
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
return-object v0
.end method
.method protected _customEquals(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method protected _equals(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_stdEquals(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_customEquals(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_customEquals(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method protected final _stdEquals(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z
.registers 6
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I
move-result v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I
move-result v1
if-eq v0, v1, :cond_d
move v0, v2
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_1b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_41
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
if-eqz v1, :cond_3f
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1b
:cond_3f
move v0, v2
goto :goto_c
:cond_41
const/4 v0, 0x1
goto :goto_c
.end method
.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method public elements()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
if-nez v0, :cond_9
invoke-static {}, Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;->instance()Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
goto :goto_8
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
if-ne p1, p0, :cond_5
const/4 v0, 0x1
:cond_4
:goto_4
return v0
:cond_5
if-eqz p1, :cond_4
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
if-eq v1, v2, :cond_15
instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;
if-eqz v1, :cond_4
:cond_15
check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_equals(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z
move-result v0
goto :goto_4
.end method
.method public fields()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
if-nez v0, :cond_7
sget-object v0, Lcom/fasterxml/jackson/databind/node/ObjectNode$NoFieldsIterator;->instance:Lcom/fasterxml/jackson/databind/node/ObjectNode$NoFieldsIterator;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
goto :goto_6
.end method
.method public get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
if-nez v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->hashCode()I
move-result v0
goto :goto_5
.end method
.method public isObject()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 4
if-nez p2, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object p2
:cond_6
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_11
:cond_30
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
return-void
.end method
.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 7
invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_11
:cond_30
invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
return-void
.end method
.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
if-nez p2, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object p2
:cond_6
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
return-object p0
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
goto :goto_5
.end method
.method public toString()Ljava/lang/String;
.registers 6
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I
move-result v0
shl-int/lit8 v0, v0, 0x4
add-int/lit8 v0, v0, 0x20
invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v0, "{"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
if-eqz v0, :cond_54
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v0
:goto_22
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_54
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
if-lez v1, :cond_35
const-string v2, ","
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_35
add-int/lit8 v2, v1, 0x1
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v3, v1}, Lcom/fasterxml/jackson/databind/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
const/16 v1, 0x3a
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move v1, v2
goto :goto_22
:cond_54
const-string v0, "}"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method