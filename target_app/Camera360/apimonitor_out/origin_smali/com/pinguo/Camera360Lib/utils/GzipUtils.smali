.class public Lcom/pinguo/Camera360Lib/utils/GzipUtils;
.super Ljava/lang/Object;
.source "GzipUtils.java"


# static fields
.field static final BUFFERSIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x400

    const/4 v4, 0x0

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-array v1, v5, [B

    :goto_a
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1b

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void

    :cond_1b
    invoke-virtual {v2, v1, v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_a
.end method

.method public static decompress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x400

    const/4 v4, 0x0

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v1, v5, [B

    :goto_a
    invoke-virtual {v2, v1, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_15

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    return-void

    :cond_15
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_a
.end method
