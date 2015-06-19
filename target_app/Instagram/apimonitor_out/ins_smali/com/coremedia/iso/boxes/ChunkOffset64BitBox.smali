.class public Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;
.super Lcom/coremedia/iso/boxes/ChunkOffsetBox;
.source "ChunkOffset64BitBox.java"
.field public static final TYPE:Ljava/lang/String; = "co64"
.field private chunkOffsets:[J
.method public constructor <init>()V
.registers 2
const-string v0, "co64"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 7
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v1
new-array v0, v1, [J
iput-object v0, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J
const/4 v0, 0x0
:goto_10
if-ge v0, v1, :cond_1d
iget-object v2, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v3
aput-wide v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_1d
return-void
.end method
.method public getChunkOffsets()[J
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J
return-object v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 7
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J
array-length v0, v0
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v1, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J
array-length v2, v1
const/4 v0, 0x0
:goto_e
if-ge v0, v2, :cond_18
aget-wide v3, v1, v0
invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_18
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J
array-length v0, v0
mul-int/lit8 v0, v0, 0x8
add-int/lit8 v0, v0, 0x8
int-to-long v0, v0
return-wide v0
.end method