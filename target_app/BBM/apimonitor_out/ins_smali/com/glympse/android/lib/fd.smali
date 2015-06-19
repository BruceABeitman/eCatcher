.class  Lcom/glympse/android/lib/fd;
.super Ljava/lang/Object;
.source "JobQueue.java"
.implements Ljava/lang/Runnable;
.field private _jobQueue:Lcom/glympse/android/lib/GJobQueue;
.field private pw:Lcom/glympse/android/lib/GJob;
.field final synthetic px:Lcom/glympse/android/lib/fc;
.method public constructor <init>(Lcom/glympse/android/lib/fc;Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/lib/GJob;)V
.registers 4
iput-object p1, p0, Lcom/glympse/android/lib/fd;->px:Lcom/glympse/android/lib/fc;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/glympse/android/lib/fd;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iput-object p3, p0, Lcom/glympse/android/lib/fd;->pw:Lcom/glympse/android/lib/GJob;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/fd;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iget-object v1, p0, Lcom/glympse/android/lib/fd;->pw:Lcom/glympse/android/lib/GJob;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
return-void
.end method