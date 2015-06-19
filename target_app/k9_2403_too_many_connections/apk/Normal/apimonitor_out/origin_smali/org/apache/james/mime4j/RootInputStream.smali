.class Lorg/apache/james/mime4j/RootInputStream;
.super Ljava/io/InputStream;
.source "RootInputStream.java"


# instance fields
.field private is:Ljava/io/InputStream;

.field private lineNumber:I

.field private prev:I

.field private truncated:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    iput-object p1, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    :goto_5
    return v1

    :cond_6
    iget-object v1, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    iget v1, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    iget v1, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    :cond_1c
    iput v0, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    move v1, v0

    goto :goto_5
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

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/RootInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v2, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    :goto_5
    return v2

    :cond_6
    iget-object v2, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v0, p2

    :goto_d
    add-int v2, p2, v1

    if-ge v0, v2, :cond_2a

    iget v2, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_23

    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_23

    iget v2, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    :cond_23
    aget-byte v2, p1, v0

    iput v2, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2a
    move v2, v1

    goto :goto_5
.end method

.method public truncate()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    return-void
.end method
