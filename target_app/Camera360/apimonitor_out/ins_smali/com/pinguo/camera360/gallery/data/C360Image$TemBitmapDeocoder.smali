.class public Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;
.super Ljava/lang/Object;
.source "C360Image.java"
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.field private mTempFilePath:Ljava/lang/String;
.field private mType:I
.method constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;->mTempFilePath:Ljava/lang/String;
iput p2, p0, Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;->mType:I
return-void
.end method
.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
.registers 11
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
const/4 v7, 0x1
iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
iget v7, p0, Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;->mType:I
invoke-static {v7}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getTargetSize(I)I
move-result v5
iget v7, p0, Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;->mType:I
const/4 v8, 0x2
if-ne v7, v8, :cond_3b
const/4 v1, 0x0
const/4 v6, 0x0
:try_start_19
new-instance v2, Landroid/media/ExifInterface;
iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;->mTempFilePath:Ljava/lang/String;
invoke-direct {v2, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
:try_end_20
.catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_20} :catch_30
if-eqz v2, :cond_47
:try_start_22
invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
:try_end_25
.catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_44
move-result-object v6
move-object v1, v2
:goto_27
if-eqz v6, :cond_3b
invoke-static {p1, v6, v3, v5}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decodeIfBigEnough(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_3b
:goto_2f
return-object v0
:catch_30
move-exception v4
:goto_31
const-string/jumbo v7, "C360Image"
const-string/jumbo v8, "fail to get exif thumb"
invoke-static {v7, v8, v4}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_27
:cond_3b
iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;->mTempFilePath:Ljava/lang/String;
iget v8, p0, Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;->mType:I
invoke-static {p1, v7, v3, v5, v8}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decodeThumbnail(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_2f
:catch_44
move-exception v4
move-object v1, v2
goto :goto_31
:cond_47
move-object v1, v2
goto :goto_27
.end method
.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method