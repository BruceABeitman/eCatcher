.class Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "ThumbnailDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;


# direct methods
.method private constructor <init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)V
    .registers 3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mActive:Z

    iput-boolean v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mDirty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;-><init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mIsLoading:Z

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mMainHandler:Lcom/pinguo/album/SynchronizedHandler;
    invoke-static {v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$15(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/SynchronizedHandler;

    move-result-object v1

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v1, v0}, Lcom/pinguo/album/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_14
    const/4 v0, 0x2

    goto :goto_10
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mDirty:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x0

    :cond_8
    :goto_8
    iget-boolean v6, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mActive:Z

    if-nez v6, :cond_10

    invoke-direct {p0, v5}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->updateLoading(Z)V

    return-void

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-boolean v6, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mActive:Z

    if-eqz v6, :cond_27

    iget-boolean v6, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mDirty:Z

    if-nez v6, :cond_27

    if-eqz v1, :cond_27

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->updateLoading(Z)V

    invoke-static {p0}, Lcom/pinguo/album/utils/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_8

    :catchall_24
    move-exception v4

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_24

    throw v4

    :cond_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    iput-boolean v5, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mDirty:Z

    invoke-direct {p0, v4}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->updateLoading(Z)V

    sget-object v6, Lcom/pinguo/album/data/AlbumDataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_30
    iget-object v7, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSource:Lcom/pinguo/album/data/MediaSet;
    invoke-static {v7}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$16(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/album/data/MediaSet;->reload()J

    move-result-wide v2

    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_92

    iget-object v6, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    new-instance v7, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$GetUpdateInfo;

    iget-object v8, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-direct {v7, v8, v2, v3}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$GetUpdateInfo;-><init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;J)V

    #calls: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$17(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;

    if-nez v0, :cond_95

    move v1, v4

    :goto_4d
    if-nez v1, :cond_8

    sget-object v6, Lcom/pinguo/album/data/AlbumDataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_52
    iget-wide v7, v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->version:J

    cmp-long v7, v7, v2

    if-eqz v7, :cond_6f

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->allSortTag:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSource:Lcom/pinguo/album/data/MediaSet;
    invoke-static {v7}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$16(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/MediaSet;

    move-result-object v7

    iget-object v8, v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->allSortTag:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/pinguo/album/data/MediaSet;->analysisSortTags(Ljava/util/ArrayList;)I

    move-result v7

    iput v7, v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->size:I

    iput-wide v2, v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->version:J

    :cond_6f
    iget v7, v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->reloadCount:I

    if-lez v7, :cond_83

    iget-object v7, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mSource:Lcom/pinguo/album/data/MediaSet;
    invoke-static {v7}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$16(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/MediaSet;

    move-result-object v7

    iget v8, v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->reloadStart:I

    iget v9, v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->reloadCount:I

    invoke-virtual {v7, v8, v9}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;->cachedItems:Ljava/util/ArrayList;

    :cond_83
    monitor-exit v6
    :try_end_84
    .catchall {:try_start_52 .. :try_end_84} :catchall_97

    iget-object v6, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    new-instance v7, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;

    iget-object v8, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-direct {v7, v8, v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateContent;-><init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Lcom/pinguo/album/data/loader/ThumbnailDataLoader$UpdateInfo;)V

    #calls: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$17(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_8

    :catchall_92
    move-exception v4

    :try_start_93
    monitor-exit v6
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v4

    :cond_95
    move v1, v5

    goto :goto_4d

    :catchall_97
    move-exception v4

    :try_start_98
    monitor-exit v6
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v4
.end method

.method public declared-synchronized terminate()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->mActive:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
