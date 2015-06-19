.class public Lorg/apache/james/mime4j/decoder/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"
.field private buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
.field private initialCapacity:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I
new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
return-void
.end method
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I
new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
invoke-direct {v0, p1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V
iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iput p1, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I
return-void
.end method
.method public clear()V
.registers 3
iget v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I
const/4 v1, -0x1
if-eq v0, v1, :cond_f
new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
iget v1, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I
invoke-direct {v0, v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V
iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
:goto_e
return-void
:cond_f
new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
goto :goto_e
.end method
.method public count()I
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
invoke-virtual {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I
move-result v0
return v0
.end method
.method public dequeue()B
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
invoke-virtual {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->remove()B
move-result v0
return v0
.end method
.method public enqueue(B)V
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->add(B)Z
return-void
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
invoke-virtual {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method