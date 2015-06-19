.class public Lorg/apache/commons/io/output/CountingOutputStream;
.super Lorg/apache/commons/io/output/ProxyOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getByteCount()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/CountingOutputStream;->getByteCount()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2e
    long-to-int v2, v0

    monitor-exit p0

    return v2
.end method

.method public declared-synchronized resetByteCount()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetCount()I
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/io/output/CountingOutputStream;->resetByteCount()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2e
    long-to-int v2, v0

    monitor-exit p0

    return v2
.end method

.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    invoke-super {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    invoke-super {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->write([BII)V

    return-void
.end method
