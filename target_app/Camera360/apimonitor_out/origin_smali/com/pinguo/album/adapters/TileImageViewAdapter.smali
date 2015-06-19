.class public Lcom/pinguo/album/adapters/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/pinguo/album/views/TileImageView$TileSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "TileImageViewAdapter"


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mLevelCount:I

.field protected mOwnScreenNail:Z

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field protected mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateLevelCount()I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    invoke-interface {v2}, Lcom/pinguo/album/opengles/ScreenNail;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/pinguo/album/utils/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;
    .registers 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    shl-int v8, p4, p1

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, p2, v8

    add-int v11, p3, v8

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v9, v0, v1, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    monitor-enter p0

    :try_start_10
    iget-object v6, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v6, :cond_17

    monitor-exit p0

    const/4 v2, 0x0

    :cond_16
    :goto_16
    return-object v2

    :cond_17
    new-instance v5, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageWidth:I

    iget v13, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    invoke-static {v10}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_75

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    const/4 v10, 0x1

    shl-int/2addr v10, p1

    iput v10, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    monitor-enter v6

    :try_start_3c
    invoke-virtual {v6, v5, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v6
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_78

    if-nez v2, :cond_4c

    const-string/jumbo v10, "TileImageViewAdapter"

    const-string/jumbo v11, "fail in decoding region"

    invoke-static {v10, v11}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    invoke-virtual {v9, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p4

    invoke-static {v0, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    shr-int/2addr v10, p1

    int-to-float v10, v10

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    shr-int/2addr v11, p1

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v3, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v2, v7

    goto :goto_16

    :catchall_75
    move-exception v10

    :try_start_76
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v10

    :catchall_78
    move-exception v10

    :try_start_79
    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v10
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mLevelCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public getScreenNail()Lcom/pinguo/album/opengles/ScreenNail;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    return-object v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget-boolean v6, Lcom/pinguo/album/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    if-nez v6, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    shl-int v4, p4, p1

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, p2, v4

    add-int v7, p3, v4

    invoke-direct {v5, p2, p3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_16
    iget-object v3, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v3, :cond_1d

    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_8

    :cond_1d
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageWidth:I

    iget v10, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v1, 0x0

    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_7a

    invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;

    move-result-object v6

    invoke-virtual {v6, p4, p4}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7d

    if-eqz v1, :cond_40

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_40
    :goto_40
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    const/4 v6, 0x1

    shl-int/2addr v6, p1

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :try_start_52
    monitor-enter v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_87

    :try_start_53
    invoke-virtual {v3, v5, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_84

    iget-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v6, v0, :cond_6c

    iget-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6c

    invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;

    move-result-object v6

    iget-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v6, 0x0

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_6c
    if-nez v0, :cond_8

    const-string/jumbo v6, "TileImageViewAdapter"

    const-string/jumbo v7, "fail in decoding region"

    invoke-static {v6, v7}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_78
    const/4 v1, 0x1

    goto :goto_2f

    :catchall_7a
    move-exception v6

    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v6

    :cond_7d
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_40

    :catchall_84
    move-exception v6

    :try_start_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    throw v6
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v6

    iget-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v7, v0, :cond_9c

    iget-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_9c

    invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;

    move-result-object v7

    iget-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v7, 0x0

    iput-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_9c
    throw v6
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/pinguo/album/utils/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageWidth:I

    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {p0}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mLevelCount:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;II)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/pinguo/album/utils/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    iput p2, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageWidth:I

    iput p3, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mImageHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/adapters/TileImageViewAdapter;->mLevelCount:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
