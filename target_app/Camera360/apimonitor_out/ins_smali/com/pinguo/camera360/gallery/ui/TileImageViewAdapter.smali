.class public Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"
.implements Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
.field private static final TAG:Ljava/lang/String; = "TileImageViewAdapter"
.field protected mImageHeight:I
.field protected mImageWidth:I
.field protected mLevelCount:I
.field protected mOwnScreenNail:Z
.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
.field protected mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private calculateLevelCount()I
.registers 4
const/4 v0, 0x0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageWidth:I
int-to-float v1, v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->getWidth()I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/Utils;->ceilLog2(F)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
return v0
.end method
.method private updateScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;Z)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
if-eqz v0, :cond_d
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mOwnScreenNail:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->recycle()V
:cond_d
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
iput-boolean p2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mOwnScreenNail:Z
return-void
.end method
.method public declared-synchronized clear()V
.registers 3
monitor-enter p0
const/4 v0, 0x0
const/4 v1, 0x0
:try_start_3
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->updateScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;Z)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageWidth:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageHeight:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mLevelCount:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getImageHeight()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageHeight:I
return v0
.end method
.method public getImageWidth()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageWidth:I
return v0
.end method
.method public getLevelCount()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mLevelCount:I
return v0
.end method
.method public getScreenNail()Lcom/pinguo/camera360/gallery/ui/ScreenNail;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
return-object v0
.end method
.method public getTile(IIIIILcom/pinguo/camera360/gallery/data/BitmapPool;)Landroid/graphics/Bitmap;
.registers 18
shl-int v0, p5, p1
shl-int v5, p4, p1
new-instance v6, Landroid/graphics/Rect;
sub-int v7, p2, v0
sub-int v8, p3, v0
add-int v9, p2, v5
add-int/2addr v9, v0
add-int v10, p3, v5
add-int/2addr v10, v0
invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V
sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v8, 0x10
if-ge v7, v8, :cond_59
iget v7, v6, Landroid/graphics/Rect;->left:I
if-gez v7, :cond_20
const/4 v7, 0x0
iput v7, v6, Landroid/graphics/Rect;->left:I
:cond_20
iget v7, v6, Landroid/graphics/Rect;->top:I
if-gez v7, :cond_27
const/4 v7, 0x0
iput v7, v6, Landroid/graphics/Rect;->top:I
:cond_27
iget v7, v6, Landroid/graphics/Rect;->right:I
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
invoke-virtual {v8}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I
move-result v8
if-le v7, v8, :cond_39
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
invoke-virtual {v7}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I
move-result v7
iput v7, v6, Landroid/graphics/Rect;->right:I
:cond_39
iget v7, v6, Landroid/graphics/Rect;->bottom:I
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
invoke-virtual {v8}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I
move-result v8
if-le v7, v8, :cond_4b
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
invoke-virtual {v7}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I
move-result v7
iput v7, v6, Landroid/graphics/Rect;->bottom:I
:cond_4b
iget v7, v6, Landroid/graphics/Rect;->left:I
iget v8, v6, Landroid/graphics/Rect;->right:I
if-gt v7, v8, :cond_57
iget v7, v6, Landroid/graphics/Rect;->top:I
iget v8, v6, Landroid/graphics/Rect;->bottom:I
if-le v7, v8, :cond_59
:cond_57
const/4 v1, 0x0
:cond_58
:goto_58
return-object v1
:cond_59
const/4 v3, 0x0
monitor-enter p0
:try_start_5b
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
if-nez v3, :cond_62
monitor-exit p0
const/4 v1, 0x0
goto :goto_58
:cond_62
monitor-exit p0
:try_end_63
.catchall {:try_start_5b .. :try_end_63} :catchall_93
if-nez p6, :cond_96
const/4 v1, 0x0
:goto_66
if-nez v1, :cond_72
mul-int/lit8 v7, p5, 0x2
add-int v4, p4, v7
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v4, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v1
:cond_72
new-instance v2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
const/4 v7, 0x1
shl-int/2addr v7, p1
iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
monitor-enter v3
:try_start_80
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
invoke-virtual {v7, v6, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
monitor-exit v3
:try_end_87
.catchall {:try_start_80 .. :try_end_87} :catchall_9b
if-nez v1, :cond_58
const-string/jumbo v7, "TileImageViewAdapter"
const-string/jumbo v8, "fail in decoding region"
invoke-static {v7, v8}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_58
:catchall_93
move-exception v7
:try_start_94
monitor-exit p0
:try_end_95
.catchall {:try_start_94 .. :try_end_95} :catchall_93
throw v7
:cond_96
invoke-virtual/range {p6 .. p6}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_66
:catchall_9b
move-exception v7
:try_start_9c
monitor-exit v3
:try_end_9d
.catchall {:try_start_9c .. :try_end_9d} :catchall_9b
throw v7
.end method
.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-static {p1}, Lcom/pinguo/camera360/gallery/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/BitmapRegionDecoder;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageWidth:I
invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageHeight:I
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->calculateLevelCount()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mLevelCount:I
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized setScreenNail(Landroid/graphics/Bitmap;II)V
.registers 6
monitor-enter p0
:try_start_1
invoke-static {p1}, Lcom/pinguo/camera360/gallery/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->updateScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;Z)V
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageWidth:I
iput p3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageHeight:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mLevelCount:I
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_19
monitor-exit p0
return-void
:catchall_19
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;II)V
.registers 5
monitor-enter p0
:try_start_1
invoke-static {p1}, Lcom/pinguo/camera360/gallery/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->updateScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;Z)V
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageWidth:I
iput p3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mImageHeight:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->mLevelCount:I
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method