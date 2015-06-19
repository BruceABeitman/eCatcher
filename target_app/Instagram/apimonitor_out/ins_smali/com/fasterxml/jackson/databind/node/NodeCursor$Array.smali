.class public final Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;
.super Lcom/fasterxml/jackson/databind/node/NodeCursor;
.source "NodeCursor.java"
.field protected _contents:Ljava/util/Iterator;
.field protected _currentNode:Lcom/fasterxml/jackson/databind/JsonNode;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;
return-void
.end method
.method public final currentHasChildren()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/node/ContainerNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->size()I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;
return-object v0
.end method
.method public final endToken()Lcom/fasterxml/jackson/a/r;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
return-object v0
.end method
.method public final bridge synthetic getParent()Lcom/fasterxml/jackson/a/q;
.registers 2
invoke-super {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;
move-result-object v0
return-object v0
.end method
.method public final nextToken()Lcom/fasterxml/jackson/a/r;
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_c
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
goto :goto_b
.end method
.method public final nextValue()Lcom/fasterxml/jackson/a/r;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
return-object v0
.end method