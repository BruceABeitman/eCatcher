.class public final Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;
.super Lcom/fasterxml/jackson/databind/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Array"
.end annotation


# instance fields
.field protected _contents:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field protected _currentNode:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
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

.method public currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public endToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

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

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_b
.end method

.method public nextValue()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method
