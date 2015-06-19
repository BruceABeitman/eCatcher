.class public final Lorg/codehaus/jackson/util/BufferRecycler;
.super Ljava/lang/Object;
.field protected final mByteBuffers:[[B
.field protected final mCharBuffers:[[C
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->values()[Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;
move-result-object v0
array-length v0, v0
new-array v0, v0, [[B
iput-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B
invoke-static {}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->values()[Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;
move-result-object v0
array-length v0, v0
new-array v0, v0, [[C
iput-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C
return-void
.end method
.method private balloc(I)[B
.registers 3
new-array v0, p1, [B
return-object v0
.end method
.method private calloc(I)[C
.registers 3
new-array v0, p1, [C
return-object v0
.end method
.method public allocByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B
.registers 6
invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I
move-result v0
iget-object v1, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B
aget-object v1, v1, v0
if-nez v1, :cond_13
#getter for: Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->size:I
invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->access$000(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)I
move-result v0
invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->balloc(I)[B
move-result-object v0
:goto_12
return-object v0
:cond_13
iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B
const/4 v3, 0x0
aput-object v3, v2, v0
move-object v0, v1
goto :goto_12
.end method
.method public allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C
move-result-object v0
return-object v0
.end method
.method public allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C
.registers 7
#getter for: Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->size:I
invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$100(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I
move-result v0
if-le v0, p2, :cond_23
#getter for: Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->size:I
invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$100(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I
move-result v0
:goto_a
invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I
move-result v1
iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C
aget-object v2, v2, v1
if-eqz v2, :cond_17
array-length v3, v2
if-ge v3, v0, :cond_1c
:cond_17
invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->calloc(I)[C
move-result-object v0
:goto_1b
return-object v0
:cond_1c
iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C
const/4 v3, 0x0
aput-object v3, v0, v1
move-object v0, v2
goto :goto_1b
:cond_23
move v0, p2
goto :goto_a
.end method
.method public releaseByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V
.registers 5
iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B
invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I
move-result v1
aput-object p2, v0, v1
return-void
.end method
.method public releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V
.registers 5
iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C
invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I
move-result v1
aput-object p2, v0, v1
return-void
.end method