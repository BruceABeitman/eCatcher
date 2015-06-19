.class public Lboston/Bus/Map/util/StreamCounter;
.super Ljava/io/InputStream;
.source "StreamCounter.java"


# instance fields
.field private final byteSpace:[B

.field private final contentLength:I

.field private final contentLengthMissingString:Ljava/lang/String;

.field private count:I

.field private final prepend:Ljava/lang/String;

.field private final publisher:Lboston/Bus/Map/main/UpdateAsyncTask;

.field private final wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lboston/Bus/Map/main/UpdateAsyncTask;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lboston/Bus/Map/util/StreamCounter;->byteSpace:[B

    iput-object p1, p0, Lboston/Bus/Map/util/StreamCounter;->wrappedStream:Ljava/io/InputStream;

    iput-object p2, p0, Lboston/Bus/Map/util/StreamCounter;->publisher:Lboston/Bus/Map/main/UpdateAsyncTask;

    iput p3, p0, Lboston/Bus/Map/util/StreamCounter;->contentLength:I

    iput-object p4, p0, Lboston/Bus/Map/util/StreamCounter;->contentLengthMissingString:Ljava/lang/String;

    iput-object p5, p0, Lboston/Bus/Map/util/StreamCounter;->prepend:Ljava/lang/String;

    return-void
.end method

.method private publish(I)V
    .registers 8

    const-string v5, "kb"

    const-string v4, " "

    shr-int/lit8 v1, p1, 0xa

    iget v2, p0, Lboston/Bus/Map/util/StreamCounter;->contentLength:I

    if-lez v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lboston/Bus/Map/util/StreamCounter;->prepend:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kb of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lboston/Bus/Map/util/StreamCounter;->contentLength:I

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kb"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_37
    iget-object v2, p0, Lboston/Bus/Map/util/StreamCounter;->publisher:Lboston/Bus/Map/main/UpdateAsyncTask;

    invoke-virtual {v2, v0}, Lboston/Bus/Map/main/UpdateAsyncTask;->publish(Ljava/lang/String;)V

    return-void

    :cond_3d
    iget-object v2, p0, Lboston/Bus/Map/util/StreamCounter;->contentLengthMissingString:Ljava/lang/String;

    if-eqz v2, :cond_67

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lboston/Bus/Map/util/StreamCounter;->prepend:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lboston/Bus/Map/util/StreamCounter;->contentLengthMissingString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lboston/Bus/Map/util/StreamCounter;->prepend:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kb"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lboston/Bus/Map/util/StreamCounter;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lboston/Bus/Map/util/StreamCounter;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/util/StreamCounter;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/util/StreamCounter;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/util/StreamCounter;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/util/StreamCounter;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lboston/Bus/Map/util/StreamCounter;->byteSpace:[B

    invoke-virtual {p0, v1, v2, v3}, Lboston/Bus/Map/util/StreamCounter;->read([BII)I

    move-result v0

    if-ne v0, v3, :cond_f

    iget-object v1, p0, Lboston/Bus/Map/util/StreamCounter;->byteSpace:[B

    aget-byte v1, v1, v2

    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
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

    invoke-virtual {p0, p1, v0, v1}, Lboston/Bus/Map/util/StreamCounter;->read([BII)I

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

    iget-object v1, p0, Lboston/Bus/Map/util/StreamCounter;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget v1, p0, Lboston/Bus/Map/util/StreamCounter;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lboston/Bus/Map/util/StreamCounter;->count:I

    iget v1, p0, Lboston/Bus/Map/util/StreamCounter;->count:I

    invoke-direct {p0, v1}, Lboston/Bus/Map/util/StreamCounter;->publish(I)V

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lboston/Bus/Map/util/StreamCounter;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lboston/Bus/Map/util/StreamCounter;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
