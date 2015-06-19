.class  Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;
.super Lcom/pinguo/lib/util/state/State;
.source "FocusStateMachine.java"
.field private mName:Ljava/lang/String;
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
.method private constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-direct {p0}, Lcom/pinguo/lib/util/state/State;-><init>()V
const-string/jumbo v0, "STATE_FOCUSING"
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->mName:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)V
return-void
.end method
.method public enter()V
.registers 5
const-string/jumbo v0, "FocusStateMachine"
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->mName:Ljava/lang/String;
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
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mTimeoutRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$5(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getAutoFocusCallBack()Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
move-result-object v0
if-eqz v0, :cond_56
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getAutoFocusCallBack()Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->showStart()V
const-string/jumbo v0, "FocusStateMachine"
const-string/jumbo v1, "show focus view start"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_56
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
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
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->mName:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "exit"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mTimeoutRunnable:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$5(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->mName:Ljava/lang/String;
return-object v0
.end method
.method public processMessage(Landroid/os/Message;)Z
.registers 7
const/4 v4, 0x0
const-string/jumbo v1, "FocusStateMachine"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "StateFocusing.processMessage what="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p1, Landroid/os/Message;->what:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_bc
:pswitch_1e
const/4 v0, 0x0
:goto_1f
return v0
:pswitch_20
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusingSnapOnFinish:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$4(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;
move-result-object v2
#calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V
const/4 v0, 0x1
goto :goto_1f
:pswitch_2d
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isTouchSnap()Z
move-result v1
if-eqz v1, :cond_44
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusingSnapOnFinish:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$4(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;
move-result-object v2
#calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V
:cond_44
const/4 v0, 0x1
goto :goto_1f
:pswitch_46
iget v1, p1, Landroid/os/Message;->what:I
const/4 v2, 0x7
if-ne v1, v2, :cond_76
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->showFocusViewSuccess(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mSuccess:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$6(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;
move-result-object v2
#calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V
:goto_5f
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isShutterDownFocus()Z
move-result v1
if-nez v1, :cond_74
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
const/16 v2, 0xa
const-wide/16 v3, 0x3e8
invoke-virtual {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessageDelayed(IJ)V
:cond_74
const/4 v0, 0x1
goto :goto_1f
:cond_76
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->showFocusViewFail(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFail:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$7(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;
move-result-object v2
#calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V
goto :goto_5f
:pswitch_8b
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->cancelAutoFocus()V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$8(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
move-result-object v2
#calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V
const/4 v0, 0x1
goto/16 :goto_1f
:pswitch_a2
const/4 v0, 0x1
goto/16 :goto_1f
:pswitch_a5
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->cancelAutoFocus()V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$8(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
move-result-object v2
#calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V
const/4 v0, 0x1
goto/16 :goto_1f
:pswitch_data_bc
.packed-switch 0x1
:pswitch_2d
:pswitch_a2
:pswitch_a5
:pswitch_20
:pswitch_1e
:pswitch_1e
:pswitch_46
:pswitch_46
:pswitch_8b
:pswitch_1e
:pswitch_2d
.end packed-switch
.end method