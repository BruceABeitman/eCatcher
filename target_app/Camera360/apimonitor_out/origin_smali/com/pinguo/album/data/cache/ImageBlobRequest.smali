.class public abstract Lcom/pinguo/album/data/cache/ImageBlobRequest;
.super Ljava/lang/Object;
.source "ImageBlobRequest.java"

# interfaces
.implements Lcom/pinguo/album/AlbumThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/album/AlbumThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mApplication:Lcom/pinguo/album/PGAlbumApp;

.field private mLoadOnlyFromCache:Z

.field private mPath:Lcom/pinguo/album/data/MediaPath;

.field private mTargetSize:I

.field private mTimeModified:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/data/cache/ImageBlobRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/PGAlbumApp;Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;IIZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    iput-object p2, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mPath:Lcom/pinguo/album/data/MediaPath;

    iput p4, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mType:I

    iput p5, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mTargetSize:I

    iput-object p3, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mTimeModified:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mLoadOnlyFromCache:Z

    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mPath:Lcom/pinguo/album/data/MediaPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mTimeModified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_30

    const-string/jumbo v0, "THUMB"

    :goto_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    iget v0, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_39

    const-string/jumbo v0, "MICROTHUMB"

    goto :goto_27

    :cond_39
    const-string/jumbo v0, "?"

    goto :goto_27
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/pinguo/album/AlbumThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v7}, Lcom/pinguo/album/PGAlbumApp;->getBlobImageCacheService()Lcom/pinguo/album/data/cache/BlobCacheService;

    move-result-object v3

    invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/album/data/utils/BytesBufferPool;->get()Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;

    move-result-object v2

    :try_start_11
    iget-object v7, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mPath:Lcom/pinguo/album/data/MediaPath;

    iget-object v8, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mTimeModified:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mType:I

    invoke-virtual {v3, v7, v8, v9, v2}, Lcom/pinguo/album/data/cache/BlobCacheService;->getImageData(Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;ILcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)Z

    move-result v4

    invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_99

    move-result v7

    if-eqz v7, :cond_2e

    invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/pinguo/album/data/utils/BytesBufferPool;->recycle(Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V

    move-object v1, v6

    :goto_2d
    return-object v1

    :cond_2e
    if-eqz v4, :cond_a2

    :try_start_30
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-boolean v6, Lcom/pinguo/album/common/ApiHelper;->AT_LEAST_11:Z

    if-eqz v6, :cond_7f

    iget v6, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mType:I

    if-ne v6, v10, :cond_74

    iget-object v6, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    iget v7, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I

    iget v8, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v6, v7, v8, v5}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decodeUsingPool(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_4b
    if-nez v1, :cond_6c

    invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_6c

    sget-object v6, Lcom/pinguo/album/data/cache/ImageBlobRequest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "decode cached failed "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/album/data/cache/ImageBlobRequest;->debugTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_30 .. :try_end_6c} :catchall_99

    :cond_6c
    invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/pinguo/album/data/utils/BytesBufferPool;->recycle(Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V

    goto :goto_2d

    :cond_74
    :try_start_74
    iget-object v6, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    iget v7, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I

    iget v8, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v6, v7, v8, v5}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decodeUsingPool(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4b

    :cond_7f
    iget v6, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mType:I

    if-ne v6, v10, :cond_8e

    iget-object v6, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    iget v7, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I

    iget v8, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v6, v7, v8, v5}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4b

    :cond_8e
    iget-object v6, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B

    iget v7, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I

    iget v8, v2, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v6, v7, v8, v5}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_97
    .catchall {:try_start_74 .. :try_end_97} :catchall_99

    move-result-object v1

    goto :goto_4b

    :catchall_99
    move-exception v6

    invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/pinguo/album/data/utils/BytesBufferPool;->recycle(Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V

    throw v6

    :cond_a2
    invoke-static {}, Lcom/pinguo/album/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/pinguo/album/data/utils/BytesBufferPool;->recycle(Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V

    iget-boolean v7, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mLoadOnlyFromCache:Z

    if-eqz v7, :cond_b0

    move-object v1, v6

    goto/16 :goto_2d

    :cond_b0
    iget v7, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mType:I

    invoke-virtual {p0, p1, v7}, Lcom/pinguo/album/data/cache/ImageBlobRequest;->onDecodeOriginal(Lcom/pinguo/album/AlbumThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_bf

    move-object v1, v6

    goto/16 :goto_2d

    :cond_bf
    if-nez v1, :cond_dd

    sget-object v7, Lcom/pinguo/album/data/cache/ImageBlobRequest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "decode orig failed "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/album/data/cache/ImageBlobRequest;->debugTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    goto/16 :goto_2d

    :cond_dd
    iget v7, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mType:I

    if-ne v7, v10, :cond_f0

    iget v7, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mTargetSize:I

    invoke-static {v1, v7, v11}, Lcom/pinguo/album/data/utils/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_e7
    invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_f7

    move-object v1, v6

    goto/16 :goto_2d

    :cond_f0
    iget v7, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mTargetSize:I

    invoke-static {v1, v7, v11}, Lcom/pinguo/album/data/utils/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_e7

    :cond_f7
    invoke-static {v1}, Lcom/pinguo/album/data/utils/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-interface {p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_104

    move-object v1, v6

    goto/16 :goto_2d

    :cond_104
    iget-object v6, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mPath:Lcom/pinguo/album/data/MediaPath;

    iget-object v7, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mTimeModified:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/pinguo/album/data/cache/ImageBlobRequest;->mType:I

    invoke-virtual {v3, v6, v7, v8, v0}, Lcom/pinguo/album/data/cache/BlobCacheService;->putImageData(Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;I[B)V

    goto/16 :goto_2d
.end method

.method public bridge synthetic run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/album/data/cache/ImageBlobRequest;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
