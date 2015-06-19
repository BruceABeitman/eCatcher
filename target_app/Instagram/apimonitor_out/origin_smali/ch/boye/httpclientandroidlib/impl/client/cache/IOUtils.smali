.class Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .registers 2

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/16 v0, 0x800

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method static copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    invoke-static {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 10

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v6, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v0, "w"

    invoke-direct {v7, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_e
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_34

    move-result-object v5

    const-wide/16 v1, 0x0

    :try_start_18
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_25} :catch_2c

    :try_start_25
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catch_2c
    move-exception v1

    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_34} :catch_34

    :catch_34
    move-exception v0

    invoke-static {v6}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v7}, Lch/boye/httpclientandroidlib/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method
