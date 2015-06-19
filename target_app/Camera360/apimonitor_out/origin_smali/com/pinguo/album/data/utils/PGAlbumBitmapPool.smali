.class public Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
.super Ljava/lang/Object;
.source "PGAlbumBitmapPool.java"


# static fields
.field public static final CAPACITY_BYTES:I = 0x1400000

.field private static final COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point; = null

.field private static final POOL_INDEX_MISC:I = 0x2

.field private static final POOL_INDEX_NONE:I = -0x1

.field private static final POOL_INDEX_PHOTO:I = 0x1

.field private static final POOL_INDEX_SQUARE:I

.field private static sInstance:Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;


# instance fields
.field private mCapacityBytes:I

.field private mPools:[Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

.field private mSharedNodePool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x3

    new-array v0, v4, [Landroid/graphics/Point;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

    new-instance v0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;

    const/high16 v1, 0x140

    invoke-direct {v0, v1}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;-><init>(I)V

    sput-object v0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->sInstance:Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    iput-object v0, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mPools:[Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    iget-object v0, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mPools:[Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    const/4 v1, 0x0

    new-instance v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    div-int/lit8 v3, p1, 0x3

    iget-object v4, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    const-string/jumbo v5, "squarePool"

    sget-boolean v6, Lcom/pinguo/album/common/ApiHelper;->AT_LEAST_11:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;-><init>(ILandroid/util/Pools$Pool;Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mPools:[Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    const/4 v1, 0x1

    new-instance v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    div-int/lit8 v3, p1, 0x3

    iget-object v4, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    const-string/jumbo v5, "photoPool"

    sget-boolean v6, Lcom/pinguo/album/common/ApiHelper;->AT_LEAST_11:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;-><init>(ILandroid/util/Pools$Pool;Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mPools:[Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    const/4 v1, 0x2

    new-instance v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    div-int/lit8 v3, p1, 0x3

    iget-object v4, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    const-string/jumbo v5, "miscPool"

    sget-boolean v6, Lcom/pinguo/album/common/ApiHelper;->AT_LEAST_11:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;-><init>(ILandroid/util/Pools$Pool;Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    iput p1, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mCapacityBytes:I

    return-void
.end method

.method public static getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
    .registers 1

    sget-object v0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->sInstance:Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;

    return-object v0
.end method

.method private getPoolForDimensions(II)Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getPoolIndexForDimensions(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mPools:[Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    aget-object v1, v1, v0

    goto :goto_8
.end method

.method private getPoolIndexForDimensions(II)I
    .registers 11

    const/4 v3, 0x0

    if-lez p1, :cond_5

    if-gtz p2, :cond_7

    :cond_5
    const/4 v3, -0x1

    :cond_6
    :goto_6
    return v3

    :cond_7
    if-eq p1, p2, :cond_6

    if-le p1, p2, :cond_14

    move v2, p2

    move v1, p1

    :goto_d
    sget-object v4, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

    array-length v5, v4

    :goto_10
    if-lt v3, v5, :cond_17

    const/4 v3, 0x2

    goto :goto_6

    :cond_14
    move v2, p1

    move v1, p2

    goto :goto_d

    :cond_17
    aget-object v0, v4, v3

    iget v6, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v2

    iget v7, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v1

    if-ne v6, v7, :cond_23

    const/4 v3, 0x1

    goto :goto_6

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10
.end method


# virtual methods
.method public clear()V
    .registers 5

    iget-object v2, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mPools:[Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v3, :cond_7

    return-void

    :cond_7
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public get(II)Landroid/graphics/Bitmap;
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getPoolForDimensions(II)Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0, p1, p2}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7
.end method

.method public declared-synchronized getCapacity()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mCapacityBytes:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->mPools:[Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v4, :cond_8

    return v1

    :cond_8
    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->getSize()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public put(Landroid/graphics/Bitmap;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getPoolForDimensions(II)Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_b

    :cond_1e
    invoke-virtual {v0, p1}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_b
.end method

.method public putForDecodeReuse(Landroid/graphics/Bitmap;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getPoolForDimensions(II)Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_24

    :cond_20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_b

    :cond_24
    invoke-virtual {v0, p1}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_b
.end method
