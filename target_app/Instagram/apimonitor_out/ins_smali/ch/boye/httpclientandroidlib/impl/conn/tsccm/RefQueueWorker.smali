.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;
.super Ljava/lang/Object;
.source "RefQueueWorker.java"
.implements Ljava/lang/Runnable;
.field protected final refHandler:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;
.field protected final refQueue:Ljava/lang/ref/ReferenceQueue;
.field protected volatile workerThread:Ljava/lang/Thread;
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Queue must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
if-nez p2, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Handler must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->refHandler:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;
if-nez v0, :cond_a
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;
:cond_a
:goto_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
if-ne v0, v1, :cond_20
:try_start_12
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;
invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->refHandler:Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;->handleReference(Ljava/lang/ref/Reference;)V
:try_end_1d
.catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1d} :catch_1e
goto :goto_a
:catch_1e
move-exception v0
goto :goto_a
:cond_20
return-void
.end method
.method public shutdown()V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;
if-eqz v0, :cond_a
const/4 v1, 0x0
iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:cond_a
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "RefQueueWorker::"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueWorker;->workerThread:Ljava/lang/Thread;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method