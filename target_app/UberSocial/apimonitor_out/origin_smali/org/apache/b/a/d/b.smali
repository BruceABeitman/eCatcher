.class public Lorg/apache/b/a/d/b;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public available()I
    .registers 2

    invoke-direct {p0}, Lorg/apache/b/a/d/b;->b()V

    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    goto :goto_5
.end method

.method public read()I
    .registers 2

    invoke-direct {p0}, Lorg/apache/b/a/d/b;->b()V

    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3

    invoke-direct {p0}, Lorg/apache/b/a/d/b;->b()V

    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    invoke-direct {p0}, Lorg/apache/b/a/d/b;->b()V

    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/b/a/d/b;->b()V

    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 5

    invoke-direct {p0}, Lorg/apache/b/a/d/b;->b()V

    iget-object v0, p0, Lorg/apache/b/a/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
