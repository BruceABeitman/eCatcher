.class  Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"
.implements Ljava/util/Iterator;
.field private index:I
.field private lastReturnedIndex:I
.field final synthetic this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
.method constructor <init>(Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;)V
.registers 3
iput-object p1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget v0, v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
iput v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I
const/4 v0, -0x1
iput v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I
return-void
.end method
.method public hasNext()Z
.registers 3
iget v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget v1, v1, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
if-eq v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public next()Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->hasNext()Z
move-result v0
if-nez v0, :cond_c
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
:cond_c
iget v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I
iput v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I
iget-object v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I
#calls: Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->increment(I)I
invoke-static {v0, v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->access$000(Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;I)I
move-result v0
iput v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I
new-instance v0, Ljava/lang/Byte;
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget-object v1, v1, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I
aget-byte v1, v1, v2
invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V
return-object v0
.end method
.method public remove()V
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v4, -0x1
iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I
if-ne v1, v4, :cond_d
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V
throw v1
:cond_d
iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I
iget-object v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget v2, v2, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
if-ne v1, v2, :cond_1d
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->remove()B
iput v4, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I
:goto_1c
return-void
:cond_1d
iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I
add-int/lit8 v0, v1, 0x1
:goto_21
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget v1, v1, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
if-eq v0, v1, :cond_4f
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget-object v1, v1, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
array-length v1, v1
if-lt v0, v1, :cond_3e
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget-object v1, v1, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
sub-int v2, v0, v6
iget-object v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget-object v3, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
aget-byte v3, v3, v5
aput-byte v3, v1, v2
const/4 v0, 0x0
goto :goto_21
:cond_3e
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget-object v1, v1, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
sub-int v2, v0, v6
iget-object v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget-object v3, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
aget-byte v3, v3, v0
aput-byte v3, v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_4f
iput v4, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget-object v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget-object v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget v3, v3, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
#calls: Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->decrement(I)I
invoke-static {v2, v3}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->access$100(Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;I)I
move-result v2
iput v2, v1, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget-object v1, v1, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
iget-object v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget v2, v2, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
aput-byte v5, v1, v2
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I
#calls: Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->decrement(I)I
invoke-static {v1, v2}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->access$100(Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;I)I
move-result v1
iput v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I
goto :goto_1c
.end method