.class public final Lorg/codehaus/jackson/io/MergedStream;
.super Ljava/io/InputStream;


# instance fields
.field _buffer:[B

.field protected final _context:Lorg/codehaus/jackson/io/IOContext;

.field final _end:I

.field final _in:Ljava/io/InputStream;

.field _ptr:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/io/MergedStream;->_context:Lorg/codehaus/jackson/io/IOContext;

    iput-object p2, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    iput p4, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    iput p5, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    return-void
.end method

.method private freeMergedBuffer()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_c
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

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

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

    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    :cond_9
    return-void
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

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

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_19

    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    :cond_19
    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

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

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/MergedStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_21

    iget v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_28

    :goto_b
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_20

    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    :cond_20
    :goto_20
    return v0

    :cond_21
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_20

    :cond_28
    move v0, p3

    goto :goto_b
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_9
    return-void
.end method

.method public skip(J)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_30

    iget v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-lez v1, :cond_18

    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    int-to-long v0, v0

    :cond_17
    :goto_17
    return-wide v0

    :cond_18
    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    int-to-long v1, v0

    add-long/2addr v1, v5

    int-to-long v3, v0

    sub-long v3, p1, v3

    move-wide v7, v1

    move-wide v0, v7

    move-wide v9, v3

    move-wide v2, v9

    :goto_24
    cmp-long v4, v2, v5

    if-lez v4, :cond_17

    iget-object v4, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_17

    :cond_30
    move-wide v0, v5

    move-wide v2, p1

    goto :goto_24
.end method
