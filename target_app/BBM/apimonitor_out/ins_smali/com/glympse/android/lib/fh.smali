.class  Lcom/glympse/android/lib/fh;
.super Ljava/lang/Object;
.source "JobThread.java"
.implements Ljava/lang/Runnable;
.field private pw:Lcom/glympse/android/lib/GJob;
.field final synthetic py:Lcom/glympse/android/lib/fg;
.method public constructor <init>(Lcom/glympse/android/lib/fg;Lcom/glympse/android/lib/GJob;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/lib/fh;->py:Lcom/glympse/android/lib/fg;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/glympse/android/lib/fh;->pw:Lcom/glympse/android/lib/GJob;
return-void
.end method
.method public run()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/fh;->pw:Lcom/glympse/android/lib/GJob;
invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->isAborted()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/fh;->pw:Lcom/glympse/android/lib/GJob;
invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->onAbort()V
:goto_e
iget-object v0, p0, Lcom/glympse/android/lib/fh;->pw:Lcom/glympse/android/lib/GJob;
invoke-interface {v0, v1, v1}, Lcom/glympse/android/lib/GJob;->onSchedule(Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/core/GHandler;)V
return-void
:cond_14
iget-object v0, p0, Lcom/glympse/android/lib/fh;->pw:Lcom/glympse/android/lib/GJob;
invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->onComplete()V
goto :goto_e
.end method