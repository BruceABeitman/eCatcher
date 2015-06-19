.class  Lcom/pinguo/album/exif/OrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "OrderedDataOutputStream.java"
.field private final mByteBuffer:Ljava/nio/ByteBuffer;
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 3
invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
const/4 v0, 0x4
invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;
return-void
.end method
.method public setByteOrder(Ljava/nio/ByteOrder;)Lcom/pinguo/album/exif/OrderedDataOutputStream;
.registers 3
iget-object v0, p0, Lcom/pinguo/album/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
return-object p0
.end method
.method public writeInt(I)Lcom/pinguo/album/exif/OrderedDataOutputStream;
.registers 4
iget-object v0, p0, Lcom/pinguo/album/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
iget-object v0, p0, Lcom/pinguo/album/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
iget-object v0, p0, Lcom/pinguo/album/exif/OrderedDataOutputStream;->out:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/pinguo/album/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
return-object p0
.end method
.method public writeRational(Lcom/pinguo/album/exif/Rational;)Lcom/pinguo/album/exif/OrderedDataOutputStream;
.registers 4
invoke-virtual {p1}, Lcom/pinguo/album/exif/Rational;->getNumerator()J
move-result-wide v0
long-to-int v0, v0
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeInt(I)Lcom/pinguo/album/exif/OrderedDataOutputStream;
invoke-virtual {p1}, Lcom/pinguo/album/exif/Rational;->getDenominator()J
move-result-wide v0
long-to-int v0, v0
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeInt(I)Lcom/pinguo/album/exif/OrderedDataOutputStream;
return-object p0
.end method
.method public writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
.registers 6
iget-object v0, p0, Lcom/pinguo/album/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
iget-object v0, p0, Lcom/pinguo/album/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
iget-object v0, p0, Lcom/pinguo/album/exif/OrderedDataOutputStream;->out:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/pinguo/album/exif/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x2
invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
return-object p0
.end method