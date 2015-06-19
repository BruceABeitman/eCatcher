.class public Lcom/fasterxml/jackson/databind/node/ArrayNode;
.super Lcom/fasterxml/jackson/databind/node/ContainerNode;
.source "ArrayNode.java"
.field private final _children:Ljava/util/List;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
.registers 3
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
return-void
.end method
.method protected _add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method protected _at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->getMatchingIndex()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method protected _childrenEqual(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Z
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected _insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 5
if-gez p1, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
:goto_8
return-object p0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lt p1, v0, :cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_8
:cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
goto :goto_8
.end method
.method public add(D)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
return-object v0
.end method
.method public add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
return-object v0
.end method
.method public add(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
return-object p0
.end method
.method public add(J)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
return-object v0
.end method
.method public add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 2
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object p1
:cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
return-object p0
.end method
.method public add(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
if-nez p1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public add(Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
if-nez p1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public add(Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
if-nez p1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public add(Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
if-nez p1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public add(Ljava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
if-nez p1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
if-nez p1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public add(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
if-nez p1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public add(Z)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
return-object v0
.end method
.method public add([B)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
if-nez p1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public addAll(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public addAll(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public addArray()Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
return-object v0
.end method
.method public addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
return-object p0
.end method
.method public addObject()Lcom/fasterxml/jackson/databind/node/ObjectNode;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
return-object v0
.end method
.method public addPOJO(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addNull()Lcom/fasterxml/jackson/databind/node/ArrayNode;
:goto_5
return-object p0
:cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
goto :goto_5
.end method
.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method public bridge synthetic deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->deepCopy()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
return-object v0
.end method
.method public deepCopy()Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 5
new-instance v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
iget-object v3, v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_23
return-object v1
.end method
.method public elements()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
const/4 v0, 0x0
if-ne p1, p0, :cond_5
const/4 v0, 0x1
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_4
instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;
if-eqz v1, :cond_4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
check-cast p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;
iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
.end method
.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
return-object v0
.end method
.method public findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_6
check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;
:goto_1a
return-object v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_17
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
move-result-object p2
goto :goto_6
:cond_17
return-object p2
.end method
.method public findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_6
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_17
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
move-result-object p2
goto :goto_6
:cond_17
return-object p2
.end method
.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_17
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
move-result-object p2
goto :goto_6
:cond_17
return-object p2
.end method
.method public bridge synthetic get(I)Lcom/fasterxml/jackson/core/TreeNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic get(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public get(I)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
if-ltz p1, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge p1, v0, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
return v0
.end method
.method public insert(ID)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 5
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
return-object v0
.end method
.method public insert(IF)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
return-object v0
.end method
.method public insert(II)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
return-object p0
.end method
.method public insert(IJ)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 5
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
return-object v0
.end method
.method public insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
if-nez p2, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object p2
:cond_6
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
return-object p0
.end method
.method public insert(ILjava/lang/Boolean;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
if-nez p2, :cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public insert(ILjava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 5
if-nez p2, :cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public insert(ILjava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
if-nez p2, :cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public insert(ILjava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
if-nez p2, :cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
:goto_5
return-object p0
:cond_6
invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
goto :goto_5
.end method
.method public insert(ILjava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 5
if-nez p2, :cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p2}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public insert(ILjava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
if-nez p2, :cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public insert(ILjava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
if-nez p2, :cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public insert(IZ)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
return-object v0
.end method
.method public insert(I[B)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
if-nez p2, :cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public insertArray(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
return-object v0
.end method
.method public insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
return-object p0
.end method
.method public insertObject(I)Lcom/fasterxml/jackson/databind/node/ObjectNode;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
return-object v0
.end method
.method public insertPOJO(ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 4
if-nez p2, :cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->insertNull(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_insert(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_6
.end method
.method public bridge synthetic path(I)Lcom/fasterxml/jackson/core/TreeNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->path(I)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic path(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public path(I)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
if-ltz p1, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge p1, v0, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
:goto_12
return-object v0
:cond_13
invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;
move-result-object v0
goto :goto_12
.end method
.method public path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;
move-result-object v0
return-object v0
.end method
.method public remove(I)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
if-ltz p1, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge p1, v0, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public removeAll()Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-object p0
.end method
.method public bridge synthetic removeAll()Lcom/fasterxml/jackson/databind/node/ContainerNode;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->removeAll()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
return-object v0
.end method
.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
check-cast v0, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_9
:cond_1b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
return-void
.end method
.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 6
invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
check-cast v0, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_9
:cond_1b
invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
return-void
.end method
.method public set(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 6
if-nez p2, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object p2
:cond_6
if-ltz p1, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lt p1, v0, :cond_37
:cond_10
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
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_37
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
return-object v0
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I
move-result v0
shl-int/lit8 v0, v0, 0x4
add-int/lit8 v0, v0, 0x10
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const/16 v0, 0x5b
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v3
move v1, v0
:goto_1a
if-ge v1, v3, :cond_36
if-lez v1, :cond_23
const/16 v0, 0x2c
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_23
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1a
:cond_36
const/16 v0, 0x5d
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method