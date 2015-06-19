.class public Lcom/pinguo/camera360/gallery/data/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.java"
.field private static final TAG:Ljava/lang/String; = "BitmapPool"
.field private volatile mEnabled:Z
.field private final mHeight:I
.field private final mName:Ljava/lang/String;
.field private final mOneSize:Z
.field private final mPool:Ljava/util/ArrayList;
.field private final mPoolLimit:I
.field private final mWidth:I
.method public constructor <init>(IIILjava/lang/String;)V
.registers 7
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mWidth:I
iput p2, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mHeight:I
iput p3, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPoolLimit:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mOneSize:Z
iput-object p4, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mName:Ljava/lang/String;
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mEnabled:Z
return-void
.end method
.method public constructor <init>(ILjava/lang/String;)V
.registers 4
const/4 v0, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mWidth:I
iput v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mHeight:I
iput p1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPoolLimit:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mOneSize:Z
iput-object p2, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mName:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mEnabled:Z
return-void
.end method
.method private decodeUsingPool(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 9
const/4 v3, 0x0
const/4 v4, 0x1
if-nez p3, :cond_9
new-instance p3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_9
iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-ge v2, v4, :cond_f
iput v4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
:cond_f
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iput-boolean v4, p3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-ne v2, v4, :cond_34
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->findCachedBitmap(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
:goto_1d
iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
:try_start_1f
invoke-static {p1, p2, p3}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_33
iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-eq v2, v0, :cond_33
iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
const/4 v2, 0x0
iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
:goto_33
:cond_33
:try_end_33
.catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_33} :catch_36
return-object v0
:cond_34
move-object v2, v3
goto :goto_1d
:catch_36
move-exception v1
iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-nez v2, :cond_3c
throw v1
:cond_3c
const-string/jumbo v2, "BitmapPool"
const-string/jumbo v4, "decode fail with a given bitmap, try decode to a new bitmap"
invoke-static {v2, v4}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
iput-object v3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-static {p1, p2, p3}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_33
.end method
.method private decodeUsingPool(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 11
const/4 v3, 0x0
const/4 v4, 0x1
if-nez p5, :cond_9
new-instance p5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_9
iget v2, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-ge v2, v4, :cond_f
iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
:cond_f
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iget v2, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-ne v2, v4, :cond_32
invoke-direct/range {p0 .. p5}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->findCachedBitmap(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
:goto_1b
iput-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
:try_start_1d
invoke-static {p1, p2, p3, p4, p5}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_31
iget-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-eq v2, v0, :cond_31
iget-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
const/4 v2, 0x0
iput-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
:goto_31
:cond_31
:try_end_31
.catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_31} :catch_34
return-object v0
:cond_32
move-object v2, v3
goto :goto_1b
:catch_34
move-exception v1
iget-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
if-nez v2, :cond_3a
throw v1
:cond_3a
const-string/jumbo v2, "BitmapPool"
const-string/jumbo v4, "decode fail with a given bitmap, try decode to a new bitmap"
invoke-static {v2, v4}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iget-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
iput-object v3, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
invoke-static {p1, p2, p3, p4, p5}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_31
.end method
.method private decodeWithOutPool(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 8
const/4 v3, 0x1
if-nez p3, :cond_8
new-instance p3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_8
iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-ge v2, v3, :cond_e
iput v3, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
:cond_e
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iput-boolean v3, p3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
:try_start_14
invoke-static {p1, p2, p3}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_17
.catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_17} :catch_19
move-result-object v0
:goto_18
return-object v0
:catch_19
move-exception v1
invoke-static {p1, p2, p3}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_18
.end method
.method private decodeWithOutPool(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 10
const/4 v3, 0x1
if-nez p5, :cond_8
new-instance p5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
:cond_8
iget v2, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
if-ge v2, v3, :cond_e
iput v3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
:cond_e
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
:try_start_14
invoke-static {p1, p2, p3, p4, p5}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_17
.catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_17} :catch_19
move-result-object v0
:goto_18
return-object v0
:catch_19
move-exception v1
invoke-static {p1, p2, p3, p4, p5}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_18
.end method
.method private findCachedBitmap(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 6
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mOneSize:Z
if-eqz v0, :cond_9
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
:goto_8
return-object v0
:cond_9
invoke-static {p1, p2, p3}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decodeBounds(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V
iget v0, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->getBitmap(II)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_8
.end method
.method private findCachedBitmap(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 8
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mOneSize:Z
if-eqz v0, :cond_9
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
:goto_8
return-object v0
:cond_9
invoke-static {p1, p2, p3, p4, p5}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->decodeBounds(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
iget v0, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v1, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->getBitmap(II)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_8
.end method
.method public declared-synchronized clear()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 5
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mEnabled:Z
if-eqz v0, :cond_d
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z
if-eqz v0, :cond_d
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->decodeUsingPool(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->decodeWithOutPool(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_c
.end method
.method public decode(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 7
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mEnabled:Z
if-eqz v0, :cond_d
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z
if-eqz v0, :cond_d
invoke-direct/range {p0 .. p5}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->decodeUsingPool(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-direct/range {p0 .. p5}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->decodeWithOutPool(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_c
.end method
.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
.registers 4
monitor-enter p0
:try_start_1
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mOneSize:Z
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
add-int/lit8 v2, v0, -0x1
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/graphics/Bitmap;
:goto_18
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_1c
monitor-exit p0
return-object v1
:cond_1a
const/4 v1, 0x0
goto :goto_18
:catchall_1c
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized getBitmap(II)Landroid/graphics/Bitmap;
.registers 6
monitor-enter p0
:try_start_1
iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mOneSize:Z
if-eqz v2, :cond_16
const/4 v2, 0x0
:goto_6
invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_38
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_11
if-gez v1, :cond_18
const/4 v2, 0x0
:goto_14
monitor-exit p0
return-object v2
:cond_16
const/4 v2, 0x1
goto :goto_6
:cond_18
:try_start_18
iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
if-ne v2, p1, :cond_35
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
if-ne v2, p2, :cond_35
iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/graphics/Bitmap;
:try_end_34
.catchall {:try_start_18 .. :try_end_34} :catchall_38
goto :goto_14
:cond_35
add-int/lit8 v1, v1, -0x1
goto :goto_11
:catchall_38
move-exception v2
monitor-exit p0
throw v2
.end method
.method public isEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mEnabled:Z
return v0
.end method
.method public recycle(Landroid/graphics/Bitmap;)V
.registers 4
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mOneSize:Z
if-eqz v0, :cond_1b
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
iget v1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mWidth:I
if-ne v0, v1, :cond_17
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
iget v1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mHeight:I
if-eq v0, v1, :cond_1b
:cond_17
invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_2
:cond_1b
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mEnabled:Z
if-nez v0, :cond_23
invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_2
:cond_23
monitor-enter p0
:try_start_24
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget v1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPoolLimit:I
if-lt v0, v1, :cond_34
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
:cond_34
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mPool:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit p0
goto :goto_2
:catchall_3b
move-exception v0
monitor-exit p0
:try_end_3d
.catchall {:try_start_24 .. :try_end_3d} :catchall_3b
throw v0
.end method
.method public setEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/data/BitmapPool;->mEnabled:Z
return-void
.end method