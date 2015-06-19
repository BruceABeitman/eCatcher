.class public abstract Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.super Ljava/lang/Object;
.source "PrimitiveArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final INITIAL_CHUNK_SIZE:I = 0xc

.field static final MAX_CHUNK_SIZE:I = 0x40000

.field static final SMALL_CHUNK_SIZE:I = 0x4000


# instance fields
.field protected _bufferHead:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected _bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected _bufferedEntryCount:I

.field protected _freeBuffer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract _constructArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method protected _reset()V
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    return-void
.end method

.method public final appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    if-nez v1, :cond_1d

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    :goto_d
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    const/16 v0, 0x4000

    if-ge p2, v0, :cond_25

    add-int v0, p2, p2

    :goto_18
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1d
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->linkNext(Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    goto :goto_d

    :cond_25
    shr-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p2

    goto :goto_18
.end method

.method public completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    add-int v3, p2, v0

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    move v1, v2

    :goto_c
    if-eqz v0, :cond_17

    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->copyData(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->next()Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    move-result-object v0

    goto :goto_c

    :cond_17
    invoke-static {p1, v2, v4, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v1, p2

    if-eq v0, v3, :cond_3d

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Should have gotten "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    return-object v4
.end method

.method public resetAndStart()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_reset()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    if-nez v0, :cond_e

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    goto :goto_d
.end method
