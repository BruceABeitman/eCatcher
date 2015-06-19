.class public final Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
.super Ljava/lang/Object;
.source "ObjectBuffer.java"
.field static final INITIAL_CHUNK_SIZE:I = 0xc
.field static final MAX_CHUNK_SIZE:I = 0x40000
.field static final SMALL_CHUNK_SIZE:I = 0x4000
.field private _bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
.field private _bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
.field private _bufferedEntryCount:I
.field private _freeBuffer:[Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected final _copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V
.registers 10
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
move v1, v2
:goto_4
if-eqz v0, :cond_14
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;
move-result-object v3
array-length v4, v3
invoke-static {v3, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/2addr v1, v4
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->next()Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
move-result-object v0
goto :goto_4
:cond_14
invoke-static {p3, v2, p1, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int v0, v1, p4
if-eq v0, p2, :cond_3a
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Should have gotten "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
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
:cond_3a
return-void
.end method
.method protected final _reset()V
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;
:cond_c
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I
return-void
.end method
.method public final appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;-><init>([Ljava/lang/Object;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
if-nez v1, :cond_1b
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
:goto_d
array-length v0, p1
iget v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I
add-int/2addr v1, v0
iput v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I
const/16 v1, 0x4000
if-ge v0, v1, :cond_23
add-int/2addr v0, v0
:goto_18
new-array v0, v0, [Ljava/lang/Object;
return-object v0
:cond_1b
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->linkNext(Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
goto :goto_d
:cond_23
shr-int/lit8 v1, v0, 0x2
add-int/2addr v0, v1
goto :goto_18
.end method
.method public final bufferedSize()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I
return v0
.end method
.method public final completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V
.registers 10
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
move-object v2, v1
:goto_4
if-eqz v2, :cond_1c
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;
move-result-object v3
array-length v4, v3
move v1, v0
:goto_c
if-ge v1, v4, :cond_16
aget-object v5, v3, v1
invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_16
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->next()Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
move-result-object v1
move-object v2, v1
goto :goto_4
:goto_1c
:cond_1c
if-ge v0, p2, :cond_26
aget-object v1, p1, v0
invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_26
return-void
.end method
.method public final completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;
.registers 5
iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I
add-int/2addr v0, p2
new-array v1, v0, [Ljava/lang/Object;
invoke-virtual {p0, v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V
return-object v1
.end method
.method public final completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
.registers 6
iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I
add-int v1, p2, v0
invoke-static {p3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
invoke-virtual {p0, v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V
return-object v0
.end method
.method public final initialCapacity()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;
array-length v0, v0
goto :goto_5
.end method
.method public final resetAndStart()[Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;
if-nez v0, :cond_c
const/16 v0, 0xc
new-array v0, v0, [Ljava/lang/Object;
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;
goto :goto_b
.end method