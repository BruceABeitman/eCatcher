.class public final Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;
.super Lcom/fasterxml/jackson/databind/node/NodeCursor;
.source "SourceFile"
.field protected _contents:Ljava/util/Iterator;
.field protected _current:Ljava/util/Map$Entry;
.field protected _needEntry:Z
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
.registers 4
const/4 v0, 0x2
invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V
check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_contents:Ljava/util/Iterator;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_needEntry:Z
return-void
.end method
.method public final currentHasChildren()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
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
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
goto :goto_5
.end method
.method public final endToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method public final nextToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_needEntry:Z
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_contents:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_12
iput-object v1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_currentName:Ljava/lang/String;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;
:goto_11
return-object v1
:cond_12
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_needEntry:Z
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_contents:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;
if-nez v0, :cond_29
move-object v0, v1
:goto_24
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_currentName:Ljava/lang/String;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_11
:cond_29
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_24
:cond_32
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_needEntry:Z
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;->_current:Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
goto :goto_11
.end method