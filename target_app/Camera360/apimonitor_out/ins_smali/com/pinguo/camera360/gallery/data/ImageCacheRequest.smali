.class abstract Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.field private static final TAG:Ljava/lang/String; = "ImageCacheRequest"
.field protected mApplication:Lcom/pinguo/camera360/PgCameraApplication;
.field private mPath:Ljava/lang/String;
.field private mRotation:I
.field private mTargetSize:I
.field private mType:I
.method public constructor <init>(Lcom/pinguo/camera360/PgCameraApplication;Ljava/lang/String;II)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mPath:Ljava/lang/String;
iput p3, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mType:I
iput p4, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mTargetSize:I
return-void
.end method
.method public abstract onDecodeOriginal(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method
.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
.registers 14
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v1, 0x0
new-instance v0, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mPath:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, ","
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v0, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mType:I
if-ne v0, v3, :cond_49
const-string/jumbo v0, "THUMB"
:goto_1c
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v0}, Lcom/pinguo/camera360/PgCameraApplication;->getImageCacheService()Lcom/pinguo/camera360/gallery/data/ImageCacheService;
move-result-object v9
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/BytesBufferPool;->get()Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;
move-result-object v8
:try_start_32
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mPath:Ljava/lang/String;
iget v2, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mType:I
invoke-virtual {v9, v0, v2, v8}, Lcom/pinguo/camera360/gallery/data/ImageCacheService;->getImageData(Ljava/lang/String;ILcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;)Z
move-result v11
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
:try_end_3d
.catchall {:try_start_32 .. :try_end_3d} :catchall_a9
move-result v0
if-eqz v0, :cond_55
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
move-result-object v0
invoke-virtual {v0, v8}, Lcom/pinguo/camera360/gallery/data/BytesBufferPool;->recycle(Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;)V
move-object v7, v1
:goto_48
return-object v7
:cond_49
iget v0, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mType:I
if-ne v0, v4, :cond_51
const-string/jumbo v0, "MICROTHUMB"
goto :goto_1c
:cond_51
const-string/jumbo v0, "?"
goto :goto_1c
:cond_55
if-eqz v11, :cond_b2
:try_start_57
new-instance v5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iget v0, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mType:I
if-ne v0, v4, :cond_99
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getMicroThumbPool()Lcom/pinguo/camera360/gallery/data/BitmapPool;
move-result-object v0
iget-object v2, v8, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->data:[B
iget v3, v8, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->offset:I
iget v4, v8, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->length:I
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v7
:goto_73
if-nez v7, :cond_91
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v0
if-nez v0, :cond_91
const-string/jumbo v0, "ImageCacheRequest"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "decode cached failed "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_91
:try_end_91
.catchall {:try_start_57 .. :try_end_91} :catchall_a9
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
move-result-object v0
invoke-virtual {v0, v8}, Lcom/pinguo/camera360/gallery/data/BytesBufferPool;->recycle(Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;)V
goto :goto_48
:cond_99
:try_start_99
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getThumbPool()Lcom/pinguo/camera360/gallery/data/BitmapPool;
move-result-object v0
iget-object v2, v8, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->data:[B
iget v3, v8, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->offset:I
iget v4, v8, Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;->length:I
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_a7
.catchall {:try_start_99 .. :try_end_a7} :catchall_a9
move-result-object v7
goto :goto_73
:catchall_a9
move-exception v0
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
move-result-object v1
invoke-virtual {v1, v8}, Lcom/pinguo/camera360/gallery/data/BytesBufferPool;->recycle(Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;)V
throw v0
:cond_b2
invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getBytesBufferPool()Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
move-result-object v0
invoke-virtual {v0, v8}, Lcom/pinguo/camera360/gallery/data/BytesBufferPool;->recycle(Lcom/pinguo/camera360/gallery/data/BytesBufferPool$BytesBuffer;)V
iget v0, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mType:I
invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->onDecodeOriginal(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
move-result-object v7
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v0
if-eqz v0, :cond_c7
move-object v7, v1
goto :goto_48
:cond_c7
if-nez v7, :cond_e2
const-string/jumbo v0, "ImageCacheRequest"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "decode orig failed "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
move-object v7, v1
goto/16 :goto_48
:cond_e2
iget v0, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mType:I
if-ne v0, v4, :cond_f5
iget v0, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mTargetSize:I
invoke-static {v7, v0, v3}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
move-result-object v7
:goto_ec
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v0
if-eqz v0, :cond_fc
move-object v7, v1
goto/16 :goto_48
:cond_f5
iget v0, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mTargetSize:I
invoke-static {v7, v0, v3}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
move-result-object v7
goto :goto_ec
:cond_fc
invoke-static {v7}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B
move-result-object v6
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v0
if-eqz v0, :cond_109
move-object v7, v1
goto/16 :goto_48
:cond_109
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mPath:Ljava/lang/String;
iget v1, p0, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->mType:I
invoke-virtual {v9, v0, v1, v6}, Lcom/pinguo/camera360/gallery/data/ImageCacheService;->putImageData(Ljava/lang/String;I[B)V
goto/16 :goto_48
.end method
.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method