.class public final Lcom/fasterxml/jackson/core/io/MergedStream;
.super Ljava/io/InputStream;
.source "MergedStream.java"


# instance fields
.field _buffer:[B

.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field final _end:I

.field final _in:Ljava/io/InputStream;

.field _ptr:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    iput p4, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    iput p5, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    return-void
.end method

.method private freeMergedBuffer()V
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_10
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_9
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->freeMergedBuffer()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    :cond_9
    return-void
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_19

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->freeMergedBuffer()V

    :cond_19
    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_19
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/io/MergedStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_c

    move p3, v0

    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->freeMergedBuffer()V

    :cond_21
    :goto_21
    return p3

    :cond_22
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    goto :goto_21
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_9
    return-void
.end method

.method public skip(J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int v4, v0, v1

    int-to-long v0, v4

    cmp-long v0, v0, p1

    if-lez v0, :cond_18

    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    :goto_17
    return-wide p1

    :cond_18
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->freeMergedBuffer()V

    int-to-long v0, v4

    add-long/2addr v0, v2

    int-to-long v4, v4

    sub-long/2addr p1, v4

    :goto_1f
    cmp-long v2, p1, v2

    if-lez v2, :cond_2a

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_2a
    move-wide p1, v0

    goto :goto_17

    :cond_2c
    move-wide v0, v2

    goto :goto_1f
.end method
