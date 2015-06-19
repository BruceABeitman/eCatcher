.class  Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"
.field private volatile mActive:Z
.field private volatile mDirty:Z
.field private mIsLoading:Z
.field final synthetic this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
.method private constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
.registers 3
const/4 v0, 0x1
iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mActive:Z
iput-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mDirty:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mIsLoading:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
return-void
.end method
.method private findCurrentMediaItem(Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;)Lcom/pinguo/album/data/MediaItem;
.registers 6
iget-object v1, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;
iget v2, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->indexHint:I
iget v3, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->contentStart:I
sub-int v0, v2, v3
if-ltz v0, :cond_10
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
if-lt v0, v2, :cond_12
:cond_10
const/4 v2, 0x0
:goto_11
return-object v2
:cond_12
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/data/MediaItem;
goto :goto_11
.end method
.method private findIndexOfPathInCache(Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;Lcom/pinguo/album/data/MediaPath;)I
.registers 8
iget-object v2, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;
const/4 v0, 0x0
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
:goto_7
if-lt v0, v3, :cond_b
const/4 v4, -0x1
:goto_a
return v4
:cond_b
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/MediaItem;
if-eqz v1, :cond_1d
invoke-virtual {v1}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v4
if-ne v4, p2, :cond_1d
iget v4, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->contentStart:I
add-int/2addr v4, v0
goto :goto_a
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method private findIndexOfTarget(Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;)I
.registers 7
iget-object v2, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->target:Lcom/pinguo/album/data/MediaPath;
if-nez v2, :cond_7
iget v0, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->indexHint:I
:goto_6
:cond_6
return v0
:cond_7
iget-object v1, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;
if-eqz v1, :cond_14
iget-object v2, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->target:Lcom/pinguo/album/data/MediaPath;
invoke-direct {p0, p1, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;Lcom/pinguo/album/data/MediaPath;)I
move-result v0
const/4 v2, -0x1
if-ne v0, v2, :cond_6
:cond_14
iget-object v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSource:Lcom/pinguo/album/data/MediaSet;
invoke-static {v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$27(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaSet;
move-result-object v2
iget-object v3, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->target:Lcom/pinguo/album/data/MediaPath;
iget v4, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->indexHint:I
invoke-virtual {v2, v3, v4}, Lcom/pinguo/album/data/MediaSet;->getIndexOfItem(Lcom/pinguo/album/data/MediaPath;I)I
move-result v0
goto :goto_6
.end method
.method private updateLoading(Z)V
.registers 4
iget-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mIsLoading:Z
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mIsLoading:Z
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$2(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Landroid/os/Handler;
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
iput-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mDirty:Z
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
.registers 14
const/4 v12, 0x0
const/4 v11, 0x0
const/4 v10, -0x1
const/4 v9, 0x1
:goto_4
:cond_4
iget-boolean v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mActive:Z
if-nez v6, :cond_9
return-void
:cond_9
monitor-enter p0
:try_start_a
iget-boolean v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mDirty:Z
if-nez v6, :cond_1e
iget-boolean v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mActive:Z
if-eqz v6, :cond_1e
const/4 v6, 0x0
invoke-direct {p0, v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V
invoke-static {p0}, Lcom/pinguo/album/utils/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
monitor-exit p0
goto :goto_4
:catchall_1b
move-exception v6
monitor-exit p0
:try_end_1d
.catchall {:try_start_a .. :try_end_1d} :catchall_1b
throw v6
:try_start_1e
:cond_1e
monitor-exit p0
:try_end_1f
.catchall {:try_start_1e .. :try_end_1f} :catchall_1b
iput-boolean v11, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mDirty:Z
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
new-instance v7, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;
iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
invoke-direct {v7, v8, v12}, Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/adapters/PhotoDataAdapter$GetUpdateInfo;)V
#calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
invoke-static {v6, v7}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$26(Lcom/pinguo/album/adapters/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;
invoke-direct {p0, v9}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSource:Lcom/pinguo/album/data/MediaSet;
invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$27(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaSet;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/album/data/MediaSet;->reload()J
move-result-wide v4
iget-wide v6, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->version:J
cmp-long v6, v6, v4
if-eqz v6, :cond_51
iput-boolean v9, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->reloadContent:Z
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSource:Lcom/pinguo/album/data/MediaSet;
invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$27(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaSet;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/album/data/MediaSet;->getMediaItemCount()I
move-result v6
iput v6, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->size:I
:cond_51
iget-boolean v6, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->reloadContent:Z
if-eqz v6, :cond_4
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSource:Lcom/pinguo/album/data/MediaSet;
invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$27(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaSet;
move-result-object v6
iget v7, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->contentStart:I
iget v8, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->contentEnd:I
invoke-virtual {v6, v7, v8}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;
move-result-object v6
iput-object v6, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;
const/4 v1, -0x1
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintPath:Lcom/pinguo/album/data/MediaPath;
invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$28(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaPath;
move-result-object v6
if-eqz v6, :cond_7d
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintPath:Lcom/pinguo/album/data/MediaPath;
invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$28(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaPath;
move-result-object v6
invoke-direct {p0, v2, v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;Lcom/pinguo/album/data/MediaPath;)I
move-result v1
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#setter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintPath:Lcom/pinguo/album/data/MediaPath;
invoke-static {v6, v12}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$29(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaPath;)V
:cond_7d
if-ne v1, v10, :cond_8f
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem(Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;)Lcom/pinguo/album/data/MediaItem;
move-result-object v3
if-eqz v3, :cond_c6
invoke-virtual {v3}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v6
iget-object v7, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->target:Lcom/pinguo/album/data/MediaPath;
if-ne v6, v7, :cond_c6
iget v1, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->indexHint:I
:goto_8f
:cond_8f
if-ne v1, v10, :cond_aa
iget v1, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->indexHint:I
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintDirection:I
invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$30(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
move-result v0
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
#getter for: Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCameraIndex:I
invoke-static {v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$31(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
move-result v6
add-int/lit8 v6, v6, 0x1
if-ne v1, v6, :cond_a4
const/4 v0, 0x0
:cond_a4
if-ne v0, v9, :cond_aa
if-lez v1, :cond_aa
add-int/lit8 v1, v1, -0x1
:cond_aa
iget v6, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->size:I
if-lez v6, :cond_b6
iget v6, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->size:I
if-lt v1, v6, :cond_b6
iget v6, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->size:I
add-int/lit8 v1, v6, -0x1
:cond_b6
iput v1, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;->indexHint:I
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
new-instance v7, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;
iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/album/adapters/PhotoDataAdapter;
invoke-direct {v7, v8, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateContent;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;)V
#calls: Lcom/pinguo/album/adapters/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
invoke-static {v6, v7}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->access$26(Lcom/pinguo/album/adapters/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
goto/16 :goto_4
:cond_c6
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->findIndexOfTarget(Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;)I
move-result v1
goto :goto_8f
.end method
.method public declared-synchronized terminate()V
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->mActive:Z
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