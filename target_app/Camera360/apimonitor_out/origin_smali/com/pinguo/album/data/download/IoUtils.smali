.class public final Lcom/pinguo/album/data/download/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/data/download/IoUtils$CopyListener;
    }
.end annotation


# static fields
.field public static final CONTINUE_LOADING_PERCENTAGE:I = 0x4b

.field public static final DEFAULT_BUFFER_SIZE:I = 0x8000


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 2

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/pinguo/album/data/download/IoUtils$CopyListener;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    invoke-static {p0, p1, p2, v0}, Lcom/pinguo/album/data/download/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/pinguo/album/data/download/IoUtils$CopyListener;I)Z

    move-result v0

    return v0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/pinguo/album/data/download/IoUtils$CopyListener;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, p3, [B

    invoke-static {p2, v2, v3}, Lcom/pinguo/album/data/download/IoUtils;->shouldStopLoading(Lcom/pinguo/album/data/download/IoUtils$CopyListener;II)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_e
    :goto_e
    return v4

    :cond_f
    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v1

    invoke-static {p2, v2, v3}, Lcom/pinguo/album/data/download/IoUtils;->shouldStopLoading(Lcom/pinguo/album/data/download/IoUtils$CopyListener;II)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_19
    invoke-virtual {p0, v0, v4, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_e
.end method

.method public static readAndCloseStream(Ljava/io/InputStream;)V
    .registers 4

    const v1, 0x8000

    new-array v0, v1, [B

    :cond_5
    const/4 v1, 0x0

    const v2, 0x8000

    :try_start_9
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_19
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_14

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    invoke-static {p0}, Lcom/pinguo/album/data/download/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_13
    return-void

    :catch_14
    move-exception v1

    invoke-static {p0}, Lcom/pinguo/album/data/download/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_13

    :catchall_19
    move-exception v1

    invoke-static {p0}, Lcom/pinguo/album/data/download/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static shouldStopLoading(Lcom/pinguo/album/data/download/IoUtils$CopyListener;II)Z
    .registers 6

    if-eqz p0, :cond_11

    invoke-interface {p0, p1, p2}, Lcom/pinguo/album/data/download/IoUtils$CopyListener;->onBytesCopied(II)Z

    move-result v0

    if-nez v0, :cond_11

    mul-int/lit8 v1, p1, 0x64

    div-int/2addr v1, p2

    const/16 v2, 0x4b

    if-ge v1, v2, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method
