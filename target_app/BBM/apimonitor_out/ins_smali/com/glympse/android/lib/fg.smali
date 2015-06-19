.class  Lcom/glympse/android/lib/fg;
.super Ljava/lang/Object;
.source "JobThread.java"
.implements Ljava/lang/Runnable;
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private _jobQueue:Lcom/glympse/android/lib/GJobQueue;
.method public constructor <init>(Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/core/GHandler;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/fg;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iput-object p2, p0, Lcom/glympse/android/lib/fg;->_handler:Lcom/glympse/android/core/GHandler;
return-void
.end method
.method public run()V
.registers 5
const/4 v3, 0x1
:goto_1
:try_start_1
:cond_1
iget-object v0, p0, Lcom/glympse/android/lib/fg;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-interface {v0}, Lcom/glympse/android/lib/GJobQueue;->isExiting()Z
move-result v0
if-nez v0, :cond_44
iget-object v0, p0, Lcom/glympse/android/lib/fg;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-interface {v0}, Lcom/glympse/android/lib/GJobQueue;->pop()Lcom/glympse/android/lib/GJob;
move-result-object v1
iget-object v0, p0, Lcom/glympse/android/lib/fg;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-interface {v0}, Lcom/glympse/android/lib/GJobQueue;->isExiting()Z
:try_end_14
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_40
move-result v0
if-nez v0, :cond_44
if-eqz v1, :cond_1
:try_start_19
invoke-interface {v1}, Lcom/glympse/android/lib/GJob;->isAborted()Z
move-result v0
if-nez v0, :cond_22
invoke-interface {v1}, Lcom/glympse/android/lib/GJob;->onProcess()V
:goto_22
:cond_22
:try_start_22
:try_end_22
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_48
iget-object v0, p0, Lcom/glympse/android/lib/fg;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->removeJob(Lcom/glympse/android/lib/GJob;)Z
iget-object v0, p0, Lcom/glympse/android/lib/fg;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-interface {v0}, Lcom/glympse/android/lib/GJobQueue;->isExiting()Z
move-result v0
if-nez v0, :cond_44
new-instance v0, Lcom/glympse/android/lib/fh;
invoke-direct {v0, p0, v1}, Lcom/glympse/android/lib/fh;-><init>(Lcom/glympse/android/lib/fg;Lcom/glympse/android/lib/GJob;)V
invoke-interface {v1}, Lcom/glympse/android/lib/GJob;->useHandler()Z
move-result v1
if-eqz v1, :cond_4e
iget-object v1, p0, Lcom/glympse/android/lib/fg;->_handler:Lcom/glympse/android/core/GHandler;
invoke-interface {v1, v0}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
:try_end_3f
.catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3f} :catch_40
goto :goto_1
:catch_40
move-exception v0
invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_44
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/fg;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
return-void
:catch_48
move-exception v0
const/4 v2, 0x1
:try_start_4a
invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_22
:cond_4e
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_51
.catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_40
goto :goto_1
.end method