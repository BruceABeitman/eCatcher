.class public Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# instance fields
.field private cache:[B

.field private cachePosition:I

.field private closed:Z

.field private final out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

.field private wroteLastChunk:Z


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;)V
    .registers 3

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->closed:Z

    new-array v0, p2, [B

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->closed:Z

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->finish()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    :cond_f
    return-void
.end method

.method public finish()V
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->flushCache()V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->writeClosingChunk()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    :cond_d
    return-void
.end method

.method public flush()V
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->flushCache()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method protected flushCache()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    if-lez v0, :cond_22

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-interface {v0, v1, v3, v2}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iput v3, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    :cond_22
    return-void
.end method

.method protected flushCacheWithAppend([BII)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-interface {v0, v1, v3, v2}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iput v3, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    return-void
.end method

.method public write(I)V
    .registers 5

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    array-length v1, v1

    if-ne v0, v1, :cond_23

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->flushCache()V

    :cond_23
    return-void
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    array-length v0, v0

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_18

    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->flushCacheWithAppend([BII)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->cachePosition:I

    goto :goto_17
.end method

.method protected writeClosingChunk()V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ChunkedOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    return-void
.end method
