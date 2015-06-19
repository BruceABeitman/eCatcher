.class  Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;
.super Ljava/lang/Object;
.source "SonyCameraTimer.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
const/4 v1, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$0(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
:cond_d
return-void
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$1(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v0
if-ge v0, v1, :cond_31
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#calls: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->setTimerStopped(Z)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$2(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$3(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
move-result-object v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$3(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;->onTimerFinished()V
goto :goto_d
:cond_31
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$4()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-static {v1}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$1(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$4()Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const-string/jumbo v3, "yyyyMMdd-HH:mm:ss.SSS"
invoke-static {v1, v2, v3}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$3(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
move-result-object v0
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mCameraTimerListener:Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$3(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-static {v1}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$1(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v1
invoke-interface {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;->onTimerDecrement(I)V
:cond_73
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimeValue:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$1(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$5(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraTimer$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraTimer;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->mTimerRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/pinguo/camera360/sony/model/SonyCameraTimer;->access$6(Lcom/pinguo/camera360/sony/model/SonyCameraTimer;)Ljava/lang/Runnable;
move-result-object v1
const-wide/16 v2, 0x3e8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_d
.end method