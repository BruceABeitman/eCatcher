.class public final Lorg/codehaus/jackson/node/ArrayNode;
.super Lorg/codehaus/jackson/node/ContainerNode;
.field  _children:Ljava/util/ArrayList;
.method public constructor <init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
.registers 2
invoke-direct {p0, p1}, Lorg/codehaus/jackson/node/ContainerNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
return-void
.end method
.method private _add(Lorg/codehaus/jackson/JsonNode;)V
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
:cond_b
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private _insert(ILorg/codehaus/jackson/JsonNode;)V
.registers 5
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-nez v0, :cond_11
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_10
return-void
:cond_11
if-gez p1, :cond_1a
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
goto :goto_10
:cond_1a
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt p1, v0, :cond_28
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_28
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
goto :goto_10
.end method
.method private _sameChildren(Ljava/util/ArrayList;)Z
.registers 7
const/4 v4, 0x0
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v1
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-eq v0, v1, :cond_f
move v0, v4
:goto_e
return v0
:cond_f
move v2, v4
:goto_10
if-ge v2, v1, :cond_2a
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/codehaus/jackson/JsonNode;
invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v0, v3}, Lorg/codehaus/jackson/JsonNode;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_26
move v0, v4
goto :goto_e
:cond_26
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_10
:cond_2a
const/4 v0, 0x1
goto :goto_e
.end method
.method public _set(ILorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
.registers 6
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-eqz v0, :cond_e
if-ltz p1, :cond_e
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt p1, v0, :cond_35
:cond_e
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Illegal index "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", array size "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_35
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
return-object p0
.end method
.method public add(D)V
.registers 4
invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(D)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public add(F)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(F)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public add(I)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(I)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public add(J)V
.registers 4
invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(J)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public add(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public add(Ljava/math/BigDecimal;)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public add(Lorg/codehaus/jackson/JsonNode;)V
.registers 3
if-nez p1, :cond_a
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;
move-result-object v0
:goto_6
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
:cond_a
move-object v0, p1
goto :goto_6
.end method
.method public add(Z)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public add([B)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->binaryNode([B)Lorg/codehaus/jackson/node/BinaryNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public addArray()Lorg/codehaus/jackson/node/ArrayNode;
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-object v0
.end method
.method public addNull()V
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public addObject()Lorg/codehaus/jackson/node/ObjectNode;
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-object v0
.end method
.method public addPOJO(Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;
move-result-object v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_add(Lorg/codehaus/jackson/JsonNode;)V
return-void
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
check-cast p1, Lorg/codehaus/jackson/node/ArrayNode;
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-nez v0, :cond_24
iget-object v0, p1, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-nez v0, :cond_22
move v0, v3
goto :goto_5
:cond_22
move v0, v2
goto :goto_5
:cond_24
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-direct {p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_sameChildren(Ljava/util/ArrayList;)Z
move-result v0
goto :goto_5
.end method
.method public get(I)Lorg/codehaus/jackson/JsonNode;
.registers 3
if-ltz p1, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
move-object v0, p0
:goto_17
return-object v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getElements()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-nez v0, :cond_9
invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;->instance()Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
goto :goto_8
.end method
.method public hashCode()I
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-nez v0, :cond_6
const/4 v0, 0x1
:cond_5
return v0
:cond_6
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_12
:goto_12
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_5
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
if-eqz p0, :cond_12
invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
move-result v2
xor-int/2addr v0, v2
goto :goto_12
.end method
.method public insert(ID)V
.registers 5
invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(D)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public insert(IF)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(F)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public insert(II)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(I)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public insert(IJ)V
.registers 5
invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(J)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public insert(ILjava/lang/String;)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public insert(ILjava/math/BigDecimal;)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public insert(ILorg/codehaus/jackson/JsonNode;)V
.registers 4
if-nez p2, :cond_a
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;
move-result-object v0
:goto_6
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
:cond_a
move-object v0, p2
goto :goto_6
.end method
.method public insert(IZ)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public insert(I[B)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->binaryNode([B)Lorg/codehaus/jackson/node/BinaryNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public insertArray(I)Lorg/codehaus/jackson/node/ArrayNode;
.registers 3
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-object v0
.end method
.method public insertNull(I)V
.registers 3
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public insertObject(I)Lorg/codehaus/jackson/node/ObjectNode;
.registers 3
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-object v0
.end method
.method public insertPOJO(ILjava/lang/Object;)V
.registers 4
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ArrayNode;->POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;
move-result-object v0
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_insert(ILorg/codehaus/jackson/JsonNode;)V
return-void
.end method
.method public isArray()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public path(I)Lorg/codehaus/jackson/JsonNode;
.registers 3
if-ltz p1, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
move-object v0, p0
:goto_17
return-object v0
:cond_18
invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->getInstance()Lorg/codehaus/jackson/node/MissingNode;
move-result-object v0
goto :goto_17
.end method
.method public path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
.registers 3
invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->getInstance()Lorg/codehaus/jackson/node/MissingNode;
move-result-object v0
return-object v0
.end method
.method public remove(I)Lorg/codehaus/jackson/JsonNode;
.registers 3
if-ltz p1, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_18
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
move-object v0, p0
:goto_17
return-object v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
.registers 5
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-eqz v0, :cond_1f
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_d
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1f
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonNode;
check-cast p0, Lorg/codehaus/jackson/node/BaseJsonNode;
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/BaseJsonNode;->writeTo(Lorg/codehaus/jackson/JsonGenerator;)V
goto :goto_d
:cond_1f
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V
return-void
.end method
.method public set(ILorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
.registers 4
if-nez p2, :cond_b
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;
move-result-object v0
:goto_6
invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->_set(ILorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
move-result-object v0
return-object v0
:cond_b
move-object v0, p2
goto :goto_6
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
goto :goto_5
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->size()I
move-result v0
shl-int/lit8 v0, v0, 0x4
add-int/lit8 v0, v0, 0x10
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const/16 v0, 0x5b
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
if-eqz v0, :cond_3a
const/4 v0, 0x0
iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
move v3, v0
:goto_1e
if-ge v3, v2, :cond_3a
if-lez v3, :cond_27
const/16 v0, 0x2c
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_27
iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/codehaus/jackson/JsonNode;
invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_1e
:cond_3a
const/16 v0, 0x5d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method