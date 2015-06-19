.class  Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"
.field private volatile mActive:Z
.field private volatile mDirty:Z
.field private mIsLoading:Z
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.method private constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
.registers 3
const/4 v0, 0x1
iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mActive:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mDirty:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mIsLoading:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
return-void
.end method
.method private updateLoading(Z)V
.registers 4
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mIsLoading:Z
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mIsLoading:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$2(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Landroid/os/Handler;
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
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mDirty:Z
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
const/4 v9, 0x0
const/4 v8, 0x1
:goto_2
iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mActive:Z
if-nez v4, :cond_7
return-void
:cond_7
monitor-enter p0
:try_start_8
iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mDirty:Z
if-nez v4, :cond_1c
iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mActive:Z
if-eqz v4, :cond_1c
const/4 v4, 0x0
invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V
invoke-static {p0}, Lcom/pinguo/camera360/gallery/util/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
monitor-exit p0
goto :goto_2
:catchall_19
move-exception v4
monitor-exit p0
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_19
throw v4
:try_start_1c
:cond_1c
monitor-exit p0
:try_end_1d
.catchall {:try_start_1c .. :try_end_1d} :catchall_19
iput-boolean v9, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mDirty:Z
iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
new-instance v5, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;
iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
const/4 v7, 0x0
invoke-direct {v5, v6, v7}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;)V
#calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
invoke-static {v4, v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$23(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;
sget-object v5, Lcom/pinguo/camera360/gallery/data/DataManager;->LOCK:Ljava/lang/Object;
monitor-enter v5
const/4 v4, 0x1
:try_start_33
invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-static {v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$24(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/MediaSet;->reload()J
move-result-wide v2
iget-wide v6, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->version:J
cmp-long v4, v6, v2
if-eqz v4, :cond_55
const/4 v4, 0x1
iput-boolean v4, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->reloadContent:Z
iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-static {v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$24(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemCount()I
move-result v4
iput v4, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->size:I
:cond_55
iget-boolean v4, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->reloadContent:Z
if-nez v4, :cond_5e
monitor-exit v5
goto :goto_2
:catchall_5b
move-exception v4
monitor-exit v5
:try_end_5d
.catchall {:try_start_33 .. :try_end_5d} :catchall_5b
throw v4
:cond_5e
:try_start_5e
iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-static {v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$24(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v4
iget v6, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->contentStart:I
iget v7, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->contentEnd:I
invoke-virtual {v4, v6, v7}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;
move-result-object v4
iput-object v4, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;
const/4 v0, -0x1
const/4 v4, -0x1
if-ne v0, v4, :cond_80
iget v0, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->indexHint:I
iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mFocusHintDirection:I
invoke-static {v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$25(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I
move-result v4
if-ne v4, v8, :cond_80
if-lez v0, :cond_80
add-int/lit8 v0, v0, -0x1
:cond_80
iget v4, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->size:I
if-lez v4, :cond_8e
iget v4, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->size:I
if-lt v0, v4, :cond_8c
iget v4, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->size:I
add-int/lit8 v0, v4, -0x1
:cond_8c
iput v0, v1, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->indexHint:I
:cond_8e
monitor-exit v5
:try_end_8f
.catchall {:try_start_5e .. :try_end_8f} :catchall_5b
iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
new-instance v5, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;
iget-object v6, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
invoke-direct {v5, v6, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateContent;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;)V
#calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
invoke-static {v4, v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$23(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
goto/16 :goto_2
.end method
.method public declared-synchronized terminate()V
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ReloadTask;->mActive:Z
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