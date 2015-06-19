.class  Lcom/glympse/android/lib/dy;
.super Ljava/lang/Object;
.source "HttpJob.java"
.implements Ljava/lang/Runnable;
.field private ny:Lcom/glympse/android/lib/HttpJob;
.field private nz:Z
.method public constructor <init>(Lcom/glympse/android/lib/HttpJob;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/dy;->ny:Lcom/glympse/android/lib/HttpJob;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/dy;->nz:Z
return-void
.end method
.method public abort()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/dy;->nz:Z
return-void
.end method
.method public run()V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/dy;->nz:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x3
const-string v1, "HttpJob.TimeoutTimer.run"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/dy;->ny:Lcom/glympse/android/lib/HttpJob;
invoke-virtual {v0}, Lcom/glympse/android/lib/HttpJob;->cancel()V
goto :goto_4
.end method