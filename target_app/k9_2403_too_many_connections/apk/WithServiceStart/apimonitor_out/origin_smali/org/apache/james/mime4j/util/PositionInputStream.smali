.class public Lorg/apache/james/mime4j/util/PositionInputStream;
.super Ljava/io/InputStream;
.source "PositionInputStream.java"


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private markedPosition:J

.field protected position:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->markedPosition:J

    iput-object p1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

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

    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getPosition()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    return-wide v0
.end method

.method public mark(I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->markedPosition:J

    return-void
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

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

    iget-object v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    :cond_10
    return v0
.end method

.method public read([B)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iget-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    return v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    return v0
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->markedPosition:J

    iput-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    return-void
.end method

.method public skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    return-wide v0
.end method
