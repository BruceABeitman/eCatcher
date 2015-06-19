.class public Lcom/pinguo/album/data/utils/BitmapDecodeUtils;
.super Ljava/lang/Object;
.source "BitmapDecodeUtils.java"
.field private static final TAG:Ljava/lang/String; = "DecodeUtils"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createBitmapRegionDecoder(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
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
const-string/jumbo v1, "DecodeUtils"
invoke-static {v1, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_4
.end method
.method public static createBitmapRegionDecoder(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
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
const-string/jumbo v1, "DecodeUtils"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "requestCreateBitmapRegionDecoder: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
goto :goto_4
.end method
.method public static createBitmapRegionDecoder(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
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
const-string/jumbo v1, "DecodeUtils"
invoke-static {v1, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_4
.end method
.method public static createBitmapRegionDecoder(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;
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
const-string/jumbo v1, "DecodeUtils"
invoke-static {v1, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_33
.end method
.method public static decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 4
if-nez p2, :cond_7
new-instance p2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_7
new-instance v0, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;
invoke-direct {v0, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v0}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V
invoke-static {p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
const/4 v0, 0x0
invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 6
if-nez p4, :cond_7
new-instance p4, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_7
new-instance v0, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;
invoke-direct {v0, p4}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v0}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V
invoke-static {p4}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 5
const/4 v0, 0x0
array-length v1, p1
invoke-static {p0, p1, v0, v1, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static decodeBounds(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p2, :cond_19
move v0, v1
:goto_5
invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V
iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
new-instance v0, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;
invoke-direct {v0, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v0}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V
const/4 v0, 0x0
invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
return-void
:cond_19
move v0, v2
goto :goto_5
.end method
.method private static decodeBounds(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p4, :cond_18
move v0, v1
:goto_5
invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V
iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
new-instance v0, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;
invoke-direct {v0, p4}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v0}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V
invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iput-boolean v2, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
return-void
:cond_18
move v0, v2
goto :goto_5
.end method
.method public static decodeIfBigEnough(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
.registers 7
const/4 v0, 0x0
const/4 v2, 0x0
if-nez p2, :cond_9
new-instance p2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_9
new-instance v1, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;
invoke-direct {v1, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V
const/4 v1, 0x1
iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
array-length v1, p1
invoke-static {p1, v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-interface {p0}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
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
invoke-static {v0, v1, p3}, Lcom/pinguo/album/data/utils/BitmapUtils;->computeSampleSizeLarger(III)I
move-result v0
iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
array-length v0, p1
invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_1e
.end method
.method public static decodeThumbnail(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
.registers 16
const v10, 0x9c400
const/4 v8, 0x2
const/4 v9, 0x1
const/4 v5, 0x0
if-nez p2, :cond_d
new-instance p2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_d
new-instance v6, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;
invoke-direct {v6, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v6}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V
iput-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-interface {p0}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
move-result v6
if-eqz v6, :cond_21
:goto_20
:cond_20
return-object v5
:cond_21
iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ne p4, v8, :cond_81
int-to-float v6, p3
invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I
move-result v7
int-to-float v7, v7
div-float v3, v6, v7
invoke-static {v3}, Lcom/pinguo/album/data/utils/BitmapUtils;->computeSampleSizeLarger(F)I
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
invoke-static {v6}, Lcom/pinguo/album/data/utils/BitmapUtils;->computeSampleSize(F)I
move-result v6
iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
:goto_53
:cond_53
const/4 v6, 0x0
iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_20
int-to-float v6, p3
if-ne p4, v8, :cond_90
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I
move-result v5
:goto_6e
int-to-float v5, v5
div-float v3, v6, v5
float-to-double v5, v3
const-wide/high16 v7, 0x3fe0
cmpg-double v5, v5, v7
if-gtz v5, :cond_7c
invoke-static {v2, v3, v9}, Lcom/pinguo/album/data/utils/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
move-result-object v2
:cond_7c
invoke-static {v2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v5
goto :goto_20
:cond_81
int-to-float v6, p3
invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I
move-result v7
int-to-float v7, v7
div-float v3, v6, v7
invoke-static {v3}, Lcom/pinguo/album/data/utils/BitmapUtils;->computeSampleSizeLarger(F)I
move-result v6
iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
goto :goto_53
:cond_90
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I
move-result v5
goto :goto_6e
.end method
.method public static decodeThumbnail(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
.registers 8
const/4 v1, 0x0
if-nez p2, :cond_8
new-instance p2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_8
new-instance v2, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;
invoke-direct {v2, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V
invoke-interface {p0, v2}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V
const/4 v2, 0x0
iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-interface {p0}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z
move-result v2
if-eqz v2, :cond_1e
:goto_1d
:cond_1d
return-object v1
:cond_1e
if-eqz v0, :cond_1d
invoke-static {v0}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_1d
.end method
.method public static decodeThumbnail(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
.registers 10
const/4 v2, 0x0
:try_start_1
new-instance v3, Ljava/io/FileInputStream;
invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
:try_start_6
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_1f
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_13
invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v1
invoke-static {p0, v1, p2, p3, p4}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decodeThumbnail(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
:try_end_d
.catchall {:try_start_6 .. :try_end_d} :catchall_24
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_27
move-result-object v4
invoke-static {v3}, Lcom/pinguo/album/utils/Utils;->closeSilently(Ljava/io/Closeable;)V
move-object v2, v3
:goto_12
return-object v4
:catch_13
move-exception v0
:try_start_14
:goto_14
const-string/jumbo v4, "DecodeUtils"
invoke-static {v4, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_1a
.catchall {:try_start_14 .. :try_end_1a} :catchall_1f
invoke-static {v2}, Lcom/pinguo/album/utils/Utils;->closeSilently(Ljava/io/Closeable;)V
const/4 v4, 0x0
goto :goto_12
:catchall_1f
move-exception v4
:goto_20
invoke-static {v2}, Lcom/pinguo/album/utils/Utils;->closeSilently(Ljava/io/Closeable;)V
throw v4
:catchall_24
move-exception v4
move-object v2, v3
goto :goto_20
:catch_27
move-exception v0
move-object v2, v3
goto :goto_14
.end method
.method public static decodeUsingPool(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 8
const/4 v3, 0x0
const/4 v4, 0x1
if-nez p2, :cond_9
new-instance p2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_9
iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-ge v2, v4, :cond_f
iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
:cond_f
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-ne v2, v4, :cond_36
invoke-static {p0, p1, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->findCachedBitmap(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
:goto_1b
iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
:try_start_1d
invoke-static {p0, p1, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_35
iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-eq v2, v0, :cond_35
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v2
iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2, v4}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->putForDecodeReuse(Landroid/graphics/Bitmap;)Z
const/4 v2, 0x0
iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
:goto_35
:cond_35
:try_end_35
.catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_35} :catch_38
return-object v0
:cond_36
move-object v2, v3
goto :goto_1b
:catch_38
move-exception v1
iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-nez v2, :cond_3e
throw v1
:cond_3e
const-string/jumbo v2, "DecodeUtils"
const-string/jumbo v4, "decode fail with a given bitmap, try decode to a new bitmap"
invoke-static {v2, v4}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v2
iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2, v4}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->putForDecodeReuse(Landroid/graphics/Bitmap;)Z
iput-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-static {p0, p1, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_35
.end method
.method public static decodeUsingPool(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 10
const/4 v3, 0x0
const/4 v4, 0x1
if-nez p4, :cond_9
new-instance p4, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_9
iget v2, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-ge v2, v4, :cond_f
iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
:cond_f
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iget v2, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-ne v2, v4, :cond_36
invoke-static {p0, p1, p2, p3, p4}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->findCachedBitmap(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
:goto_1b
iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
:try_start_1d
invoke-static {p0, p1, p2, p3, p4}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_35
iget-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-eq v2, v0, :cond_35
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v2
iget-object v4, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2, v4}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->putForDecodeReuse(Landroid/graphics/Bitmap;)Z
const/4 v2, 0x0
iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
:goto_35
:cond_35
:try_end_35
.catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_35} :catch_38
return-object v0
:cond_36
move-object v2, v3
goto :goto_1b
:catch_38
move-exception v1
iget-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-nez v2, :cond_3e
throw v1
:cond_3e
const-string/jumbo v2, "DecodeUtils"
const-string/jumbo v4, "decode fail with a given bitmap, try decode to a new bitmap"
invoke-static {v2, v4}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v2
iget-object v4, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2, v4}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->putForDecodeReuse(Landroid/graphics/Bitmap;)Z
iput-object v3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-static {p0, p1, p2, p3, p4}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decode(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_35
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
.method private static findCachedBitmap(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 6
invoke-static {p0, p1, p2}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decodeBounds(Lcom/pinguo/album/AlbumThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v0
iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->get(II)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method private static findCachedBitmap(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 8
invoke-static {p0, p1, p2, p3, p4}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->decodeBounds(Lcom/pinguo/album/AlbumThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v0
iget v1, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v2, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->get(II)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
.registers 2
sget-boolean v0, Lcom/pinguo/album/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z
if-eqz v0, :cond_7
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z
:cond_7
return-void
.end method