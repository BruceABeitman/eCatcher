.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
.super Ljava/lang/Object;
.source "WaitingThread.java"
.field private aborted:Z
.field private final cond:Ljava/util/concurrent/locks/Condition;
.field private final pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
.field private waiter:Ljava/lang/Thread;
.method public constructor <init>(Ljava/util/concurrent/locks/Condition;Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Condition must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
return-void
.end method
.method public await(Ljava/util/Date;)Z
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;
if-eqz v0, :cond_2a
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "A thread is already waiting on this object.\ncaller: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\nwaiter: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2a
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->aborted:Z
if-eqz v0, :cond_36
new-instance v0, Ljava/lang/InterruptedException;
const-string v1, "Operation interrupted"
invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V
throw v0
:cond_36
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;
if-eqz p1, :cond_54
:try_start_3e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z
move-result v0
:goto_44
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->aborted:Z
if-eqz v1, :cond_5b
new-instance v0, Ljava/lang/InterruptedException;
const-string v1, "Operation interrupted"
invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_50
:try_end_50
.catchall {:try_start_3e .. :try_end_50} :catchall_50
move-exception v0
iput-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;
throw v0
:try_start_54
:cond_54
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
:try_end_59
.catchall {:try_start_54 .. :try_end_59} :catchall_50
const/4 v0, 0x1
goto :goto_44
:cond_5b
iput-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;
return v0
.end method
.method public final getCondition()Ljava/util/concurrent/locks/Condition;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;
return-object v0
.end method
.method public final getPool()Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->pool:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
return-object v0
.end method
.method public final getThread()Ljava/lang/Thread;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;
return-object v0
.end method
.method public interrupt()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->aborted:Z
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
return-void
.end method
.method public wakeup()V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Nobody waiting on this object."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;
invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
return-void
.end method