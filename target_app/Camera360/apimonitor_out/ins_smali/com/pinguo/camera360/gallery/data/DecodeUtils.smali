.class public Lcom/pinguo/camera360/gallery/data/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"
.field private static final TAG:Ljava/lang/String; = "DecodeService"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createBitmapRegionDecoder(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
.registers 5
:try_start_0
invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
:try_end_3
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const-string/jumbo v1, "DecodeService"
invoke-static {v1, v0}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_4
.end method
.method public static createBitmapRegionDecoder(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
.registers 7
:try_start_0
invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
:try_end_3
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const-string/jumbo v1, "DecodeService"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "requestCreateBitmapRegionDecoder: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 v1, 0x0
goto :goto_4
.end method
.method public static createBitmapRegionDecoder(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
.registers 5
:try_start_0
invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
:try_end_3
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
const-string/jumbo v1, "DecodeService"
invoke-static {v1, v0}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_4
.end method
.method public static createBitmapRegionDecoder(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;
.registers 11
if-ltz p2, :cond_9
if-lez p3, :cond_9
add-int v1, p2, p3
array-length v2, p1
if-le v1, v2, :cond_2f
:cond_9
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string/jumbo v2, "offset = %s, length = %s, bytes = %s"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x2
array-length v5, p1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:try_start_2f
:cond_2f
invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
:try_end_32
.catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_34
move-result-object v1
:goto_33
return-object v1
:catch_34
move-exception v0
const-string/jumbo v1, "DecodeService"
invoke-static {v1, v0}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_33
.end method
.method public static decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 4
if-nez p2, :cond_7
new-instance p2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_7
new-instance v0, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;)V
const/4 v0, 0x0
invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 6
if-nez p4, :cond_7
new-instance p4, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_7
new-instance v0, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;
invoke-direct {v0, p4}, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;)V
invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 5
const/4 v0, 0x0
array-length v1, p1
invoke-static {p0, p1, v0, v1, p2}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static decodeBounds(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p2, :cond_19
move v0, v1
:goto_5
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V
iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
new-instance v0, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;)V
const/4 v0, 0x0
invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
return-void
:cond_19
move v0, v2
goto :goto_5
.end method
.method public static decodeBounds(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p4, :cond_18
move v0, v1
:goto_5
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V
iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
new-instance v0, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;
invoke-direct {v0, p4}, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;)V
invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iput-boolean v2, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
return-void
:cond_18
move v0, v2
goto :goto_5
.end method
.method public static decodeIfBigEnough(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
.registers 7
const/4 v0, 0x0
const/4 v2, 0x0
if-nez p2, :cond_9
new-instance p2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_9
new-instance v1, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;
invoke-direct {v1, p2}, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;)V
const/4 v1, 0x1
iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
array-length v1, p1
invoke-static {p1, v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-interface {p0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v1
if-eqz v1, :cond_1f
:goto_1e
:cond_1e
return-object v0
:cond_1f
iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-lt v1, p3, :cond_1e
iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-lt v1, p3, :cond_1e
iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-static {v0, v1, p3}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->computeSampleSizeLarger(III)I
move-result v0
iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
array-length v0, p1
invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_1e
.end method
.method public static decodeThumbnail(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
.registers 16
const v10, 0x9c400
const/4 v8, 0x2
const/4 v9, 0x1
const/4 v5, 0x0
if-nez p2, :cond_d
new-instance p2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_d
new-instance v6, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;
invoke-direct {v6, p2}, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v6}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;)V
iput-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-interface {p0}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v6
if-eqz v6, :cond_21
:goto_20
:cond_20
return-object v5
:cond_21
iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ne p4, v8, :cond_80
int-to-float v6, p3
invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I
move-result v7
int-to-float v7, v7
div-float v3, v6, v7
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->computeSampleSizeLarger(F)I
move-result v6
iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const v0, 0x9c400
iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
div-int v6, v4, v6
iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
div-int v7, v1, v7
mul-int/2addr v6, v7
if-le v6, v10, :cond_53
mul-int v6, v4, v1
div-int v6, v10, v6
int-to-double v6, v6
invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v6
double-to-float v6, v6
invoke-static {v6}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->computeSampleSize(F)I
move-result v6
iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
:goto_53
:cond_53
const/4 v6, 0x0
iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
iput-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_20
int-to-float v6, p3
if-ne p4, v8, :cond_8f
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I
move-result v5
:goto_6d
int-to-float v5, v5
div-float v3, v6, v5
float-to-double v5, v3
const-wide/high16 v7, 0x3fe0
cmpg-double v5, v5, v7
if-gtz v5, :cond_7b
invoke-static {v2, v3, v9}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
move-result-object v2
:cond_7b
invoke-static {v2}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v5
goto :goto_20
:cond_80
int-to-float v6, p3
invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I
move-result v7
int-to-float v7, v7
div-float v3, v6, v7
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->computeSampleSizeLarger(F)I
move-result v6
iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
goto :goto_53
:cond_8f
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I
move-result v5
goto :goto_6d
.end method
.method public static decodeThumbnail(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
.registers 14
const/4 v5, 0x0
const/4 v3, 0x0
:try_start_2
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_1f
new-instance v4, Ljava/io/FileInputStream;
invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_12
:try_end_12
.catchall {:try_start_2 .. :try_end_12} :catchall_48
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_3d
invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-static {p0, v2, p2, p3, p4}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decodeThumbnail(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
:try_end_19
.catchall {:try_start_12 .. :try_end_19} :catchall_4d
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_50
move-result-object v5
invoke-static {v4}, Lcom/pinguo/camera360/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V
move-object v3, v4
:goto_1e
return-object v5
:try_start_1f
:cond_1f
const-string/jumbo v6, "DecodeService"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "------decodeThumbnail failed! file not exist:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_39
.catchall {:try_start_1f .. :try_end_39} :catchall_48
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_39} :catch_3d
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V
goto :goto_1e
:catch_3d
move-exception v0
:try_start_3e
:goto_3e
const-string/jumbo v6, "DecodeService"
invoke-static {v6, v0}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_44
.catchall {:try_start_3e .. :try_end_44} :catchall_48
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V
goto :goto_1e
:catchall_48
move-exception v5
:goto_49
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V
throw v5
:catchall_4d
move-exception v5
move-object v3, v4
goto :goto_49
:catch_50
move-exception v0
move-object v3, v4
goto :goto_3e
.end method
.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 4
if-eqz p0, :cond_8
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v1
if-eqz v1, :cond_a
:cond_8
move-object v0, p0
:goto_9
return-object v0
:cond_a
sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_9
.end method