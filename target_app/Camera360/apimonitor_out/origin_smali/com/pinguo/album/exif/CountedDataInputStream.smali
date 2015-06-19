.class Lcom/pinguo/album/exif/CountedDataInputStream;
.super Ljava/io/FilterInputStream;
.source "CountedDataInputStream.java"


# instance fields
.field private final mByteArray:[B

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mCount:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteArray:[B

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteArray:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getByteOrder()Ljava/nio/ByteOrder;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public getReadByteCount()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    iget v2, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_f

    const/4 v1, 0x1

    :goto_b
    add-int/2addr v1, v2

    iput v1, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    return v0

    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public read([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iget v2, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_f

    move v1, v0

    :goto_b
    add-int/2addr v1, v2

    iput v1, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    return v0

    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget v2, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_f

    move v1, v0

    :goto_b
    add-int/2addr v1, v2

    iput v1, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    return v0

    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public readInt()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/album/exif/CountedDataInputStream;->readOrThrow([BII)V

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/album/exif/CountedDataInputStream;->readOrThrow([BII)V

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readOrThrow([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/pinguo/album/exif/CountedDataInputStream;->readOrThrow([BII)V

    return-void
.end method

.method public readOrThrow([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/pinguo/album/exif/CountedDataInputStream;->read([BII)I

    move-result v0

    if-eq v0, p3, :cond_c

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_c
    return-void
.end method

.method public readShort()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/album/exif/CountedDataInputStream;->readOrThrow([BII)V

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readOrThrow([B)V

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readOrThrow([B)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public readUnsignedInt()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget v2, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    return-wide v0
.end method

.method public skipOrThrow(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_e
    return-void
.end method

.method public skipTo(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lcom/pinguo/album/exif/CountedDataInputStream;->mCount:I

    int-to-long v0, v4

    sub-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/pinguo/album/exif/CountedDataInputStream;->skipOrThrow(J)V

    return-void
.end method
