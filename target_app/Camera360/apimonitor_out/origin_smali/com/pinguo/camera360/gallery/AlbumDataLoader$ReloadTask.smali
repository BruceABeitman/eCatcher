.class Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

.field time:J


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)V
    .registers 4

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mActive:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mDirty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->time:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;-><init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .registers 8

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$15(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->time:J

    goto :goto_4

    :cond_1c
    const/4 v0, 0x2

    goto :goto_10

    :cond_1e
    const-string/jumbo v0, "AlbumDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "----\u52a0\u8f7d\u7167\u7247\uff0c\u6570\u636e\u90e8\u5206\u82b1\u8d39\u65f6\u95f4:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->time:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mActiveStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveStart:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$14(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " :mActiveEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$10(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mDirty:Z

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
    iget-boolean v6, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mActive:Z

    if-nez v6, :cond_10

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    return-void

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-boolean v6, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v6, :cond_27

    iget-boolean v6, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mDirty:Z

    if-nez v6, :cond_27

    if-eqz v1, :cond_27

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    invoke-static {p0}, Lcom/pinguo/camera360/gallery/util/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

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

    iput-boolean v5, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mDirty:Z

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    sget-object v6, Lcom/pinguo/camera360/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_30
    iget-object v7, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$16(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/data/MediaSet;->reload()J

    move-result-wide v2

    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_b7

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    new-instance v7, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    invoke-direct {v7, v8, v2, v3}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$GetUpdateInfo;-><init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;J)V

    #calls: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$17(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;

    if-nez v0, :cond_ba

    move v1, v4

    :goto_4d
    if-nez v1, :cond_8

    sget-object v6, Lcom/pinguo/camera360/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_52
    iget-wide v7, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->version:J

    cmp-long v7, v7, v2

    if-eqz v7, :cond_6f

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->allSortTag:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$16(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v7

    iget-object v8, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->allSortTag:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/pinguo/camera360/gallery/data/MediaSet;->analysisSortTags(Ljava/util/ArrayList;)I

    move-result v7

    iput v7, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->size:I

    iput-wide v2, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->version:J

    :cond_6f
    iget v7, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v7, :cond_a8

    const-string/jumbo v7, "AlbumDataAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "----------11---------info.reloadStart:info.reloadCount "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->reloadStart:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->reloadCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$16(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v7

    iget v8, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget v9, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->reloadCount:I

    invoke-virtual {v7, v8, v9}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;->cachedItems:Ljava/util/ArrayList;

    :cond_a8
    monitor-exit v6
    :try_end_a9
    .catchall {:try_start_52 .. :try_end_a9} :catchall_bc

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    new-instance v7, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    invoke-direct {v7, v8, v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateContent;-><init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Lcom/pinguo/camera360/gallery/AlbumDataLoader$UpdateInfo;)V

    #calls: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$17(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_8

    :catchall_b7
    move-exception v4

    :try_start_b8
    monitor-exit v6
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw v4

    :cond_ba
    move v1, v5

    goto :goto_4d

    :catchall_bc
    move-exception v4

    :try_start_bd
    monitor-exit v6
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v4
.end method

.method public declared-synchronized terminate()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->mActive:Z

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
