.class final Lcom/facebook/g/i;
.super Ljava/io/InputStream;
.source "FileLruCache.java"


# instance fields
.field final a:Ljava/io/InputStream;

.field final b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public final mark(I)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .registers 3

    iget-object v0, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_d
    return v0
.end method

.method public final read([B)I
    .registers 5

    iget-object v0, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_e

    iget-object v1, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_e
    return v0
.end method

.method public final read([BII)I
    .registers 6

    iget-object v0, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_d

    iget-object v1, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_d
    return v0
.end method

.method public final declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .registers 11

    const/16 v0, 0x400

    new-array v2, v0, [B

    const-wide/16 v0, 0x0

    :goto_6
    cmp-long v3, v0, p1

    if-gez v3, :cond_1a

    const/4 v3, 0x0

    sub-long v4, p1, v0

    const-wide/16 v6, 0x400

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/g/i;->read([BII)I

    move-result v3

    if-gez v3, :cond_1b

    :cond_1a
    return-wide v0

    :cond_1b
    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_6
.end method
