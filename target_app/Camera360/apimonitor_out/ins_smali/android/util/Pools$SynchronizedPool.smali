.class public Landroid/util/Pools$SynchronizedPool;
.super Landroid/util/Pools$SimplePool;
.source "Pools.java"
.field private final mLock:Ljava/lang/Object;
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;-><init>(I)V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;
return-void
.end method
.method public acquire()Ljava/lang/Object;
.registers 3
iget-object v1, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-super {p0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;
move-result-object v0
monitor-exit v1
return-object v0
:catchall_9
move-exception v0
monitor-exit v1
:try_end_b
.catchall {:try_start_3 .. :try_end_b} :catchall_9
throw v0
.end method
.method public release(Ljava/lang/Object;)Z
.registers 4
iget-object v1, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-super {p0, p1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z
move-result v0
monitor-exit v1
return v0
:catchall_9
move-exception v0
monitor-exit v1
:try_end_b
.catchall {:try_start_3 .. :try_end_b} :catchall_9
throw v0
.end method