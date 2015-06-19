.class abstract Lcom/fasterxml/jackson/databind/node/NodeCursor;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "SourceFile"
.field protected _currentName:Ljava/lang/String;
.field protected final _parent:Lcom/fasterxml/jackson/databind/node/NodeCursor;
.method public constructor <init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V
.registers 4
invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>()V
iput p1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_type:I
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_index:I
iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_parent:Lcom/fasterxml/jackson/databind/node/NodeCursor;
return-void
.end method
.method public abstract currentHasChildren()Z
.end method
.method public abstract currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
.end method
.method public abstract endToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method
.method public final getCurrentName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_currentName:Ljava/lang/String;
return-object v0
.end method
.method public final getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_parent:Lcom/fasterxml/jackson/databind/node/NodeCursor;
return-object v0
.end method
.method public final iterateChildren()Lcom/fasterxml/jackson/databind/node/NodeCursor;
.registers 5
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
if-nez v1, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No current node"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z
move-result v0
if-eqz v0, :cond_1a
new-instance v0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;
invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
:goto_19
return-object v0
:cond_1a
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z
move-result v0
if-eqz v0, :cond_26
new-instance v0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;
invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
goto :goto_19
:cond_26
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Current node of type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public abstract nextToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method