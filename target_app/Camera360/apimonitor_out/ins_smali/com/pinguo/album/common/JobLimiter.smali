.class public Lcom/pinguo/album/common/JobLimiter;
.super Ljava/lang/Object;
.source "JobLimiter.java"
.implements Lcom/pinguo/album/FutureListener;
.field private static final STATE_CANCELLED:I = 0x2
.field private static final STATE_DONE:I = 0x1
.field private static final STATE_INIT:I = 0x0
.field private static final TAG:Ljava/lang/String; = "JobLimiter"
.field private final mJobs:Ljava/util/LinkedList;
.field private mLimit:I
.field private final mPool:Lcom/pinguo/album/AlbumThreadPool;
.method public constructor <init>(Lcom/pinguo/album/AlbumThreadPool;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/common/JobLimiter;->mJobs:Ljava/util/LinkedList;
invoke-static {p1}, Lcom/pinguo/album/utils/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/AlbumThreadPool;
iput-object v0, p0, Lcom/pinguo/album/common/JobLimiter;->mPool:Lcom/pinguo/album/AlbumThreadPool;
iput p2, p0, Lcom/pinguo/album/common/JobLimiter;->mLimit:I
return-void
.end method
.method private submitTasksIfAllowed()V
.registers 3
:goto_0
:cond_0
iget v1, p0, Lcom/pinguo/album/common/JobLimiter;->mLimit:I
if-lez v1, :cond_c
iget-object v1, p0, Lcom/pinguo/album/common/JobLimiter;->mJobs:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
move-result v1
if-eqz v1, :cond_d
:cond_c
return-void
:cond_d
iget-object v1, p0, Lcom/pinguo/album/common/JobLimiter;->mJobs:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/common/JobLimiter$JobWrapper;
invoke-virtual {v0}, Lcom/pinguo/album/common/JobLimiter$JobWrapper;->isCancelled()Z
move-result v1
if-nez v1, :cond_0
iget v1, p0, Lcom/pinguo/album/common/JobLimiter;->mLimit:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/pinguo/album/common/JobLimiter;->mLimit:I
iget-object v1, p0, Lcom/pinguo/album/common/JobLimiter;->mPool:Lcom/pinguo/album/AlbumThreadPool;
invoke-virtual {v1, v0, p0}, Lcom/pinguo/album/AlbumThreadPool;->submit(Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/album/common/JobLimiter$JobWrapper;->setFuture(Lcom/pinguo/album/Future;)V
goto :goto_0
.end method
.method public declared-synchronized onFutureDone(Lcom/pinguo/album/Future;)V
.registers 3
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/pinguo/album/common/JobLimiter;->mLimit:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/pinguo/album/common/JobLimiter;->mLimit:I
invoke-direct {p0}, Lcom/pinguo/album/common/JobLimiter;->submitTasksIfAllowed()V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized submit(Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
.registers 5
monitor-enter p0
:try_start_1
new-instance v0, Lcom/pinguo/album/common/JobLimiter$JobWrapper;
invoke-static {p1}, Lcom/pinguo/album/utils/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/AlbumThreadPool$Job;
invoke-direct {v0, v1, p2}, Lcom/pinguo/album/common/JobLimiter$JobWrapper;-><init>(Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)V
iget-object v1, p0, Lcom/pinguo/album/common/JobLimiter;->mJobs:Ljava/util/LinkedList;
invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/pinguo/album/common/JobLimiter;->submitTasksIfAllowed()V
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_16
monitor-exit p0
return-object v0
:catchall_16
move-exception v1
monitor-exit p0
throw v1
.end method