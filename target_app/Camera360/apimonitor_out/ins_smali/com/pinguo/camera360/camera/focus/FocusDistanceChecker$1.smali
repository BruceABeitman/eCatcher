.class  Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$1;
.super Landroid/os/Handler;
.source "FocusDistanceChecker.java"
.field final synthetic this$0:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
.method constructor <init>(Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
#getter for: Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
invoke-static {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->access$0(Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;)Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
move-result-object v0
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
#getter for: Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
invoke-static {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->access$0(Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;)Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;->preCheck()Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
const/4 v1, 0x0
iput-object v1, v0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mStabilizeSensorValue:[F
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mIsBeyondSensorThreshold:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->access$1(Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->updateLastSensorValues()V
const-string/jumbo v0, "DistanceChecker"
const-string/jumbo v1, "start onDistanceChanged"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
#getter for: Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->mListener:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
invoke-static {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->access$0(Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;)Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;->onDistanceChanged()V
:cond_39
return-void
.end method