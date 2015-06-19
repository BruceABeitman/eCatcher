.class  Lcom/glympse/android/lib/fb;
.super Ljava/lang/Object;
.source "Job.java"
.implements Lcom/glympse/android/lib/GJob;
.field protected _aborted:Z
.field protected _handler:Lcom/glympse/android/core/GHandler;
.field protected _jobQueue:Lcom/glympse/android/lib/GJobQueue;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/fb;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/fb;->_aborted:Z
return-void
.end method
.method public abort()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/fb;->_aborted:Z
return-void
.end method
.method public isAborted()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/fb;->_aborted:Z
return v0
.end method
.method public onAbort()V
.registers 1
return-void
.end method
.method public onComplete()V
.registers 1
return-void
.end method
.method public onProcess()V
.registers 1
return-void
.end method
.method public onRetry()V
.registers 1
return-void
.end method
.method public onSchedule(Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/core/GHandler;)V
.registers 4
iput-object p1, p0, Lcom/glympse/android/lib/fb;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iput-object p2, p0, Lcom/glympse/android/lib/fb;->_handler:Lcom/glympse/android/core/GHandler;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/fb;->_aborted:Z
return-void
.end method
.method public reset()V
.registers 1
return-void
.end method
.method public useHandler()Z
.registers 2
const/4 v0, 0x0
return v0
.end method