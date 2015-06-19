.class  Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumSetDataLoader.java"
.field private volatile mActive:Z
.field private volatile mDirty:Z
.field private volatile mIsLoading:Z
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
.method private constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)V
.registers 3
const/4 v0, 0x1
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mActive:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mDirty:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)V
return-void
.end method
.method private updateLoading(Z)V
.registers 4
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$18(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Landroid/os/Handler;
move-result-object v1
if-eqz p1, :cond_14
const/4 v0, 0x1
:goto_10
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_4
:cond_14
const/4 v0, 0x2
goto :goto_10
.end method
.method public declared-synchronized notifyDirty()V
.registers 2
monitor-enter p0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mDirty:Z
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
.registers 16
const/4 v8, 0x1
const/4 v14, -0x1
const/4 v9, 0x0
const/16 v10, 0xa
invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V
const/4 v5, 0x0
:cond_9
:goto_9
iget-boolean v10, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mActive:Z
if-nez v10, :cond_11
invoke-direct {p0, v9}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V
return-void
:cond_11
monitor-enter p0
:try_start_12
iget-boolean v10, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mActive:Z
if-eqz v10, :cond_34
iget-boolean v10, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mDirty:Z
if-nez v10, :cond_34
if-eqz v5, :cond_34
iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-static {v10}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$19(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/gallery/data/MediaSet;->isLoading()Z
move-result v10
if-nez v10, :cond_2c
const/4 v10, 0x0
invoke-direct {p0, v10}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V
:cond_2c
invoke-static {p0}, Lcom/pinguo/camera360/gallery/util/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
monitor-exit p0
goto :goto_9
:catchall_31
move-exception v8
monitor-exit p0
:try_end_33
.catchall {:try_start_12 .. :try_end_33} :catchall_31
throw v8
:cond_34
:try_start_34
monitor-exit p0
:try_end_35
.catchall {:try_start_34 .. :try_end_35} :catchall_31
iput-boolean v9, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mDirty:Z
invoke-direct {p0, v8}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V
sget-object v10, Lcom/pinguo/camera360/gallery/data/DataManager;->LOCK:Ljava/lang/Object;
monitor-enter v10
:try_start_3d
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v3
iget-object v11, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$19(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/data/MediaSet;->reload()J
move-result-wide v6
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v11
sub-long v0, v11, v3
const-wide/16 v11, 0x14
cmp-long v11, v0, v11
if-lez v11, :cond_6d
const-string/jumbo v11, "DebugLoadingTime"
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "finish reload - "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_6d
monitor-exit v10
:try_end_6e
.catchall {:try_start_3d .. :try_end_6e} :catchall_be
iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
new-instance v11, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;
iget-object v12, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
invoke-direct {v11, v12, v6, v7}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$GetUpdateInfo;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;J)V
#calls: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
invoke-static {v10, v11}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$20(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;
if-nez v2, :cond_c1
move v5, v8
:goto_80
if-nez v5, :cond_9
sget-object v10, Lcom/pinguo/camera360/gallery/data/DataManager;->LOCK:Ljava/lang/Object;
monitor-enter v10
:try_start_85
iget-wide v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->version:J
cmp-long v11, v11, v6
if-eqz v11, :cond_a2
iput-wide v6, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->version:J
iget-object v11, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$19(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getSubMediaSetCount()I
move-result v11
iput v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->size:I
iget v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I
iget v12, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->size:I
if-lt v11, v12, :cond_a2
const/4 v11, -0x1
iput v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I
:cond_a2
iget v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I
if-eq v11, v14, :cond_e7
iget-object v11, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$19(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v11
iget v12, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->index:I
invoke-virtual {v11, v12}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v11
iput-object v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->item:Lcom/pinguo/camera360/gallery/data/MediaSet;
iget-object v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->item:Lcom/pinguo/camera360/gallery/data/MediaSet;
if-nez v11, :cond_c3
monitor-exit v10
goto/16 :goto_9
:catchall_bb
move-exception v8
monitor-exit v10
:try_end_bd
.catchall {:try_start_85 .. :try_end_bd} :catchall_bb
throw v8
:catchall_be
move-exception v8
:try_start_bf
monitor-exit v10
:try_end_c0
.catchall {:try_start_bf .. :try_end_c0} :catchall_be
throw v8
:cond_c1
move v5, v9
goto :goto_80
:try_start_c3
:cond_c3
iget-object v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->item:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getCoverMediaItem()Lcom/pinguo/camera360/gallery/data/MediaItem;
move-result-object v11
iput-object v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/pinguo/camera360/gallery/data/MediaItem;
iget-object v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->item:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemCount()I
move-result v11
iput v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->totalCount:I
iget-object v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->item:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
move-result v11
iput v11, v2, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;->bucketId:I
:cond_e7
monitor-exit v10
:try_end_e8
.catchall {:try_start_c3 .. :try_end_e8} :catchall_bb
iget-object v10, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
new-instance v11, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;
iget-object v12, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
invoke-direct {v11, v12, v2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateContent;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$UpdateInfo;)V
#calls: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
invoke-static {v10, v11}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$20(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
goto/16 :goto_9
.end method
.method public declared-synchronized terminate()V
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->mActive:Z
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