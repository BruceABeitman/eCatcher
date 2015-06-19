.class  Lcom/pinguo/camera360/camera/model/PGCameraBase$1;
.super Ljava/lang/Object;
.source "PGCameraBase.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
.method constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
const/4 v1, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$0(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
:cond_d
return-void
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$1(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Ljava/util/concurrent/atomic/AtomicInteger;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v0
if-ge v0, v1, :cond_31
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->setTimerStopped(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$2(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
move-result-object v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$2(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;->onTimerFinished()V
goto :goto_d
:cond_31
invoke-static {}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$3()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-static {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$1(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Ljava/util/concurrent/atomic/AtomicInteger;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$3()Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const-string/jumbo v3, "yyyyMMdd-HH:mm:ss.SSS"
invoke-static {v1, v2, v3}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$2(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
move-result-object v0
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerCameraListener:Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$2(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-static {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$1(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Ljava/util/concurrent/atomic/AtomicInteger;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v1
invoke-interface {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;->onTimerDecrement(I)V
:cond_73
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$1(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Ljava/util/concurrent/atomic/AtomicInteger;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$4(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/model/PGCameraBase$1;->this$0:Lcom/pinguo/camera360/camera/model/PGCameraBase;
#getter for: Lcom/pinguo/camera360/camera/model/PGCameraBase;->mTimerRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->access$5(Lcom/pinguo/camera360/camera/model/PGCameraBase;)Ljava/lang/Runnable;
move-result-object v1
const-wide/16 v2, 0x3e8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_d
.end method