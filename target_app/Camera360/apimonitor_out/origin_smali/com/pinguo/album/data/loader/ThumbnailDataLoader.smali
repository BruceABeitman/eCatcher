.class public Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
.super Ljava/lang/Object;
.source "ThumbnailDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;,
        Lcom/pinguo/album/data/loader/ThumbnailDataLoader$GetUpdateInfo;,
        Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;,
        Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;,
        Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;,
        Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;
    }
.end annotation


# static fields
.field private static final DATA_CACHE_SIZE:I = 0x3e8

.field private static final MAX_LOAD_COUNT:I = 0x40

.field private static final MIN_LOAD_COUNT:I = 0x20

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/pinguo/album/data/MediaItem;

.field private mDataListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;

.field private mFailedVersion:J

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/pinguo/album/data/loader/DataLoadingListener;

.field private final mMainHandler:Lcom/pinguo/album/SynchronizedHandler;

.field private mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/pinguo/album/data/MediaSet;

.field private mSourceListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;

.field private mSourceVersion:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/album/data/MediaSet;)V
    .registers 8

    const/16 v4, 0x3e8

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveStart:I

    iput v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveEnd:I

    iput v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentStart:I

    iput v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I

    iput-wide v2, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSourceVersion:J

    iput v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I

    new-instance v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;-><init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;)V

    iput-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSourceListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;

    iput-wide v2, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mFailedVersion:J

    iput-object p2, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSource:Lcom/pinguo/album/data/MediaSet;

    new-array v0, v4, [Lcom/pinguo/album/data/MediaItem;

    iput-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mData:[Lcom/pinguo/album/data/MediaItem;

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mItemVersion:[J

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSetVersion:[J

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mItemVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSetVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    new-instance v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$1;

    invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getGLController()Lcom/pinguo/album/views/GLController;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$1;-><init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Lcom/pinguo/album/views/GLController;)V

    iput-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mMainHandler:Lcom/pinguo/album/SynchronizedHandler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$10(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$11(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveEnd:I

    return-void
.end method

.method static synthetic access$12(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)[J
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$13(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)[Lcom/pinguo/album/data/MediaItem;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mData:[Lcom/pinguo/album/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveStart:I

    return v0
.end method

.method static synthetic access$15(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/SynchronizedHandler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mMainHandler:Lcom/pinguo/album/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$16(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/MediaSet;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSource:Lcom/pinguo/album/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/DataLoadingListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mLoadingListener:Lcom/pinguo/album/data/loader/DataLoadingListener;

    return-object v0
.end method

.method static synthetic access$19(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mFailedVersion:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)[J
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentStart:I

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSourceVersion:J

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mDataListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I

    return-void
.end method

.method private clearThumbnail(I)V
    .registers 6

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mData:[Lcom/pinguo/album/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mItemVersion:[J

    aput-wide v2, v0, p1

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSetVersion:[J

    aput-wide v2, v0, p1

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

    iget-object v2, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mMainHandler:Lcom/pinguo/album/SynchronizedHandler;

    iget-object v3, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mMainHandler:Lcom/pinguo/album/SynchronizedHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/album/SynchronizedHandler;->sendMessage(Landroid/os/Message;)Z

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
    .registers 8

    iget v4, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentStart:I

    if-ne p1, v4, :cond_9

    iget v4, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I

    if-ne p2, v4, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I

    iget v3, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentStart:I

    monitor-enter p0

    :try_start_e
    iput p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentStart:I

    iput p2, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_25

    if-ge p1, v0, :cond_17

    if-lt v3, p2, :cond_30

    :cond_17
    move v1, v3

    move v2, v0

    :goto_19
    if-lt v1, v2, :cond_28

    :cond_1b
    iget-object v4, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    invoke-virtual {v4}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->notifyDirty()V

    goto :goto_8

    :catchall_25
    move-exception v4

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v4

    :cond_28
    rem-int/lit16 v4, v1, 0x3e8

    invoke-direct {p0, v4}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->clearThumbnail(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_30
    move v1, v3

    :goto_31
    if-lt v1, p1, :cond_3f

    move v1, p2

    move v2, v0

    :goto_35
    if-ge v1, v2, :cond_1b

    rem-int/lit16 v4, v1, 0x3e8

    invoke-direct {p0, v4}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->clearThumbnail(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_3f
    rem-int/lit16 v4, v1, 0x3e8

    invoke-direct {p0, v4}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->clearThumbnail(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31
.end method


# virtual methods
.method public findItem(Lcom/pinguo/album/data/MediaPath;)I
    .registers 6

    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentStart:I

    :goto_2
    iget v2, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I

    if-lt v0, v2, :cond_8

    const/4 v0, -0x1

    :cond_7
    return v0

    :cond_8
    iget-object v2, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mData:[Lcom/pinguo/album/data/MediaItem;

    rem-int/lit16 v3, v0, 0x3e8

    aget-object v1, v2, v3

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;

    move-result-object v2

    if-eq p1, v2, :cond_7

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public get(I)Lcom/pinguo/album/data/MediaItem;
    .registers 7

    invoke-virtual {p0, p1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mData:[Lcom/pinguo/album/data/MediaItem;

    iget-object v1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mData:[Lcom/pinguo/album/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getActiveStart()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveStart:I

    return v0
.end method

.method public isActive(I)Z
    .registers 3

    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveEnd:I

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

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->terminate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    :cond_c
    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSource:Lcom/pinguo/album/data/MediaSet;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSource:Lcom/pinguo/album/data/MediaSet;

    iget-object v1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSourceListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/data/MediaSet;->removeContentListener(Lcom/pinguo/album/data/ContentListener;)V

    :cond_17
    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSource:Lcom/pinguo/album/data/MediaSet;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSource:Lcom/pinguo/album/data/MediaSet;

    iget-object v1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSourceListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/data/MediaSet;->addContentListener(Lcom/pinguo/album/data/ContentListener;)V

    :cond_b
    new-instance v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;-><init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;)V

    iput-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->start()V

    return-void
.end method

.method public setActiveWindow(II)V
    .registers 9

    const/4 v4, 0x0

    iget v3, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveStart:I

    if-ne p1, v3, :cond_a

    iget v3, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveEnd:I

    if-ne p2, v3, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-gt p1, p2, :cond_56

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mData:[Lcom/pinguo/album/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_56

    iget v3, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I

    if-gt p2, v3, :cond_56

    const/4 v3, 0x1

    :goto_18
    invoke-static {v3}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V

    iget-object v3, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mData:[Lcom/pinguo/album/data/MediaItem;

    array-length v2, v3

    iput p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveStart:I

    iput p2, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mActiveEnd:I

    if-eq p1, p2, :cond_9

    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/pinguo/album/utils/Utils;->clamp(III)I

    move-result v1

    add-int v3, v1, v2

    iget v4, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_52

    iget v3, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentEnd:I

    if-lt v3, p2, :cond_52

    iget v3, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_9

    :cond_52
    invoke-direct {p0, v1, v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->setContentWindow(II)V

    goto :goto_9

    :cond_56
    move v3, v4

    goto :goto_18
.end method

.method public setDataListener(Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mDataListener:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;

    return-void
.end method

.method public setLoadingListener(Lcom/pinguo/album/data/loader/DataLoadingListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mLoadingListener:Lcom/pinguo/album/data/loader/DataLoadingListener;

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSize:I

    return v0
.end method
