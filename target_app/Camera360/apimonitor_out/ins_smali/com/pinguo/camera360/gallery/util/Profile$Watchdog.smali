.class  Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
.super Ljava/lang/Object;
.source "Profile.java"
.field private mHandler:Landroid/os/Handler;
.field private mHandlerThread:Landroid/os/HandlerThread;
.field private mList:Ljava/util/ArrayList;
.field private mProcessRunnable:Ljava/lang/Runnable;
.field private mProfileData:Lcom/pinguo/camera360/gallery/util/ProfileData;
.field private mRandom:Ljava/util/Random;
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;
new-instance v0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog$1;-><init>(Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mRandom:Ljava/util/Random;
new-instance v0, Lcom/pinguo/camera360/gallery/util/ProfileData;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/util/ProfileData;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mProfileData:Lcom/pinguo/camera360/gallery/util/ProfileData;
new-instance v0, Landroid/os/HandlerThread;
const-string/jumbo v1, "Watchdog Handler"
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v0, Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;
invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->processList()V
return-void
.end method
.method private findEntry(Ljava/lang/Thread;)Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;
.registers 5
const/4 v1, 0x0
:goto_1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-lt v1, v2, :cond_b
const/4 v0, 0x0
:cond_a
return-object v0
:cond_b
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;
iget-object v2, v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;
if-eq v2, p1, :cond_a
add-int/lit8 v1, v1, 0x1
goto :goto_1
.end method
.method private processList()V
.registers 11
iget-object v6, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;
iget-object v7, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;
invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v6, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
if-nez v6, :cond_10
:goto_f
return-void
:cond_10
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v6
const-wide/32 v8, 0xf4240
div-long/2addr v6, v8
long-to-int v0, v6
const/4 v4, 0x0
iget-object v6, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_20
:cond_20
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_31
sub-int v6, v4, v0
int-to-long v1, v6
iget-object v6, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;
iget-object v7, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;
invoke-virtual {v6, v7, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_f
:cond_31
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;
iget v7, v3, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->wakeTime:I
if-le v0, v7, :cond_47
iget v7, v3, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->wakeTime:I
iget v8, v3, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->cycleTime:I
add-int/2addr v7, v8
iput v7, v3, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->wakeTime:I
iget-object v5, v3, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;
invoke-direct {p0, v3}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->sampleStack(Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;)V
:cond_47
iget v7, v3, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->wakeTime:I
if-le v7, v4, :cond_20
iget v4, v3, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->wakeTime:I
goto :goto_20
.end method
.method private sampleStack(Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;)V
.registers 7
iget-object v3, p1, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;
invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v2
array-length v4, v2
new-array v1, v4, [Ljava/lang/String;
const/4 v0, 0x0
:goto_a
array-length v4, v2
if-lt v0, v4, :cond_17
iget-boolean v4, p1, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->isHolding:Z
if-eqz v4, :cond_22
iget-object v4, p1, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_16
return-void
:cond_17
aget-object v4, v2, v0
invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;
move-result-object v4
aput-object v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_22
iget-object v4, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mProfileData:Lcom/pinguo/camera360/gallery/util/ProfileData;
invoke-virtual {v4, v1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->addSample([Ljava/lang/String;)V
goto :goto_16
.end method
.method public declared-synchronized addWatchEntry(Ljava/lang/Thread;I)V
.registers 9
monitor-enter p0
:try_start_1
new-instance v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;
const/4 v2, 0x0
invoke-direct {v0, v2}, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;-><init>(Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;)V
iput-object p1, v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;
iput p2, v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->cycleTime:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mRandom:Ljava/util/Random;
invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I
move-result v2
add-int/lit8 v1, v2, 0x1
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v2
const-wide/32 v4, 0xf4240
div-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v2, v1
iput v2, v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->wakeTime:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->processList()V
:try_end_27
.catchall {:try_start_1 .. :try_end_27} :catchall_29
monitor-exit p0
return-void
:catchall_29
move-exception v2
monitor-exit p0
throw v2
.end method
.method public declared-synchronized commit(Ljava/lang/Thread;)V
.registers 7
monitor-enter p0
:try_start_1
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_1b
move-result-object v0
if-nez v0, :cond_9
:goto_7
monitor-exit p0
return-void
:try_start_9
:cond_9
iget-object v2, v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;
const/4 v1, 0x0
:goto_c
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
if-lt v1, v3, :cond_1e
const/4 v3, 0x0
iput-boolean v3, v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->isHolding:Z
iget-object v3, v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
:try_end_1a
.catchall {:try_start_9 .. :try_end_1a} :catchall_1b
goto :goto_7
:catchall_1b
move-exception v3
monitor-exit p0
throw v3
:try_start_1e
:cond_1e
iget-object v4, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mProfileData:Lcom/pinguo/camera360/gallery/util/ProfileData;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, [Ljava/lang/String;
invoke-virtual {v4, v3}, Lcom/pinguo/camera360/gallery/util/ProfileData;->addSample([Ljava/lang/String;)V
:try_end_29
.catchall {:try_start_1e .. :try_end_29} :catchall_1b
add-int/lit8 v1, v1, 0x1
goto :goto_c
.end method
.method public declared-synchronized drop(Ljava/lang/Thread;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_12
move-result-object v0
if-nez v0, :cond_9
:goto_7
monitor-exit p0
return-void
:cond_9
const/4 v1, 0x0
:try_start_a
iput-boolean v1, v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->isHolding:Z
iget-object v1, v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
:try_end_11
.catchall {:try_start_a .. :try_end_11} :catchall_12
goto :goto_7
:catchall_12
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized dumpToFile(Ljava/lang/String;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mProfileData:Lcom/pinguo/camera360/gallery/util/ProfileData;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/util/ProfileData;->dumpToFile(Ljava/lang/String;)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized hold(Ljava/lang/Thread;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_d
move-result-object v0
if-nez v0, :cond_9
:goto_7
monitor-exit p0
return-void
:cond_9
const/4 v1, 0x1
:try_start_a
iput-boolean v1, v0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->isHolding:Z
:try_end_c
.catchall {:try_start_a .. :try_end_c} :catchall_d
goto :goto_7
:catchall_d
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized removeAllWatchEntries()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->processList()V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized removeWatchEntry(Ljava/lang/Thread;)V
.registers 4
monitor-enter p0
const/4 v0, 0x0
:goto_2
:try_start_2
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lt v0, v1, :cond_f
:goto_a
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->processList()V
:try_end_d
.catchall {:try_start_2 .. :try_end_d} :catchall_21
monitor-exit p0
return-void
:cond_f
:try_start_f
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;
iget-object v1, v1, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;
if-ne v1, p1, :cond_24
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
:try_end_20
.catchall {:try_start_f .. :try_end_20} :catchall_21
goto :goto_a
:catchall_21
move-exception v1
monitor-exit p0
throw v1
:cond_24
add-int/lit8 v0, v0, 0x1
goto :goto_2
.end method
.method public declared-synchronized reset()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->mProfileData:Lcom/pinguo/camera360/gallery/util/ProfileData;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/ProfileData;->reset()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method