.class public Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/utils/BytesBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesBuffer"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public offset:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    return-void
.end method

.method synthetic constructor <init>(ILcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public readFrom(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->readFrom(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/InputStream;)V

    return-void
.end method

.method public readFrom(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/InputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iput v4, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I

    iput v4, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I

    :try_start_5
    iget-object v4, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v4

    :cond_8
    :goto_8
    const/16 v4, 0x1000

    iget v5, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I

    sub-int v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    iget v5, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I

    invoke-virtual {p2, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_22

    invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_46

    move-result v4

    if-eqz v4, :cond_26

    :cond_22
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void

    :cond_26
    :try_start_26
    iget v4, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I

    iget v4, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I

    if-ne v4, v0, :cond_8

    iget-object v4, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [B

    iget-object v4, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    array-length v7, v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    iget-object v4, p0, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v4
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_46

    goto :goto_8

    :catchall_46
    move-exception v4

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw v4
.end method
