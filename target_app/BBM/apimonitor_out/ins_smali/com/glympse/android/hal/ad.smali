.class  Lcom/glympse/android/hal/ad;
.super Ljava/lang/Object;
.source "GlympseHandler.java"
.implements Lcom/glympse/android/core/GHandler;
.field private aV:Landroid/os/Handler;
.field private bk:Ljava/lang/Thread;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/ad;->aV:Landroid/os/Handler;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/ad;->bk:Ljava/lang/Thread;
return-void
.end method
.method public constructor <init>(Landroid/os/Handler;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/ad;->aV:Landroid/os/Handler;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/ad;->bk:Ljava/lang/Thread;
return-void
.end method
.method public cancel(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/ad;->aV:Landroid/os/Handler;
invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public isMainThread()Z
.registers 3
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/hal/ad;->bk:Ljava/lang/Thread;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public post(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/ad;->aV:Landroid/os/Handler;
invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public postDelayed(Ljava/lang/Runnable;J)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/hal/ad;->aV:Landroid/os/Handler;
invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method