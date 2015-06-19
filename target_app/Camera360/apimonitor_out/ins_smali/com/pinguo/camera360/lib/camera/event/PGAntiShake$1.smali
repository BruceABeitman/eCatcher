.class  Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;
.super Landroid/os/Handler;
.source "PGAntiShake.java"
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
.method constructor <init>(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 15
const-wide/16 v11, 0x4b
const/4 v10, 0x1
const/4 v9, 0x0
iget v5, p1, Landroid/os/Message;->what:I
if-ne v5, v10, :cond_1c
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->cancelCapture()V
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mAntiShakeStateChangeListener:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$0(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
move-result-object v5
invoke-interface {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;->antiShakeTimeout()V
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#setter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->isCaptureStarted:Z
invoke-static {v5, v9}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$1(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;Z)V
:goto_1b
return-void
:cond_1c
iget v5, p1, Landroid/os/Message;->what:I
if-nez v5, :cond_da
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const-wide/16 v5, 0x0
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mFirstTimeMill:J
invoke-static {v7}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$2(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)J
move-result-wide v7
cmp-long v5, v5, v7
if-nez v5, :cond_35
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#setter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mFirstTimeMill:J
invoke-static {v5, v1, v2}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$3(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;J)V
:cond_35
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
iget-object v6, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mFirstTimeMill:J
invoke-static {v6}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$2(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)J
move-result-wide v6
sub-long v6, v1, v6
#setter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mShakeContinueTime:J
invoke-static {v5, v6, v7}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$4(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;J)V
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mShakeContinueTime:J
invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$5(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)J
move-result-wide v5
const-wide/16 v7, 0x2710
cmp-long v5, v5, v7
if-ltz v5, :cond_52
invoke-virtual {p0, v10}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->sendEmptyMessage(I)Z
goto :goto_1b
:cond_52
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mShakeContinueTime:J
invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$5(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)J
move-result-wide v5
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastShakeContinueTime:J
invoke-static {v7}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$6(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)J
move-result-wide v7
sub-long v3, v5, v7
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
div-long v6, v3, v11
long-to-int v6, v6
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->getLevel(I)I
move-result v0
invoke-static {}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$7()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "curLevel = "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " oldLevel = "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->oldLevel:I
invoke-static {v7}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$8(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
iget-object v6, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mShakeContinueTime:J
invoke-static {v6}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$5(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)J
move-result-wide v6
#setter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mLastShakeContinueTime:J
invoke-static {v5, v6, v7}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$9(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;J)V
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->oldLevel:I
invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$8(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)I
move-result v5
if-eq v5, v0, :cond_ba
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->oldLevel:I
invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$8(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)I
move-result v5
if-le v0, v5, :cond_df
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mAntiShakeStateChangeListener:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$0(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
move-result-object v5
invoke-interface {v5, v10, v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;->isCameraShaking(ZI)V
:goto_b5
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#setter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->oldLevel:I
invoke-static {v5, v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$10(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;I)V
:cond_ba
if-nez v0, :cond_e9
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
iget-object v6, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->pauseState:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
invoke-static {v6}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$11(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;
move-result-object v6
#calls: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->setState(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;)V
invoke-static {v5, v6}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$12(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$ModeAntiShakeState;)V
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#calls: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->reset()V
invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$13(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)V
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#setter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->isCaptureStarted:Z
invoke-static {v5, v9}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$1(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;Z)V
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mAntiShakeStateChangeListener:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$0(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
move-result-object v5
invoke-interface {v5, v10}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;->isCanTakePicture(Z)V
:goto_da
:cond_da
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
goto/16 :goto_1b
:cond_df
iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->this$0:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;
#getter for: Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->mAntiShakeStateChangeListener:Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;->access$0(Lcom/pinguo/camera360/lib/camera/event/PGAntiShake;)Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;
move-result-object v5
invoke-interface {v5, v9, v0}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$AntiShakeStateChangeListener;->isCameraShaking(ZI)V
goto :goto_b5
:cond_e9
invoke-virtual {p0, v9, v11, v12}, Lcom/pinguo/camera360/lib/camera/event/PGAntiShake$1;->sendEmptyMessageDelayed(IJ)Z
goto :goto_da
.end method