.class  Lcom/glympse/android/hal/v;
.super Ljava/lang/Thread;
.source "DebugBase.java"
.field private aQ:J
.field private aR:Ljava/lang/Runnable;
.method private constructor <init>(JLjava/lang/Runnable;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-wide p1, p0, Lcom/glympse/android/hal/v;->aQ:J
iput-object p3, p0, Lcom/glympse/android/hal/v;->aR:Ljava/lang/Runnable;
return-void
.end method
.method synthetic constructor <init>(JLjava/lang/Runnable;Lcom/glympse/android/hal/DebugBase$1;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/glympse/android/hal/v;-><init>(JLjava/lang/Runnable;)V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-wide v0, p0, Lcom/glympse/android/hal/v;->aQ:J
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
iget-object v0, p0, Lcom/glympse/android/hal/v;->aR:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:goto_12
:try_end_12
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
goto :goto_12
.end method