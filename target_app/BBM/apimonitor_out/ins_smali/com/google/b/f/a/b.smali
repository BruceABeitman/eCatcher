.class final Lcom/google/b/f/a/b;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "AbstractFuture.java"
.field private a:Ljava/lang/Object;
.field private b:Ljava/lang/Throwable;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V
return-void
.end method
.method final a()Ljava/lang/Object;
.registers 5
invoke-virtual {p0}, Lcom/google/b/f/a/b;->getState()I
move-result v0
sparse-switch v0, :sswitch_data_34
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Error, synchronizer in invalid state: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:sswitch_1c
iget-object v0, p0, Lcom/google/b/f/a/b;->b:Ljava/lang/Throwable;
if-eqz v0, :cond_28
new-instance v0, Ljava/util/concurrent/ExecutionException;
iget-object v1, p0, Lcom/google/b/f/a/b;->b:Ljava/lang/Throwable;
invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
throw v0
:cond_28
iget-object v0, p0, Lcom/google/b/f/a/b;->a:Ljava/lang/Object;
return-object v0
:sswitch_2b
const-string v0, "Task was cancelled."
iget-object v1, p0, Lcom/google/b/f/a/b;->b:Ljava/lang/Throwable;
invoke-static {v0, v1}, Lcom/google/b/f/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
move-result-object v0
throw v0
:sswitch_data_34
.sparse-switch
0x2 -> :sswitch_1c
0x4 -> :sswitch_2b
0x8 -> :sswitch_2b
.end sparse-switch
.end method
.method final a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
.registers 7
const/4 v2, 0x1
const/4 v0, 0x0
invoke-virtual {p0, v0, v2}, Lcom/google/b/f/a/b;->compareAndSetState(II)Z
move-result v0
if-eqz v0, :cond_1b
iput-object p1, p0, Lcom/google/b/f/a/b;->a:Ljava/lang/Object;
and-int/lit8 v1, p3, 0xc
if-eqz v1, :cond_15
new-instance p2, Ljava/util/concurrent/CancellationException;
const-string v1, "Future.cancel() was called."
invoke-direct {p2, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V
:cond_15
iput-object p2, p0, Lcom/google/b/f/a/b;->b:Ljava/lang/Throwable;
invoke-virtual {p0, p3}, Lcom/google/b/f/a/b;->releaseShared(I)Z
:goto_1a
:cond_1a
return v0
:cond_1b
invoke-virtual {p0}, Lcom/google/b/f/a/b;->getState()I
move-result v1
if-ne v1, v2, :cond_1a
const/4 v1, -0x1
invoke-virtual {p0, v1}, Lcom/google/b/f/a/b;->acquireShared(I)V
goto :goto_1a
.end method
.method final b()Z
.registers 2
invoke-virtual {p0}, Lcom/google/b/f/a/b;->getState()I
move-result v0
and-int/lit8 v0, v0, 0xe
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method final c()Z
.registers 2
invoke-virtual {p0}, Lcom/google/b/f/a/b;->getState()I
move-result v0
and-int/lit8 v0, v0, 0xc
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method protected final tryAcquireShared(I)I
.registers 3
invoke-virtual {p0}, Lcom/google/b/f/a/b;->b()Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, -0x1
goto :goto_7
.end method
.method protected final tryReleaseShared(I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/google/b/f/a/b;->setState(I)V
const/4 v0, 0x1
return v0
.end method