.class public final Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;
.super Lcom/fasterxml/jackson/databind/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RootValue"
.end annotation


# instance fields
.field protected _done:Z

.field protected _node:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_done:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/fasterxml/jackson/databind/JsonNode;

    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public endToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .registers 2

    invoke-super {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_done:Z

    if-nez v1, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_done:Z

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_e
.end method

.method public nextValue()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public overrideCurrentName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
