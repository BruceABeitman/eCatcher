.class public final Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;
.super Lcom/fasterxml/jackson/databind/node/NodeCursor;
.source "NodeCursor.java"
.field protected _done:Z
.field protected _node:Lcom/fasterxml/jackson/databind/JsonNode;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_done:Z
iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/fasterxml/jackson/databind/JsonNode;
return-void
.end method
.method public final currentHasChildren()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/fasterxml/jackson/databind/JsonNode;
return-object v0
.end method
.method public final endToken()Lcom/fasterxml/jackson/a/r;
.registers 2
const/4 v0, 0x0
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
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_done:Z
if-nez v1, :cond_f
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_done:Z
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
:goto_e
return-object v0
:cond_f
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/fasterxml/jackson/databind/JsonNode;
goto :goto_e
.end method
.method public final nextValue()Lcom/fasterxml/jackson/a/r;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
return-object v0
.end method
.method public final overrideCurrentName(Ljava/lang/String;)V
.registers 2
return-void
.end method