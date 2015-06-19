.class  Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;
.super Lcom/pinguo/lib/util/state/State;
.source "FocusStateMachine.java"
.field private mName:Ljava/lang/String;
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
.method private constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-direct {p0}, Lcom/pinguo/lib/util/state/State;-><init>()V
const-string/jumbo v0, "STATE_FOCUSING_SNAP_ON_FINISH"
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->mName:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)V
return-void
.end method
.method public enter()V
.registers 5
const-string/jumbo v0, "FocusStateMachine"
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->mName:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "enter"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "FocusStateMachine"
const-string/jumbo v1, "Set timeout handler"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mTimeoutRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$5(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mTimeoutRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$5(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Ljava/lang/Runnable;
move-result-object v1
const-wide/16 v2, 0x1388
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public exit()V
.registers 4
const-string/jumbo v0, "FocusStateMachine"
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->mName:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "exit"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mTimeoutRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$5(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->mName:Ljava/lang/String;
return-object v0
.end method
.method public processMessage(Landroid/os/Message;)Z
.registers 10
const-wide/16 v6, 0x3e8
const/16 v5, 0xa
const/4 v4, 0x0
const-string/jumbo v1, "FocusStateMachine"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "StateFocusingSnapOnFinish.processMessage what="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p1, Landroid/os/Message;->what:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_9c
const/4 v0, 0x0
:goto_23
return v0
:pswitch_24
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->showFocusViewSuccess(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mSuccess:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$6(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;
move-result-object v2
#calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v1, v5, v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessageDelayed(IJ)V
const/4 v0, 0x1
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
const/4 v3, 0x4
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->obtainMessage(I)Landroid/os/Message;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(Landroid/os/Message;)V
goto :goto_23
:pswitch_4b
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->showFocusViewFail(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->capture()V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFail:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$7(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;
move-result-object v2
#calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v1, v5, v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessageDelayed(IJ)V
const/4 v0, 0x1
goto :goto_23
:pswitch_6f
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->cancelAutoFocus()V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->showFocusViewFail(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->capture()V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFail:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$7(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;
move-result-object v2
#calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v1, v5, v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessageDelayed(IJ)V
const/4 v0, 0x1
goto :goto_23
:pswitch_data_9c
.packed-switch 0x7
:pswitch_24
:pswitch_4b
:pswitch_6f
.end packed-switch
.end method