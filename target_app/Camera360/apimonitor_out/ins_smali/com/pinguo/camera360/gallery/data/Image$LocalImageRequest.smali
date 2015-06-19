.class public Lcom/pinguo/camera360/gallery/data/Image$LocalImageRequest;
.super Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;
.source "Image.java"
.field private mLocalFilePath:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/PgCameraApplication;Ljava/lang/String;ILjava/lang/String;)V
.registers 6
invoke-static {p3}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getTargetSize(I)I
move-result v0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Ljava/lang/String;II)V
iput-object p4, p0, Lcom/pinguo/camera360/gallery/data/Image$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;
return-void
.end method
.method public onDecodeOriginal(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.registers 12
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
const/4 v7, 0x1
iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
invoke-static {p2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getTargetSize(I)I
move-result v5
const/4 v7, 0x2
if-ne p2, v7, :cond_37
const/4 v1, 0x0
const/4 v6, 0x0
:try_start_15
new-instance v2, Landroid/media/ExifInterface;
iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/Image$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;
invoke-direct {v2, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
:try_end_1c
.catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_2c
if-eqz v2, :cond_41
:try_start_1e
invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
:try_end_21
.catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_3e
move-result-object v6
move-object v1, v2
:goto_23
if-eqz v6, :cond_37
invoke-static {p1, v6, v3, v5}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decodeIfBigEnough(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_37
:goto_2b
return-object v0
:catch_2c
move-exception v4
:goto_2d
const-string/jumbo v7, "Image"
const-string/jumbo v8, "fail to get exif thumb"
invoke-static {v7, v8, v4}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_23
:cond_37
iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/Image$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;
invoke-static {p1, v7, v3, v5, p2}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decodeThumbnail(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_2b
:catch_3e
move-exception v4
move-object v1, v2
goto :goto_2d
:cond_41
move-object v1, v2
goto :goto_23
.end method
.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
.registers 3
invoke-super {p0, p1}, Lcom/pinguo/camera360/gallery/data/ImageCacheRequest;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method