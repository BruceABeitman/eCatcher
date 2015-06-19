.class public abstract Lorg/apache/commons/io/input/ProxyInputStream;
.super Ljava/io/FilterInputStream;
.source "ProxyInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    :goto_4
    return v1

    :catch_5
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    const/4 v1, 0x0

    goto :goto_4
.end method

.method protected beforeRead(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_5
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    throw p1
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {p0, v4}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    iget-object v4, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v2, :cond_12

    :goto_e
    invoke-virtual {p0, v3}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_14

    :goto_11
    return v0

    :cond_12
    move v3, v2

    goto :goto_e

    :catch_14
    move-exception v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    move v0, v2

    goto :goto_11
.end method

.method public read([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_10

    :try_start_2
    array-length v2, p1

    :goto_3
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_12

    :goto_f
    return v1

    :cond_10
    const/4 v2, 0x0

    goto :goto_3

    :catch_12
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    const/4 v1, -0x1

    goto :goto_f
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return v1

    :catch_d
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    const/4 v1, -0x1

    goto :goto_c
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    :goto_6
    monitor-exit p0

    return-void

    :catch_8
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_6

    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    :goto_6
    return-wide v1

    :catch_7
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    const-wide/16 v1, 0x0

    goto :goto_6
.end method
