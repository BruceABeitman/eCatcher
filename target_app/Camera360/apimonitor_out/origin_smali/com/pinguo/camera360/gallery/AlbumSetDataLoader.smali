.class public Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;,
        Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;,
        Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;,
        Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;,
        Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;,
        Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;
    }
.end annotation


# static fields
.field private static final DATA_CACHE_SIZE:I = 0x100

.field private static final INDEX_NONE:I = -0x1

.field private static final MIN_LOAD_COUNT:I = 0x4

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AlbumSetDataLoader"


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private final mBucketId:[I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;

.field private final mData:[Lcom/pinguo/camera360/gallery/data/MediaSet;

.field private mDataListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;

.field private mSourceVersion:J

.field private final mTotalCount:[I


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/data/MediaSet;)V
    .registers 8

    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    const/16 v2, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveStart:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentStart:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I

    iput-wide v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSourceVersion:J

    new-instance v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSourceListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;

    invoke-static {p2}, Lcom/pinguo/camera360/gallery/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

    new-array v0, v2, [Lcom/pinguo/camera360/gallery/data/MediaItem;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    new-array v0, v2, [Lcom/pinguo/camera360/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaSet;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mTotalCount:[I

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mItemVersion:[J

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSetVersion:[J

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mBucketId:[I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mItemVersion:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSetVersion:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    new-instance v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$1;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$1;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[J
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I

    return-void
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[Lcom/pinguo/camera360/gallery/data/MediaItem;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[J
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[Lcom/pinguo/camera360/gallery/data/MediaSet;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mTotalCount:[I

    return-object v0
.end method

.method static synthetic access$16(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)[I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mBucketId:[I

    return-object v0
.end method

.method static synthetic access$17(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveStart:I

    return v0
.end method

.method static synthetic access$18(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$19(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/data/MediaSet;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentStart:I

    return v0
.end method

.method static synthetic access$20(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/LoadingListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I

    return v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSourceVersion:J

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I

    return-void
.end method

.method private assertIsActive(I)V
    .registers 7

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveStart:I

    if-ge p1, v0, :cond_31

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I

    if-lt p1, v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    return-void
.end method

.method private clearSlot(I)V
    .registers 7

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaSet;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mTotalCount:[I

    aput v1, v0, p1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mItemVersion:[J

    aput-wide v3, v0, p1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSetVersion:[J

    aput-wide v3, v0, p1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mBucketId:[I

    aput v1, v0, p1

    return-void
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

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

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

.method private setContentWindow(II)V
    .registers 9

    iget v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentStart:I

    if-ne p1, v5, :cond_9

    iget v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I

    if-ne p2, v5, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    array-length v2, v5

    iget v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentStart:I

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I

    iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I

    if-ge p1, v0, :cond_18

    if-lt v4, p2, :cond_2a

    :cond_18
    move v1, v4

    move v3, v0

    :goto_1a
    if-lt v1, v3, :cond_22

    :cond_1c
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

    invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->notifyDirty()V

    goto :goto_8

    :cond_22
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2a
    move v1, v4

    :goto_2b
    if-lt v1, p1, :cond_39

    move v1, p2

    move v3, v0

    :goto_2f
    if-ge v1, v3, :cond_1c

    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_39
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b
.end method


# virtual methods
.method public getActiveStart()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveStart:I

    return v0
.end method

.method public getBucketId(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->assertIsActive(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mBucketId:[I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mBucketId:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public getCoverItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->assertIsActive(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMediaSet(I)Lcom/pinguo/camera360/gallery/data/MediaSet;
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->assertIsActive(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaSet;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTotalCount(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->assertIsActive(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mTotalCount:[I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mTotalCount:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public isActive(I)Z
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->terminate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSourceListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->removeContentListener(Lcom/pinguo/camera360/gallery/data/ContentListener;)V

    :cond_13
    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSourceListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->addContentListener(Lcom/pinguo/camera360/gallery/data/ContentListener;)V

    new-instance v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->start()V

    return-void
.end method

.method public setActiveWindow(II)V
    .registers 9

    const/4 v4, 0x0

    iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveStart:I

    if-ne p1, v3, :cond_a

    iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I

    if-ne p2, v3, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-gt p1, p2, :cond_55

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_55

    iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I

    if-gt p2, v3, :cond_55

    const/4 v3, 0x1

    :goto_18
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mActiveEnd:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mCoverItem:[Lcom/pinguo/camera360/gallery/data/MediaItem;

    array-length v2, v3

    if-eq p1, p2, :cond_9

    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I

    move-result v1

    add-int v3, v1, v2

    iget v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_51

    iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentEnd:I

    if-lt v3, p2, :cond_51

    iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_9

    :cond_51
    invoke-direct {p0, v1, v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->setContentWindow(II)V

    goto :goto_9

    :cond_55
    move v3, v4

    goto :goto_18
.end method

.method public setLoadingListener(Lcom/pinguo/camera360/gallery/LoadingListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;

    return-void
.end method

.method public setModelListener(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSize:I

    return v0
.end method
