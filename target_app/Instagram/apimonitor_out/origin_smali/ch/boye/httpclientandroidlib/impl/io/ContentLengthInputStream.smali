.class public Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private contentLength:J

.field private in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;J)V
    .registers 7

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    cmp-long v0, p2, v1

    if-gez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    return-void
.end method


# virtual methods
.method public available()I
    .registers 6

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    instance-of v0, v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    check-cast v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/BufferInfo;->length()I

    move-result v0

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public close()V
    .registers 6

    const/4 v4, 0x1

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_19

    :try_start_5
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    const/16 v0, 0x800

    new-array v0, v0, [B

    :cond_11
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->read([B)I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    move-result v1

    if-gez v1, :cond_11

    :cond_17
    iput-boolean v4, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    iput-boolean v4, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    throw v0
.end method

.method public read()I
    .registers 7

    const/4 v0, -0x1

    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_16

    :goto_15
    return v0

    :cond_16
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I

    move-result v1

    if-ne v1, v0, :cond_49

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v4, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_50

    new-instance v0, Lch/boye/httpclientandroidlib/ConnectionClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    :cond_50
    move v0, v1

    goto :goto_15
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10

    const/4 v0, -0x1

    iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_16

    :goto_15
    return v0

    :cond_16
    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_26

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int p3, v1

    :cond_26
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v1, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_59

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v4, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_59

    new-instance v0, Lch/boye/httpclientandroidlib/ConnectionClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    if-lez v1, :cond_61

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    :cond_61
    move v0, v1

    goto :goto_15
.end method

.method public skip(J)J
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    :goto_6
    return-wide v0

    :cond_7
    const/16 v2, 0x800

    new-array v6, v2, [B

    iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v4, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v4, v2

    move-wide v2, v0

    :goto_16
    cmp-long v7, v4, v0

    if-lez v7, :cond_2e

    const/4 v7, 0x0

    const-wide/16 v8, 0x800

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2e

    int-to-long v8, v7

    add-long/2addr v2, v8

    int-to-long v7, v7

    sub-long/2addr v4, v7

    goto :goto_16

    :cond_2e
    move-wide v0, v2

    goto :goto_6
.end method
