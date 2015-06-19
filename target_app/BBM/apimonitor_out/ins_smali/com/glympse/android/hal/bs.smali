.class  Lcom/glympse/android/hal/bs;
.super Ljava/lang/Object;
.source "Timer.java"
.implements Lcom/glympse/android/hal/GTimer;
.implements Ljava/lang/Runnable;
.field private C:J
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private eJ:Ljava/lang/Runnable;
.field private eK:Z
.method public constructor <init>(Ljava/lang/Runnable;JLcom/glympse/android/core/GHandler;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/bs;->eJ:Ljava/lang/Runnable;
iput-wide p2, p0, Lcom/glympse/android/hal/bs;->C:J
iput-object p4, p0, Lcom/glympse/android/hal/bs;->_handler:Lcom/glympse/android/core/GHandler;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/hal/bs;->eK:Z
return-void
.end method
.method public run()V
.registers 4
iget-boolean v0, p0, Lcom/glympse/android/hal/bs;->eK:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/hal/bs;->eJ:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
iget-boolean v0, p0, Lcom/glympse/android/hal/bs;->eK:Z
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/glympse/android/hal/bs;->_handler:Lcom/glympse/android/core/GHandler;
iget-wide v1, p0, Lcom/glympse/android/hal/bs;->C:J
invoke-interface {v0, p0, v1, v2}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
goto :goto_4
.end method
.method public start()V
.registers 4
invoke-virtual {p0}, Lcom/glympse/android/hal/bs;->stop()V
iget-object v0, p0, Lcom/glympse/android/hal/bs;->_handler:Lcom/glympse/android/core/GHandler;
iget-wide v1, p0, Lcom/glympse/android/hal/bs;->C:J
invoke-interface {v0, p0, v1, v2}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/hal/bs;->eK:Z
return-void
.end method
.method public stop()V
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/hal/bs;->eK:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/hal/bs;->_handler:Lcom/glympse/android/core/GHandler;
invoke-interface {v0, p0}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/hal/bs;->eK:Z
goto :goto_4
.end method