.class public abstract Lcom/fasterxml/jackson/databind/node/ContainerNode;
.super Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.source "SourceFile"
.field protected final _nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
return-void
.end method
.method public asText()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public final nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object v0
return-object v0
.end method
.method public abstract size()I
.end method