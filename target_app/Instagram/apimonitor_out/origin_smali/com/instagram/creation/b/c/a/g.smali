.class public final Lcom/instagram/creation/b/c/a/g;
.super Ljava/lang/Object;
.source "VideoPartEntity.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpEntity;
.implements Lcom/instagram/common/a/f/e;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private final c:I

.field private d:Lcom/instagram/common/a/f/j;


# direct methods
.method public constructor <init>(Ljava/io/File;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/instagram/common/a/f/j;->a:Lcom/instagram/common/a/f/j;

    iput-object v0, p0, Lcom/instagram/creation/b/c/a/g;->d:Lcom/instagram/common/a/f/j;

    iput-object p1, p0, Lcom/instagram/creation/b/c/a/g;->a:Ljava/io/File;

    iput p2, p0, Lcom/instagram/creation/b/c/a/g;->b:I

    iput p3, p0, Lcom/instagram/creation/b/c/a/g;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/f/j;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/b/c/a/g;->d:Lcom/instagram/common/a/f/j;

    return-void
.end method

.method public final consumeContent()V
    .registers 1

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContentEncoding()Lch/boye/httpclientandroidlib/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .registers 3

    iget v0, p0, Lcom/instagram/creation/b/c/a/g;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getContentType()Lch/boye/httpclientandroidlib/Header;
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isChunked()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 10

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/instagram/creation/b/c/a/g;->a:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_9
    iget v0, p0, Lcom/instagram/creation/b/c/a/g;->b:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const/16 v0, 0x1000

    new-array v4, v0, [B

    iget v0, p0, Lcom/instagram/creation/b/c/a/g;->c:I

    iget-object v5, p0, Lcom/instagram/creation/b/c/a/g;->d:Lcom/instagram/common/a/f/j;

    iget v6, p0, Lcom/instagram/creation/b/c/a/g;->b:I

    int-to-long v6, v6

    invoke-interface {v5, v6, v7, v2, v3}, Lcom/instagram/common/a/f/j;->a(JJ)V

    :goto_21
    const/4 v5, 0x0

    const/16 v6, 0x1000

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_48

    if-lez v0, :cond_48

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/instagram/creation/b/c/a/g;->d:Lcom/instagram/common/a/f/j;

    iget v6, p0, Lcom/instagram/creation/b/c/a/g;->b:I

    iget v7, p0, Lcom/instagram/creation/b/c/a/g;->c:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v0

    int-to-long v6, v6

    invoke-interface {v5, v6, v7, v2, v3}, Lcom/instagram/common/a/f/j;->a(JJ)V
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_43

    goto :goto_21

    :catchall_43
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    :cond_48
    :try_start_48
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_43

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method
