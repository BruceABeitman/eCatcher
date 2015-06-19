.class public Lorg/codehaus/jackson/node/ObjectNode;
.super Lorg/codehaus/jackson/node/ContainerNode;
.field  _children:Ljava/util/LinkedHashMap;
.method public constructor <init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
.registers 3
invoke-direct {p0, p1}, Lorg/codehaus/jackson/node/ContainerNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
return-void
.end method
.method private final _put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-nez v0, :cond_b
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
:cond_b
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
return-object p0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
if-ne p1, p0, :cond_6
move v0, v3
:goto_5
return v0
:cond_6
if-nez p1, :cond_a
move v0, v2
goto :goto_5
:cond_a
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-eq v0, v1, :cond_16
move v0, v2
goto :goto_5
:cond_16
check-cast p1, Lorg/codehaus/jackson/node/ObjectNode;
invoke-virtual {p1}, Lorg/codehaus/jackson/node/ObjectNode;->size()I
move-result v0
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->size()I
move-result v1
if-eq v0, v1, :cond_24
move v0, v2
goto :goto_5
:cond_24
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-eqz v0, :cond_58
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_32
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_58
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/util/Map$Entry;
invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
invoke-virtual {p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
move-result-object v0
if-eqz v0, :cond_56
invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonNode;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_32
:cond_56
move v0, v2
goto :goto_5
:cond_58
move v0, v3
goto :goto_5
.end method
.method public get(I)Lorg/codehaus/jackson/JsonNode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-eqz v0, :cond_e
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
move-object v0, p0
:goto_d
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getElements()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-nez v0, :cond_9
invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;->instance()Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
goto :goto_8
.end method
.method public getFieldNames()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-nez v0, :cond_9
invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;->instance()Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
goto :goto_8
.end method
.method public getFields()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-nez v0, :cond_7
sget-object v0, Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;->instance:Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
goto :goto_6
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-nez v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I
move-result v0
goto :goto_5
.end method
.method public isObject()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public path(I)Lorg/codehaus/jackson/JsonNode;
.registers 3
invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->getInstance()Lorg/codehaus/jackson/node/MissingNode;
move-result-object v0
return-object v0
.end method
.method public path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-eqz v0, :cond_10
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
if-eqz p0, :cond_10
move-object v0, p0
:goto_f
return-object v0
:cond_10
invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->getInstance()Lorg/codehaus/jackson/node/MissingNode;
move-result-object v0
goto :goto_f
.end method
.method public put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
.registers 4
if-nez p2, :cond_b
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;
move-result-object v0
:goto_6
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
move-result-object v0
return-object v0
:cond_b
move-object v0, p2
goto :goto_6
.end method
.method public put(Ljava/lang/String;D)V
.registers 5
invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/node/ObjectNode;->numberNode(D)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-void
.end method
.method public put(Ljava/lang/String;F)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->numberNode(F)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-void
.end method
.method public put(Ljava/lang/String;I)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->numberNode(I)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-void
.end method
.method public put(Ljava/lang/String;J)V
.registers 5
invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/node/ObjectNode;->numberNode(J)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-void
.end method
.method public put(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-void
.end method
.method public put(Ljava/lang/String;Ljava/math/BigDecimal;)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-void
.end method
.method public put(Ljava/lang/String;Z)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-void
.end method
.method public put(Ljava/lang/String;[B)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->binaryNode([B)Lorg/codehaus/jackson/node/BinaryNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-void
.end method
.method public putArray(Ljava/lang/String;)Lorg/codehaus/jackson/node/ArrayNode;
.registers 3
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-object v0
.end method
.method public putNull(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-void
.end method
.method public putObject(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;
.registers 3
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-object v0
.end method
.method public putPOJO(Ljava/lang/String;Ljava/lang/Object;)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
return-void
.end method
.method public remove(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-eqz v0, :cond_e
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
move-object v0, p0
:goto_d
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
.registers 5
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-eqz v0, :cond_30
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_11
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/util/Map$Entry;
invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/node/BaseJsonNode;
invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/node/BaseJsonNode;->serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
goto :goto_11
:cond_30
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V
return-void
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
move-result v0
goto :goto_5
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->size()I
move-result v0
shl-int/lit8 v0, v0, 0x4
add-int/lit8 v0, v0, 0x20
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v0, "{"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
if-eqz v0, :cond_53
const/4 v0, 0x0
iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;
invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_21
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_53
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/util/Map$Entry;
if-lez v0, :cond_34
const-string v3, ","
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_34
add-int/lit8 v3, v0, 0x1
invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v1, v0}, Lorg/codehaus/jackson/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
const/16 v0, 0x3a
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move v0, v3
goto :goto_21
:cond_53
const-string v0, "}"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method