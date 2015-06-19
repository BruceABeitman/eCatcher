.class  Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"
.field protected buffer:[B
.field protected head:I
.field protected tail:I
.method public constructor <init>()V
.registers 2
const/16 v0, 0x20
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V
return-void
.end method
.method public constructor <init>(I)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-gtz p1, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The size must be greater than 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
add-int/lit8 v0, p1, 0x1
new-array v0, v0, [B
iput-object v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
iput v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
iput v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
return-void
.end method
.method static synthetic access$000(Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;I)I
.registers 3
invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->increment(I)I
move-result v0
return v0
.end method
.method static synthetic access$100(Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;I)I
.registers 3
invoke-direct {p0, p1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->decrement(I)I
move-result v0
return v0
.end method
.method private decrement(I)I
.registers 4
add-int/lit8 p1, p1, -0x1
if-gez p1, :cond_a
iget-object v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
array-length v0, v0
const/4 v1, 0x1
sub-int p1, v0, v1
:cond_a
return p1
.end method
.method private increment(I)I
.registers 3
add-int/lit8 p1, p1, 0x1
iget-object v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
array-length v0, v0
if-lt p1, v0, :cond_8
const/4 p1, 0x0
:cond_8
return p1
.end method
.method public add(B)Z
.registers 9
const/4 v6, 0x1
const/4 v5, 0x0
invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I
move-result v3
add-int/lit8 v3, v3, 0x1
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
array-length v4, v4
if-lt v3, v4, :cond_39
iget-object v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
array-length v3, v3
sub-int/2addr v3, v6
mul-int/lit8 v3, v3, 0x2
add-int/lit8 v3, v3, 0x1
new-array v2, v3, [B
const/4 v1, 0x0
iget v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
:goto_1a
:cond_1a
iget v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
if-eq v0, v3, :cond_33
iget-object v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
aget-byte v3, v3, v0
aput-byte v3, v2, v1
iget-object v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
aput-byte v5, v3, v0
add-int/lit8 v1, v1, 0x1
add-int/lit8 v0, v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
array-length v3, v3
if-ne v0, v3, :cond_1a
const/4 v0, 0x0
goto :goto_1a
:cond_33
iput-object v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
iput v5, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
iput v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
:cond_39
iget-object v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
iget v4, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
aput-byte p1, v3, v4
iget v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
iget v3, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
array-length v4, v4
if-lt v3, v4, :cond_4e
iput v5, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
:cond_4e
return v6
.end method
.method public get()B
.registers 3
invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->isEmpty()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The buffer is already empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v0, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
aget-byte v0, v0, v1
return v0
.end method
.method public isEmpty()Z
.registers 2
invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;
invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;-><init>(Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;)V
return-object v0
.end method
.method public remove()B
.registers 4
invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->isEmpty()Z
move-result v1
if-eqz v1, :cond_e
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "The buffer is already empty"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
aget-byte v0, v1, v2
iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
iget-object v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
array-length v2, v2
if-lt v1, v2, :cond_24
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
:cond_24
return v0
.end method
.method public size()I
.registers 4
const/4 v0, 0x0
iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
if-ge v1, v2, :cond_12
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B
array-length v1, v1
iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
sub-int/2addr v1, v2
iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
add-int v0, v1, v2
:goto_11
return v0
:cond_12
iget v1, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I
iget v2, p0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I
sub-int v0, v1, v2
goto :goto_11
.end method