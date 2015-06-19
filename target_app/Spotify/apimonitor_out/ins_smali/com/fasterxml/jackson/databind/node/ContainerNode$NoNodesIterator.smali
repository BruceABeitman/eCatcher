.class public Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;
.field static final instance:Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;->instance:Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static instance()Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;->instance:Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;
return-object v0
.end method
.method public hasNext()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public next()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
.end method
.method public bridge synthetic next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;->next()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public remove()V
.registers 2
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method