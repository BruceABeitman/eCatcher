.class public Lorg/apache/commons/io/input/SwappedDataInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "SwappedDataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/SwappedDataInputStream;->readByte()B

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public readByte()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/SwappedDataInputStream;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedDouble(Ljava/io/InputStream;)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedFloat(Ljava/io/InputStream;)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/SwappedDataInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    move v2, p3

    :goto_1
    if-lez v2, :cond_16

    sub-int v3, p3, v2

    add-int v1, p2, v3

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/io/input/SwappedDataInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v3, v0, :cond_14

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    :cond_14
    sub-int/2addr v2, v0

    goto :goto_1

    :cond_16
    return-void
.end method

.method public readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported: readLine()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong(Ljava/io/InputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedShort(Ljava/io/InputStream;)S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported: readUTF()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedUnsignedShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public skipBytes(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
