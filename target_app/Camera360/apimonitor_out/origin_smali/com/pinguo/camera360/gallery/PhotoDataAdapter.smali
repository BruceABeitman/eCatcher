.class public Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/PhotoPage$Model;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailListener;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;,
        Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;
    }
.end annotation


# static fields
.field private static final BIT_FULL_IMAGE:I = 0x2

.field private static final BIT_SCREEN_NAIL:I = 0x1

.field private static final DATA_CACHE_SIZE:I = 0x20

.field private static final IMAGE_CACHE_SIZE:I = 0x7

.field private static final MIN_LOAD_COUNT:I = 0x8

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final MSG_UPDATE_IMAGE_REQUESTS:I = 0x4

.field private static final SCREEN_NAIL_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhotoDataAdapter"

.field private static sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private final mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;

.field private mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;

.field private mFocusHintDirection:I

.field private mFocusHintPath:Lcom/pinguo/camera360/gallery/data/Path;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            "Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedFullImage:Z

.field private final mPaths:[Lcom/pinguo/camera360/gallery/data/Path;

.field private final mPhotoLoading:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

.field private final mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

.field private mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

.field private mSize:I

.field private final mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;

.field private final mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x10

    new-array v3, v3, [Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    sput-object v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    sget-object v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    const/4 v0, 0x1

    :goto_16
    const/4 v3, 0x7

    if-lt v0, v3, :cond_3c

    sget-object v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    new-instance v4, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v7}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    sget-object v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v6, v7}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    sget-object v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    new-instance v4, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    return-void

    :cond_3c
    sget-object v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    new-instance v4, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v0, v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    sget-object v3, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    neg-int v5, v0

    invoke-direct {v4, v5, v6}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/data/MediaSet;I)V
    .registers 12

    const-wide/16 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    invoke-direct {v1}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    const/16 v1, 0x20

    new-array v1, v1, [Lcom/pinguo/camera360/gallery/data/MediaItem;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    iput v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I

    iput v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iput v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveStart:I

    iput v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I

    new-array v1, v2, [J

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mChanges:[J

    new-array v1, v2, [Lcom/pinguo/camera360/gallery/data/Path;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPaths:[Lcom/pinguo/camera360/gallery/data/Path;

    iput-wide v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSourceVersion:J

    iput v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    iput v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mFocusHintDirection:I

    iput-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mFocusHintPath:Lcom/pinguo/camera360/gallery/data/Path;

    new-instance v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;

    invoke-direct {v1, p0, v3}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSourceListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;

    invoke-static {p3}, Lcom/pinguo/camera360/gallery/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/gallery/data/MediaSet;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

    invoke-static {p2}, Lcom/pinguo/camera360/gallery/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/gallery/ui/PhotoView;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    iput p4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getThreadPool()Lcom/pinguo/camera360/gallery/util/ThreadPool;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;

    const-string/jumbo v1, "PhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PhotoDataAdapterPhotoDataAdapter mSource = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mPhotoView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mCurrentIndex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mNeedFullImage:Z

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mChanges:[J

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    new-instance v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$1;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$1;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateSlidingWindow()V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02018c

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPhotoLoading:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->isTemporaryItem(Lcom/pinguo/camera360/gallery/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)Lcom/pinguo/camera360/gallery/ui/ScreenNail;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/pinguo/camera360/gallery/data/MediaItem;)Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSourceVersion:J

    return-void
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    return-void
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I

    return-void
.end method

.method static synthetic access$15(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$16(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I

    return-void
.end method

.method static synthetic access$17(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    return-void
.end method

.method static synthetic access$18(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$19(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$20(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$21(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$22(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$23(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/data/MediaSet;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$25(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mFocusHintDirection:I

    return v0
.end method

.method static synthetic access$26(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/util/Future;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateFullImage(Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/util/Future;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/util/Future;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateScreenNail(Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/util/Future;)V

    return-void
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)[Lcom/pinguo/camera360/gallery/data/MediaItem;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_11
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_14} :catch_19

    move-result-object v2

    :goto_15
    return-object v2

    :catch_16
    move-exception v0

    const/4 v2, 0x0

    goto :goto_15

    :catch_19
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private fireDataChange()V
    .registers 16

    const v10, 0x7fffffff

    const/4 v14, 0x0

    const/4 v13, 0x7

    const/4 v1, 0x0

    const/4 v3, -0x3

    :goto_7
    const/4 v9, 0x3

    if-le v3, v9, :cond_d

    if-nez v1, :cond_28

    :goto_c
    return-void

    :cond_d
    iget v9, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v9, v3

    invoke-direct {p0, v9}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aget-wide v11, v9, v11

    cmp-long v9, v11, v5

    if-eqz v9, :cond_25

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aput-wide v5, v9, v11

    const/4 v1, 0x1

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_28
    const/4 v0, 0x7

    new-array v2, v13, [I

    new-array v7, v13, [Lcom/pinguo/camera360/gallery/data/Path;

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPaths:[Lcom/pinguo/camera360/gallery/data/Path;

    invoke-static {v9, v14, v7, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :goto_33
    if-lt v3, v13, :cond_48

    const/4 v3, 0x0

    :goto_36
    if-lt v3, v13, :cond_58

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    iget v10, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v10, v10

    iget v11, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v2, v10, v11}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->notifyDataChange([III)V

    goto :goto_c

    :cond_48
    iget-object v9, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPaths:[Lcom/pinguo/camera360/gallery/data/Path;

    iget v11, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x3

    invoke-direct {p0, v11}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getPath(I)Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v11

    aput-object v11, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_58
    iget-object v9, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPaths:[Lcom/pinguo/camera360/gallery/data/Path;

    aget-object v8, v9, v3

    if-nez v8, :cond_63

    aput v10, v2, v3

    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_63
    const/4 v4, 0x0

    :goto_64
    if-lt v4, v13, :cond_6d

    :cond_66
    if-ge v4, v13, :cond_74

    add-int/lit8 v9, v4, -0x3

    :goto_6a
    aput v9, v2, v3

    goto :goto_60

    :cond_6d
    aget-object v9, v7, v4

    if-eq v9, v8, :cond_66

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_74
    move v9, v10

    goto :goto_6a
.end method

.method private getItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
    .registers 4

    const/4 v1, 0x0

    if-ltz p1, :cond_b

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    if-ge p1, v0, :cond_b

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v1

    :goto_c
    return-object v0

    :cond_d
    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_28

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_28

    const/4 v0, 0x1

    :goto_16
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v0, :cond_2a

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    goto :goto_c

    :cond_28
    const/4 v0, 0x0

    goto :goto_16

    :cond_2a
    move-object v0, v1

    goto :goto_c
.end method

.method private getItemInternal(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_7

    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_7

    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_7

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    goto :goto_7
.end method

.method private getPath(I)Lcom/pinguo/camera360/gallery/data/Path;
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getItemInternal(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v1

    goto :goto_7
.end method

.method private getVersion(I)J
    .registers 5

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getItemInternal(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v1, -0x1

    :goto_8
    return-wide v1

    :cond_9
    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v1

    goto :goto_8
.end method

.method private isTemporaryItem(Lcom/pinguo/camera360/gallery/data/MediaItem;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v3, p1, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    if-nez v3, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->getBucketId()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->getSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->getWidth()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->getHeight()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-gtz v3, :cond_6

    move v1, v2

    goto :goto_6
.end method

.method private newPlaceholderScreenNail(Lcom/pinguo/camera360/gallery/data/MediaItem;)Lcom/pinguo/camera360/gallery/ui/ScreenNail;
    .registers 6

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getHeight()I

    move-result v0

    new-instance v2, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPhotoLoading:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-direct {v2, v1, v0, v3}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;-><init>(IILcom/pinguo/camera360/gallery/ui/BitmapTexture;)V

    return-object v2
.end method

.method private startTaskIfNeeded(II)Lcom/pinguo/camera360/gallery/util/Future;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<*>;"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v4, :cond_b

    iget v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v4, :cond_d

    :cond_b
    move-object v4, v6

    :goto_c
    return-object v4

    :cond_d
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getPath(I)Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_1d

    move-object v4, v6

    goto :goto_c

    :cond_1d
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    rem-int/lit8 v7, p1, 0x20

    aget-object v1, v4, v7

    if-eqz v1, :cond_3c

    move v4, v5

    :goto_26
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v2

    if-ne p2, v5, :cond_3e

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v4, :cond_3e

    iget-wide v7, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_3e

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    goto :goto_c

    :cond_3c
    const/4 v4, 0x0

    goto :goto_26

    :cond_3e
    if-ne p2, v9, :cond_4d

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v4, :cond_4d

    iget-wide v7, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_4d

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    goto :goto_c

    :cond_4d
    if-ne p2, v5, :cond_6c

    iget-wide v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6c

    iput-wide v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;

    new-instance v5, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v5, p0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)V

    new-instance v6, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v6, p0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/gallery/util/ThreadPool;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;

    move-result-object v4

    iput-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    goto :goto_c

    :cond_6c
    if-ne p2, v9, :cond_9d

    iget-wide v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_9d

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_9d

    iput-wide v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    const-string/jumbo v4, "PhotoDataAdapter"

    const-string/jumbo v5, " requestedFullImage"

    invoke-static {v4, v5}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;

    new-instance v5, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;

    invoke-direct {v5, p0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageJob;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)V

    new-instance v6, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;

    invoke-direct {v6, p0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/gallery/util/ThreadPool;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;

    move-result-object v4

    iput-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    goto/16 :goto_c

    :cond_9d
    move-object v4, v6

    goto/16 :goto_c
.end method

.method private updateCurrentIndex(I)V
    .registers 4

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    if-gez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateSlidingWindow()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageCache()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageRequests()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateTileProvider()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;->onPhotoChanged(ILjava/lang/String;)V

    :cond_1f
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->fireDataChange()V

    goto :goto_4
.end method

.method private updateFullImage(Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/util/Future;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eq v2, p2, :cond_1a

    :cond_e
    invoke-interface {p2}, Lcom/pinguo/camera360/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    invoke-interface {p2}, Lcom/pinguo/camera360/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapRegionDecoder;

    iput-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v2, :cond_3a

    iget v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getPath(I)Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_3a

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateTileProvider(Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->notifyImageChange(I)V

    :cond_3a
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_19
.end method

.method private updateImageCache()V
    .registers 12

    const/4 v10, 0x0

    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveStart:I

    :goto_e
    iget v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I

    if-lt v1, v6, :cond_1d

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_80

    return-void

    :cond_1d
    iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    rem-int/lit8 v7, v1, 0x20

    aget-object v2, v6, v7

    if-nez v2, :cond_28

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_28
    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v3

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_75

    iget v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_55

    iget-object v6, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v6, :cond_4f

    iget-object v6, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    invoke-interface {v6}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V

    iput-object v10, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    :cond_4f
    iput-object v10, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    :cond_55
    iget-wide v6, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_25

    iget-object v6, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    instance-of v6, v6, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;

    if-eqz v6, :cond_25

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    check-cast v4, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getHeight()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->updatePlaceholderSize(II)V

    goto :goto_25

    :cond_75
    new-instance v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    invoke-direct {v0, v10}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;)V

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_80
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/gallery/data/Path;

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    iget-object v7, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v7, :cond_97

    iget-object v7, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    invoke-interface {v7}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V

    :cond_97
    iget-object v7, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v7, :cond_a0

    iget-object v7, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    invoke-interface {v7}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V

    :cond_a0
    iget-object v7, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    if-eqz v7, :cond_16

    iget-object v7, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    invoke-interface {v7}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->recycle()V

    goto/16 :goto_16
.end method

.method private updateImageRequests()V
    .registers 14

    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    iget-boolean v7, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mIsActive:Z

    if-nez v7, :cond_8

    :cond_7
    return-void

    :cond_8
    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    rem-int/lit8 v8, v1, 0x20

    aget-object v4, v7, v8

    const-string/jumbo v7, "PhotoDataAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "PhotoDataAdapterupdateImageRequests item = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_2a
    sget-object v7, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    array-length v7, v7

    if-lt v3, v7, :cond_68

    :goto_2f
    iget-object v7, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_39
    :goto_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    iget-object v8, v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v8, :cond_56

    iget-object v8, v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eq v8, v6, :cond_56

    iget-object v8, v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    invoke-interface {v8}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V

    iput-object v10, v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    iput-wide v11, v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    :cond_56
    iget-object v8, v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v8, :cond_39

    iget-object v8, v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eq v8, v6, :cond_39

    iget-object v8, v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    invoke-interface {v8}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V

    iput-object v10, v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    iput-wide v11, v2, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    goto :goto_39

    :cond_68
    sget-object v7, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    aget-object v7, v7, v3

    iget v5, v7, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;->indexOffset:I

    sget-object v7, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;

    aget-object v7, v7, v3

    iget v0, v7, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageFetch;->imageBit:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_7e

    iget-boolean v7, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v7, :cond_7e

    :cond_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_7e
    add-int v7, v1, v5

    invoke-direct {p0, v7, v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/pinguo/camera360/gallery/util/Future;

    move-result-object v6

    if-eqz v6, :cond_7b

    goto :goto_2f
.end method

.method private updateScreenNail(Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/util/Future;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    invoke-interface {p2}, Lcom/pinguo/camera360/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    if-eqz v0, :cond_14

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eq v4, p2, :cond_1a

    :cond_14
    if-eqz v3, :cond_19

    invoke-interface {v3}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->recycle()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    instance-of v4, v4, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;

    if-eqz v4, :cond_2b

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    check-cast v2, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->combine(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    move-result-object v3

    :cond_2b
    if-nez v3, :cond_38

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    :goto_30
    const/4 v1, -0x3

    :goto_31
    const/4 v4, 0x3

    if-le v1, v4, :cond_3e

    :goto_34
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_19

    :cond_38
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    iput-object v3, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    goto :goto_30

    :cond_3e
    iget v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getPath(I)Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v4

    if-ne p1, v4, :cond_52

    if-nez v1, :cond_4c

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateTileProvider(Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;)V

    :cond_4c
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->notifyImageChange(I)V

    goto :goto_34

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_31
.end method

.method private updateSlidingWindow()V
    .registers 7

    const/4 v5, 0x0

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x3

    iget v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I

    move-result v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_22

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_22

    :cond_21
    :goto_21
    return-void

    :cond_22
    iput v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveStart:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x10

    iget v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x20

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I

    move-result v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_56

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_56

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_21

    :cond_56
    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I

    :goto_58
    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I

    if-lt v1, v3, :cond_6a

    iput v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_21

    :cond_6a
    if-lt v1, v2, :cond_6e

    if-lt v1, v0, :cond_75

    :cond_6e
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    rem-int/lit8 v4, v1, 0x20

    const/4 v5, 0x0

    aput-object v5, v3, v4

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_58
.end method

.method private updateTileProvider()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getPath(I)Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->clear()V

    :goto_15
    return-void

    :cond_16
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateTileProvider(Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;)V

    goto :goto_15
.end method

.method private updateTileProvider(Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;)V
    .registers 9

    iget-object v2, p1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    iget-object v0, p1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v2, :cond_29

    if-eqz v0, :cond_1b

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;II)V

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4, v0}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->getWidth()I

    move-result v3

    invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4, v2, v3, v1}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;II)V

    goto :goto_1a

    :cond_29
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->clear()V

    goto :goto_1a
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getImageHeight()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .registers 4

    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v1, 0x0

    :goto_a
    return v1

    :cond_b
    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getFullImageRotation()I

    move-result v1

    goto :goto_a
.end method

.method public getImageSize(ILcom/pinguo/camera360/gallery/ui/PhotoView$Size;)V
    .registers 6

    const/4 v2, 0x0

    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_f

    iput v2, p2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->width:I

    iput v2, p2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->height:I

    :goto_e
    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->width:I

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->height:I

    goto :goto_e
.end method

.method public getImageWidth()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getPath(I)Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return v1

    :cond_13
    iget-boolean v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v2, :cond_19

    const/4 v1, 0x2

    goto :goto_12

    :cond_19
    iget-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    if-eqz v2, :cond_12

    const/4 v1, 0x1

    goto :goto_12
.end method

.method public getMediaItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
    .registers 5

    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int v0, v1, p1

    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I

    if-lt v0, v1, :cond_13

    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    rem-int/lit8 v2, v0, 0x20

    aget-object v1, v1, v2

    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getScreenNail()Lcom/pinguo/camera360/gallery/ui/ScreenNail;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getScreenNail(I)Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNail(I)Lcom/pinguo/camera360/gallery/ui/ScreenNail;
    .registers 8

    const/4 v4, 0x0

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v3, p1

    if-ltz v1, :cond_f

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    if-ge v1, v3, :cond_f

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mIsActive:Z

    if-nez v3, :cond_11

    :cond_f
    move-object v3, v4

    :goto_10
    return-object v3

    :cond_11
    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v3, :cond_25

    iget v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v3, :cond_25

    const/4 v3, 0x1

    :goto_1a
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v2

    if-nez v2, :cond_27

    move-object v3, v4

    goto :goto_10

    :cond_25
    const/4 v3, 0x0

    goto :goto_1a

    :cond_27
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_37

    move-object v3, v4

    goto :goto_10

    :cond_37
    iget-object v3, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    if-nez v3, :cond_46

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/pinguo/camera360/gallery/data/MediaItem;)Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    move-result-object v3

    iput-object v3, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    if-nez p1, :cond_46

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateTileProvider(Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;)V

    :cond_46
    iget-object v3, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    goto :goto_10
.end method

.method public getTile(IIIIILcom/pinguo/camera360/gallery/data/BitmapPool;)Landroid/graphics/Bitmap;
    .registers 14

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->getTile(IIIIILcom/pinguo/camera360/gallery/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isDeletable(I)Z
    .registers 5

    const/4 v1, 0x0

    iget v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isVideo(I)Z
    .registers 4

    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public moveTo(I)V
    .registers 2

    if-ltz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateCurrentIndex(I)V

    :cond_5
    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mIsActive:Z

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->terminate()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSourceListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/data/MediaSet;->removeContentListener(Lcom/pinguo/camera360/gallery/data/ContentListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/TileImageViewAdapter;->clear()V

    return-void

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;

    invoke-interface {v2}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V

    :cond_3c
    iget-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v2, :cond_45

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;

    invoke-interface {v2}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V

    :cond_45
    iget-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->recycle()V

    goto :goto_1c
.end method

.method public resume()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mIsActive:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSourceListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->addContentListener(Lcom/pinguo/camera360/gallery/data/ContentListener;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageCache()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageRequests()V

    new-instance v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->start()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method public setCurrentPhoto(Lcom/pinguo/camera360/gallery/data/Path;I)V
    .registers 5

    iget v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    if-gez v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput p2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateSlidingWindow()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageCache()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->fireDataChange()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->getMediaItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_4
.end method

.method public setDataListener(Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;

    return-void
.end method

.method public setFocusHintDirection(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mFocusHintDirection:I

    return-void
.end method

.method public setFocusHintPath(Lcom/pinguo/camera360/gallery/data/Path;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mFocusHintPath:Lcom/pinguo/camera360/gallery/data/Path;

    return-void
.end method

.method public setNeedFullImage(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mNeedFullImage:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
